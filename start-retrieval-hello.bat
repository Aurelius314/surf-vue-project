@echo off
echo Starting all services for SURF Retrieval System...

echo.
echo Step 1/4: Starting Gradio Mock Server...
start cmd /k "title Gradio Mock Server && cd E:/vue mock && call activate python310 && python gradio_mock.py"
echo Waiting for Gradio Mock Server to start...
timeout /t 5 /nobreak > nul
echo Gradio Mock Server started at http://127.0.0.1:7861

echo.
echo Step 2/4: Starting FastAPI Backend...
start cmd /k "title FastAPI Backend && cd E:/surf/cnclip_api_service && call activate python310 && uvicorn main:app --reload"
echo Waiting for FastAPI Backend to start...
timeout /t 8 /nobreak > nul
echo FastAPI Backend started at http://127.0.0.1:8000

echo.
echo Step 3/4: Starting Gradio UI...
start cmd /k "title Gradio UI && cd E:/surf && call activate python310 && python demo.py"
echo Waiting for Gradio UI to start...
timeout /t 8 /nobreak > nul
echo Gradio UI started at http://127.0.0.1:7860

echo.
echo Step 4/4: Starting Vue Frontend...
start cmd /k "title Vue Frontend && cd E:/surf-mock && npm run serve"
echo Waiting for Vue Frontend to start...
timeout /t 5 /nobreak > nul

echo.
echo All services started successfully!
echo.
echo Gradio Mock: http://127.0.0.1:7861
echo FastAPI Backend: http://127.0.0.1:8000
echo Gradio UI: http://127.0.0.1:7860
echo Vue Frontend: http://localhost:8080 (default)
echo.
echo Press any key to close this window...
pause > nul
