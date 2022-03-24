import subprocess
from fastapi import FastAPI
import glob
import os
from fastapi.responses import FileResponse

app = FastAPI()

@app.get("/")
async def root():
    process = subprocess.run(["./generate.sh"], stdout=subprocess.PIPE)
    img_path = str(process.stdout.rstrip()).split(' ')[-1][:-1] + '/*'
    folder = glob.glob(img_path)
    latest_file = max(folder, key=os.path.getctime)
    return FileResponse(latest_file)
