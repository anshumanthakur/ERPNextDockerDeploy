import os

with open("env_key_value.txt", "r") as files:
    content = files.read()
content=content.replace("$$alert_threshold$$", os.environ['alert_threshold'])
with open("env_key_value.txt", "w") as files:
    files.write(content)