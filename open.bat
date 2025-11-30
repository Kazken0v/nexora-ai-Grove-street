@echo off
chcp 65001
echo Запуск CineAi Genesis...
echo.

python -m pip install streamlit requests --quiet

if exist "app.py" (
    python -m streamlit run app.py
) else if exist "main.py" (
    python -m streamlit run main.py
) else (
    echo  Не найден app.py или main.py
    echo.
    pause

)
