# React Template Monorepo

这是一个全栈的monorepo项目，包含React前端和FastAPI后端。

## 项目结构

```
react-template/
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
├── package.json          # 根目录配置
└── README.md            # 项目说明
```

## 技术栈

### 前端 (Frontend)
- **React 19** - 现代React框架
- **TypeScript** - 类型安全
- **TanStack Router** - 类型安全的路由
- **Tailwind CSS** - 实用优先的CSS框架
- **Vite** - 快速的构建工具
- **Biome** - 代码格式化和检查

### 后端 (Backend)
- **FastAPI** - 现代、快速的Python Web框架
- **Uvicorn** - ASGI服务器
- **Pydantic** - 数据验证
- **SQLAlchemy** - ORM
- **PostgreSQL** - 数据库
- **Redis** - 缓存

## 快速开始

### 前置要求

- Node.js 18+ 和 pnpm
- Python 3.9+
- pip 或 uv

### 安装依赖

```bash
# 安装所有依赖
pnpm install:all

# 或分别安装
pnpm install
cd apps/backend && pip install -r requirements.txt
```

### 运行开发服务器

#### 前端开发服务器

```bash
# 在根目录运行
pnpm dev:frontend

# 或进入前端目录
cd apps/frontend
pnpm dev
```

前端将在 http://localhost:5173 运行

#### 后端开发服务器

```bash
# 在根目录运行
pnpm dev:backend

# 或进入后端目录
cd apps/backend
python main.py
```

后端API将在 http://localhost:8000 运行

### 同时运行前后端

```bash
# 在根目录运行
pnpm dev
```

## 构建和部署

### 构建前端

```bash
pnpm build:frontend
```

### 构建后端

```bash
pnpm build:backend
```

## 开发工具

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

### 测试

```bash
# 前端测试 (待配置)
pnpm test

# 后端测试
cd apps/backend
pytest
```

## API文档

启动后端服务后，可以访问：

- **Swagger UI**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc

## 环境配置

### 前端环境变量

在 `apps/frontend/.env.local` 中配置：

```env
VITE_API_BASE_URL=http://localhost:8000
```

### 后端环境变量

在 `apps/backend/.env` 中配置：

```env
DATABASE_URL=postgresql://user:password@localhost/dbname
REDIS_URL=redis://localhost:6379
SECRET_KEY=your-secret-key
DEBUG=true
```

## 贡献指南

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。
