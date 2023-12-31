from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/hello")
async def hello():
    return {"Hello"}

@app.get("goodby")
async def goodby():
    return {
        "message": "Goog bye"
    }