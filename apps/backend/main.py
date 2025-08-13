import uvicorn
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse

app = FastAPI(
    title="RFFT Backend API",
    description="Backend API for RFFT (React FastAPI Fullstack Template)",
    version="1.0.0",
    docs_url="/docs",
    redoc_url="/redoc",
)

# CORS配置
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173", "http://localhost:3000"],  # 前端开发服务器
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
async def root():
    """根路径"""
    return {"message": "Welcome to RFFT Backend API"}


@app.get("/health")
async def health_check():
    """健康检查端点"""
    return {"status": "healthy", "service": "rfft-backend"}


@app.get("/api/version")
async def get_version():
    """获取API版本信息"""
    return {"version": "1.0.0", "name": "RFFT Backend", "status": "running"}


if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=8000, reload=True, log_level="info")
