
Backup:
```
sudo rsync -avH --delete /quellverzeichnis/ /zielverzeichnis/
```

Restore:
```
sudo rsync -avH --delete /zielverzeichnis/ /ursprüngliches_quellverzeichnis/
```

### Example

Backup-Beispiel:

Bash

sudo rsync -avH --delete /quellverzeichnis/ /zielverzeichnis/

Restore-Beispiel:

Ein Restore ist im Grunde ein Backup in die umgekehrte Richtung.

Bash

sudo rsync -avH --delete /zielverzeichnis/ /ursprüngliches_quellverzeichnis/
