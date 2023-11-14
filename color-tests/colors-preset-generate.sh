#!/bin/bash

# Choose your color palettes and shades of them.
#  Default is 3 (dark,mid,bright) of each nuance here.
#  Feel free to extend or minify from 3 to 2 or 3 to 6, etc.
#  Use the first 3 items in list to define 
# the black and white point tendency of your color profile.
# It is recommended to use web safe colors like 5599FF or 59F.
# It is up to you how many colors you use and how you group them.
# Default is a preset of 6 color sets from dark, mid to bright.

num_of_color_shades=5 # helps to group colors in preview 
colors=(222 555 999 CCC FFF 607 A0A E0F E5F EAF 029 04B 36E 69F BCF 072 5A0 7E0 BF4 CF9 903 C05 F06 F68 FBC 630 940 D83 FC7 EDC)

# After testing colors here you can use your chosen steps in the SASS settings
# to generate the color shade classes for your setup.

buildwebsafecolors () {
cat <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
 <title>Web-safe colors</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
div { padding-bottom: 2em; box-shadow: 0 4px 10px #666;}
p { font-family: monospace; margin: 0 auto; text-align: center; background-color: #EEE; color: #222; }

body { display: grid; grid-template-columns: repeat(5,1fr); column-gap: 0.5em; row-gap: 0.5em; }

</style>
</head>
</body>
EOF

for c in "${colors[@]}" ; do

      echo "<div style='background-color:#${c}'><p>#${c}</p></div>";

done

cat <<EOF

</body>
</html>
EOF

} >> colors-preset-demo.html 2>&1

buildwebsafecolors
