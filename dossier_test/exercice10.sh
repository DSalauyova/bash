#!/bin/bash
# Проверка наличия аргумента (путь к папке для наблюдения)
if [ "$#" -ne 1 ]; then
    echo "Argument: $0 path to file"
    exit 1
fi
echo "$#"
WATCHED_FOLDER=$1
LOG_FILE="folder_watch_log.txt"

# Проверка существования папки
if [ ! -d "$WATCHED_FOLDER" ]; then
    echo "Folder ixist: $WATCHED_FOLDER"
    exit 1
fi

echo "Начинаем наблюдение за папкой: $WATCHED_FOLDER"
echo "Логи будут записаны в: $LOG_FILE"

# Наблюдение и запись логов
fswatch "$WATCHED_FOLDER" | while read file; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $file - Изменение обнаружено в $WATCHED_FOLDER" >> "$LOG_FILE"
done