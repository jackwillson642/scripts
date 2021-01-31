#!/bin/bash

# input=$(rofi -theme ~/.config/rofi/themes/dmenu.rasi -dmenu -i -p 'Name: ')
input=$(rofi -dmenu -i -p 'Name: ')
name=$input'.sh'

echo '#!/bin/bash' > ~/scripts/$name
chmod +x ~/scripts/$name

git add ~/scripts/$name
git commit -m "New file created"
