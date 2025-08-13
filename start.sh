#!/bin/bash

# React Template Monorepo 启动脚本
echo "🚀 启动 React Template Monorepo..."

# 检查是否安装了必要的工具
if ! command -v pnpm &> /dev/null; then
    echo "❌ 错误: 未找到 pnpm，请先安装 pnpm"
    exit 1
fi

if ! command -v python3 &> /dev/null; then
    echo "❌ 错误: 未找到 python3，请先安装 Python 3.9+"
    exit 1
fi

# 安装依赖
echo "📦 安装依赖..."
pnpm install

# 检查后端依赖
echo "🐍 检查后端依赖..."
cd apps/backend
if ! python3 -c "import fastapi, uvicorn" 2>/dev/null; then
    echo "📥 安装后端依赖..."
    pip install -r requirements.txt
fi
cd ../..

# 启动服务
echo "🔥 启动服务..."

# 启动后端（后台运行）
echo "🔧 启动后端服务 (http://localhost:8000)..."
cd apps/backend
python3 main.py &
BACKEND_PID=$!
cd ../..

# 等待后端启动
echo "⏳ 等待后端服务启动..."
sleep 3

# 检查后端是否启动成功
if curl -s http://localhost:8000/health > /dev/null; then
    echo "✅ 后端服务启动成功！"
    echo "   📖 API文档: http://localhost:8000/docs"
    echo "   🔍 ReDoc: http://localhost:8000/redoc"
else
    echo "❌ 后端服务启动失败"
    kill $BACKEND_PID 2>/dev/null
    exit 1
fi

# 启动前端
echo "🎨 启动前端服务 (http://localhost:5173)..."
cd apps/frontend
pnpm dev &
FRONTEND_PID=$!
cd ../..

# 等待前端启动
echo "⏳ 等待前端服务启动..."
sleep 5

# 检查前端是否启动成功
if curl -s http://localhost:5173 > /dev/null; then
    echo "✅ 前端服务启动成功！"
    echo "   🌐 前端地址: http://localhost:5173"
else
    echo "❌ 前端服务启动失败"
    kill $FRONTEND_PID 2>/dev/null
    kill $BACKEND_PID 2>/dev/null
    exit 1
fi

echo ""
echo "🎉 所有服务启动成功！"
echo ""
echo "📱 前端: http://localhost:5173"
echo "🔧 后端: http://localhost:8000"
echo "📖 API文档: http://localhost:8000/docs"
echo ""
echo "按 Ctrl+C 停止所有服务"

# 等待用户中断
trap 'echo ""; echo "🛑 正在停止服务..."; kill $FRONTEND_PID 2>/dev/null; kill $BACKEND_PID 2>/dev/null; echo "✅ 服务已停止"; exit 0' INT

# 保持脚本运行
wait
