#!/bin/bash

#### Christian Orellana
#### January 2020



# Output all Files and Folders

#### MAKE SURE TO INSTALL TREE
# https://brew.sh/
# https://rschu.me/list-a-directory-with-tree-command-on-mac-os-x-3b2d4c4a4827

input=$1


cat << 'EOF' >> /Users/admin/Desktop/chris_NEWSCRIPT.sh
# Christian Orellana
# DATE

# TITLE

## NOTES

## VARIABLES

files=(
)
EOF

tree -alfxiQU "$input" --noreport | awk -F"ROOT" '/ROOT/{print $2}' | sed -e 's/^/"/' >> /Users/admin/Desktop/pratt_it_chris_NEWSCRIPT.sh


cat << 'EOF' >> /Users/admin/Desktop/chris_NEWSCRIPT.sh
## FUNCTIONS

deleteFiles() {

	for i in "${files[@]}"
		do
	    	echo "Removing files ${i}"
	    	rm -rf "${i}"
		done

}

## RUN

deleteFiles

exit 0
EOF

chmod +x /Users/admin/Desktop/chris_NEWSCRIPT.sh
chown admin:staff /Users/admin/Desktop/chris_NEWSCRIPT.sh
chmod 755 /Users/admin/Desktop/chris_NEWSCRIPT.sh

exit 0