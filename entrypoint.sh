set RDLTR_SETTINGS="rdltr.config.ProductionConfig"
set RDLTR_DB_URL=db.sqlite3
set RDLTR_SECRET_KEY="abcdefghijklmnopqrstuvwxyz"
set RDLTR_LOG=rdltr.log
set RDLTR_HOST=localhost
set RDLTR_PORT=5000
set RDLTR_WORKERS=1
set RDLTR_ALLOW_REGISTRATION=true

if [ ! -f db.sqlite3]; then
    rdltr_db
fi

rdltr