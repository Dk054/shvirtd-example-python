FROM python:3.12-slim

# Установка зависимостей системы (если нужны)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential gcc libpq-dev \
 && rm -rf /var/lib/apt/lists/*

# Рабочая директория
WORKDIR /app

# Копируем файлы проекта
COPY . .

# Установка зависимостей Python
# для requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Экспорт порта (документирование)
EXPOSE 5000

# Команда запуска
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
