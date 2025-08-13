# Backend API

这是React Template项目的后端API服务，使用FastAPI构建。

## 技术栈

- **FastAPI**: 现代、快速的Web框架
- **Uvicorn**: ASGI服务器
- **Pydantic**: 数据验证
- **SQLAlchemy**: ORM
- **Alembic**: 数据库迁移
- **PostgreSQL**: 数据库
- **Redis**: 缓存

## 快速开始

### 环境要求

- Python 3.9+
- pip 或 uv

### 安装依赖

使用pip:
```bash
pip install -r requirements.txt
```

使用uv (推荐):
```bash
uv sync
```

### 运行开发服务器

```bash
# 使用uvicorn直接运行
uvicorn main:app --reload --host 0.0.0.0 --port 8000

# 或使用项目脚本
python main.py
```

### 访问API文档

- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

## 项目结构

```
backend/
├── main.py              # 主应用文件
├── requirements.txt     # Python依赖
├── pyproject.toml      # 项目配置
├── app/                # 应用模块 (待创建)
│   ├── api/           # API路由
│   ├── core/          # 核心配置
│   ├── models/        # 数据模型
│   ├── schemas/       # Pydantic模式
│   └── services/      # 业务逻辑
├── tests/             # 测试文件 (待创建)
└── alembic/           # 数据库迁移 (待创建)
```

## API端点

- `GET /`: 欢迎信息
- `GET /health`: 健康检查
- `GET /api/version`: API版本信息

## 开发

### 代码格式化

```bash
# 使用black格式化代码
black .

# 使用isort排序导入
isort .
```

### 运行测试

```bash
pytest
```

## 部署

```bash
# 生产环境启动
uvicorn main:app --host 0.0.0.0 --port 8000
```

## 环境变量

创建`.env`文件配置环境变量：

```env
DATABASE_URL=postgresql://user:password@localhost/dbname
REDIS_URL=redis://localhost:6379
SECRET_KEY=your-secret-key
DEBUG=false
```
