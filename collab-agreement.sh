#! /usr/bin/bash

# Grabs the HTML export from the pad http://osp.constantvzw.org:9999/p/collaboration-agreement
# Then inserts a link to a local stylesheet named collab-agreement.css
# Then saves the HTML to the file source/collab-agreement.html
curl http://osp.constantvzw.org:9999/p/collaboration-agreement/export/html | sed "/<head>/ {N; s/<head>\n/&<link rel=\"stylesheet\" type=\"text\/css\" href=\"..\/collab-agreement.css\">\n/ }" | sed -e  's/&lt;/</g' -e 's/&gt;/>/g' -e 's/  / /g' -e 's/<br><br>/<br>/g' >| source/collab-agreement.html

