Installing from backup:  
``` bash
dconf load /org/gnome/shell/extensions/ < extension_settings.txt
```

Backing up settings: 
``` bash
dconf dump /org/gnome/shell/extensions/ > extension_settings.txt
```
