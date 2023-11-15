#!/bin/bash

# Choose your color palettes and shades of them.
# Default is 3 (dark,mid,bright) of each nuance here.
# Feel free to extend or minify from 3 to 2 or 3 to 6, etc.
# Use the first 3 items in list to define 
# the black and white point tendency of your color profile.
# It is recommended to use web safe colors like 5599FF or 59F.
# It is up to you how many colors you use and how you group them.
# Default is a preset of 6 color sets in 5 brightness steps.

num_of_color_shades=5 # helps to group colors in preview 
colors=(222 555 999 CCC FFF 630 A51 D94 FC7 FEC 903 C05 F06 F68 FCD 607 A0A E0F E5F EAF 408 71B A2F B5F CAF 029 04B 26E 59F ACF 072 5B0 5E0 AF4 CF9)

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
body { display: grid; grid-template-columns: repeat(5,1fr); column-gap: 2em; row-gap: 2em;
       background: rgb(0,0,0); background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 100%); padding: 0 100px 0 100px; }
div { padding-bottom: 3em; box-shadow: 0px 0px 0px; border: 1px solid; }
p { font-family: monospace; font-size: 12px; margin: 0 auto; text-align: center; padding: 5px 0 5px 0; }
p.one { background-color: #EEE; color: #222; }
p.two { background-color: 0 none !important; color: #EEE; }
p.three { background-color: #FFF; }
</style>
</head>
</body>
EOF

for c in "${colors[@]}" ; do

      echo "<div style='background-color:#${c}; color:#${c}'>
       <p class="one">#${c}</p>
       <p class="two">#${c}</p>
       <p class="three">#${c}</p>
      </div>";

done

cat <<EOF

</body>
</html>
EOF

} >> preset-demo.html 2>&1

buildwebsafecolors
