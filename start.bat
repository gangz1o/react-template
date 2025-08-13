@echo off
chcp 65001 >nul
echo 🚀 启动 React Template Monorepo...

REM 检查是否安装了必要的工具
where pnpm >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 错误: 未找到 pnpm，请先安装 pnpm
    pause
    exit /b 1
)

where python >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 错误: 未找到 python，请先安装 Python 3.9+
    pause
    exit /b 1
)

REM 安装依赖
echo 📦 安装依赖...
pnpm install

REM 检查后端依赖
echo 🐍 检查后端依赖...
cd apps\backend
python -c "import fastapi, uvicorn" 2>nul
if %errorlevel% neq 0 (
    echo 📥 安装后端依赖...
    pip install -r requirements.txt
)
cd ..\..

REM 启动服务
echo 🔥 启动服务...

REM 启动后端（后台运行）
echo 🔧 启动后端服务 (http://localhost:8000)...
cd apps\backend
start "Backend" python main.py
cd ..\..

REM 等待后端启动
echo ⏳ 等待后端服务启动...
timeout /t 3 /nobreak >nul

REM 启动前端
echo 🎨 启动前端服务 (http://localhost:5173)...
cd apps\frontend
start "Frontend" pnpm dev
cd ..\..

echo.
echo 🎉 服务启动中！
echo.
echo 📱 前端: http://localhost:5173
echo 🔧 后端: http://localhost:8000
echo 📖 API文档: http://localhost:8000/docs
echo.
echo 服务已在后台启动，请访问上述地址
pause
