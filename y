it]
Description=gunicorn daemon
After=network.target

[Service]
User=rhythm
Group=www-data
WorkingDirectory=/home/rhythm/seabird_website
ExecStart=/home/rhythm/venv/bin/gunicorn --access-logfile - --workers 3 --bind unix:/home/rhythm/seabird_website/seabird.sock seabird.wsgi:application

[Install]
WantedBy=multi-user.target
