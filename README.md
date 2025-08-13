# RFFT - React FastAPI Fullstack Template

这是一个全栈的monorepo项目，包含React前端和FastAPI后端。RFFT代表 **R**eact **F**astAPI **F**ullstack **T**emplate。

## 🚀 项目特性

- **🎯 现代化技术栈** - 使用最新的React 19、FastAPI和TypeScript
- **🏗️ Monorepo架构** - 前后端代码统一管理，便于开发和部署
- **🔒 类型安全** - 完整的TypeScript支持，前后端类型一致
- **⚡ 高性能** - Vite构建工具，FastAPI异步框架
- **🎨 美观UI** - Tailwind CSS + shadcn/ui组件库
- **🌍 国际化** - 支持多语言切换
- **📱 响应式设计** - 支持各种设备和屏幕尺寸

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

## 🛠️ 技术栈

### 前端 (Frontend)
- **React 19** - 现代React框架，支持并发特性
- **TypeScript** - 完整的类型安全
- **TanStack Router** - 类型安全的路由解决方案
- **Tailwind CSS** - 实用优先的CSS框架
- **Vite** - 快速的构建工具
- **Biome** - 代码格式化和检查

### 后端 (Backend)
- **FastAPI** - 现代、快速的Python Web框架
- **Uvicorn** - ASGI服务器
- **Pydantic** - 数据验证和序列化
- **SQLAlchemy** - ORM框架
- **PostgreSQL** - 关系型数据库
- **Redis** - 缓存和会话存储

## 🚀 快速开始

### 前置要求

- Node.js 18+ 和 pnpm
- Python 3.9+
- pip 或 uv

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
pnpm install:all

# 或分别安装
pnpm install
cd apps/backend && pip install -r requirements.txt
```

#### 2. 启动后端

```bash
pnpm dev:backend
# 或
cd apps/backend && python3 main.py
```

后端API将在 http://localhost:8000 运行

#### 3. 启动前端

```bash
pnpm dev:frontend
# 或
cd apps/frontend && pnpm dev
```

前端将在 http://localhost:5173 运行

### 同时运行前后端

```bash
pnpm dev
```

## 📦 构建和部署

### 构建前端

```bash
pnpm build:frontend
```

### 构建后端

```bash
pnpm build:backend
```

## 🛠️ 开发工具

### 代码质量

```bash
# 前端代码检查
pnpm lint
pnpm lint:fix
pnpm format

# 后端代码格式化
cd apps/backend
black .
isort .
```

### 类型检查

```bash
# 前端TypeScript检查
pnpm build:check

# 后端类型检查（如果使用mypy）
cd apps/backend
mypy .
```

## 🌐 API文档

启动后端服务后，可以访问：

- **Swagger UI**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc

## 🔧 环境配置

### 前端环境变量

在 `apps/frontend/.env.local` 中配置：

```env
VITE_API_BASE_URL=http://localhost:8000
VITE_APP_TITLE=RFFT
```

### 后端环境变量

在 `apps/backend/.env` 中配置：

```env
DATABASE_URL=postgresql://user:password@localhost/dbname
REDIS_URL=redis://localhost:6379
SECRET_KEY=your-secret-key-change-this-in-production
DEBUG=true
ENVIRONMENT=development
```

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

## 📚 学习资源

- [React 官方文档](https://react.dev/)
- [FastAPI 官方文档](https://fastapi.tiangolo.com/)
- [TanStack Router 文档](https://tanstack.com/router)
- [Tailwind CSS 文档](https://tailwindcss.com/)

## 🤝 贡献指南

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🙏 致谢

感谢以下开源项目为RFFT提供支持：
- [React](https://react.dev/) - 用户界面库
- [FastAPI](https://fastapi.tiangolo.com/) - Web框架
- [TanStack](https://tanstack.com/) - 路由解决方案
- [Tailwind CSS](https://tailwindcss.com/) - CSS框架
