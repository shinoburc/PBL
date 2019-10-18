#!/bin/sh

HTML_TITLE="情報システムズ特別講義"

markdown index.md| tidy -utf8 -i > index.html

sed -i -e "s/<title><\/title>/<title>${HTML_TITLE}<\/title>/" index.html
sed -i -e "s/<head>/<head><meta charset=\"utf-8\">/" index.html
sed -i -e "s/<head>/<head><link rel=\"stylesheet\" href=\"https:\/\/maxcdn.bootstrapcdn.com\/bootstrap\/3.3.6\/css\/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">/" index.html
sed -i -e "s/<head>/<head><link rel=\"stylesheet\" href=\"https:\/\/maxcdn.bootstrapcdn.com\/bootstrap\/3.3.6\/css\/bootstrap-theme.min.css\" integrity=\"sha384-fLW2N01lMqjakBkx3l\/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r\" crossorigin=\"anonymous\">/" index.html
