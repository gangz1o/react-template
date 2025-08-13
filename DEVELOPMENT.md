# RFFT 开发指南

## 🚀 快速开始

### 一键启动（推荐）

```bash
# macOS/Linux
./start.sh

# Windows
start.bat
```

### 手动启动

#### 1. 安装依赖

```bash
# 安装所有依赖
pnpm install

# 安装后端依赖
cd apps/backend && pip install -r requirements.txt
```

#### 2. 启动后端

```bash
cd apps/backend
python3 main.py
```

后端将在 http://localhost:8000 运行

#### 3. 启动前端

```bash
cd apps/frontend
pnpm dev
```

前端将在 http://localhost:5173 运行

## 🛠️ 开发工具

### 前端开发

```bash
# 代码检查
pnpm lint

# 自动修复
pnpm lint:fix

# 代码格式化
pnpm format

# 构建生产版本
pnpm build
```

### 后端开发

```bash
cd apps/backend

# 代码格式化
black .
isort .

# 运行测试
pytest

# 启动开发服务器
python3 main.py
```

## 📁 项目结构

```
rfft/
├── apps/
│   ├── frontend/          # React前端应用
│   │   ├── src/          # 源代码
│   │   ├── public/       # 静态资源
│   │   ├── package.json  # 前端依赖
│   │   └── vite.config.ts # Vite配置
│   └── backend/          # FastAPI后端应用
│       ├── main.py       # 主应用文件
│       ├── requirements.txt # Python依赖
│       ├── pyproject.toml  # Python项目配置
│       └── app/          # 应用模块
├── start.sh              # 启动脚本 (macOS/Linux)
├── start.bat             # 启动脚本 (Windows)
├── package.json          # 根目录配置
└── README.md            # 项目说明
```

## 🔧 配置说明

### 前端配置

前端使用 Vite 作为构建工具，主要配置文件：

- `apps/frontend/vite.config.ts` - Vite配置
- `apps/frontend/tsconfig.json` - TypeScript配置
- `apps/frontend/tailwind.config.js` - Tailwind CSS配置

### 后端配置

后端使用 FastAPI 框架，主要配置文件：

- `apps/backend/main.py` - 主应用文件
- `apps/backend/requirements.txt` - Python依赖
- `apps/backend/pyproject.toml` - Python项目配置

## 🌐 API开发

### 添加新的API端点

在 `apps/backend/main.py` 中添加新的路由：

```python
@app.get("/api/users")
async def get_users():
    return {"users": ["user1", "user2"]}

@app.post("/api/users")
async def create_user(user: dict):
    return {"message": "User created", "user": user}
```

### API文档

启动后端服务后，可以访问：

- **Swagger UI**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc

## 🧪 测试

### 前端测试

```bash
cd apps/frontend
pnpm test
```

### 后端测试

```bash
cd apps/backend
pytest
```

## 📦 部署

### 前端部署

```bash
cd apps/frontend
pnpm build
```

构建产物在 `dist/` 目录中。

### 后端部署

```bash
cd apps/backend
uvicorn main:app --host 0.0.0.0 --port 8000
```

## 🔍 调试

### 前端调试

- 使用浏览器开发者工具
- 查看控制台日志
- 使用 React DevTools

### 后端调试

- 查看终端日志输出
- 使用 FastAPI 的自动文档
- 添加日志记录

## 📚 学习资源

- [React 官方文档](https://react.dev/)
- [FastAPI 官方文档](https://fastapi.tiangolo.com/)
- [TanStack Router 文档](https://tanstack.com/router)
- [Tailwind CSS 文档](https://tailwindcss.com/)

## 🤝 贡献指南

1. Fork 项目
2. 创建功能分支
3. 提交更改
4. 推送到分支
5. 创建 Pull Request

## 📄 许可证

本项目采用 MIT 许可证。
