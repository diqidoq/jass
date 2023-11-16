#!/bin/bash

# Choose your color palettes and shades of them.
# Default is 3 (dark,mid,bright) of each nuance here.
# Feel free to extend or minify from 3 to 2 or 3 to 6, etc.
# Use the first 3 items in list to define 
# the black and white point tendency of your color profile.
# It is recommended to use web safe colors like 5599FF or 59F.
# It is up to you how many colors you use and how you group them.
# Default is a preset of 6 color sets in 5 brightness steps.

rendercolors () {
  name="$1"
  shift;
  for c in "$@" ; do
  colorgrid="
    $colorgrid 
    <div style=\"background-color:#${c}; color:#${c}\">
     <p class=\"one\">#${c} (${name})</p>
     <p class=\"two\">#${c}</p>
    </div>";
  done
}

rendercolors grey    222 555 999 CCC FFF
rendercolors gold    630 A51 D94 FC7 FEC
rendercolors orange  700 C30 F30 F63 FCB
rendercolors red     903 C05 F06 F68 FCD
rendercolors rose    607 A0A E0F E5F EAF
rendercolors violett 408 71B A2F B5F CAF
rendercolors blue    029 04B 26E 59F ACF
rendercolors cyan    034 056 089 0BC 6EF
rendercolors green   030 060 090 0C0 0F0
rendercolors lime    260 5B0 5E0 AF4 CF9

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
body {
display: grid; grid-template-columns: repeat(5,1fr); column-gap: 1.5em; row-gap: 1.5em;
background: rgb(255,255,255);
background: -moz-linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 13%, rgba(255,255,255,1) 20%, rgba(0,0,0,1) 33%, rgba(255,255,255,1) 46%, rgba(255,255,255,1) 54%, rgba(0,0,0,1) 68%, rgba(255,255,255,1) 81%, rgba(255,255,255,1) 86%, rgba(0,0,0,1) 100%);
background: -webkit-linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 13%, rgba(255,255,255,1) 20%, rgba(0,0,0,1) 33%, rgba(255,255,255,1) 46%, rgba(255,255,255,1) 54%, rgba(0,0,0,1) 68%, rgba(255,255,255,1) 81%, rgba(255,255,255,1) 86%, rgba(0,0,0,1) 100%);
background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(255,255,255,1) 13%, rgba(255,255,255,1) 20%, rgba(0,0,0,1) 33%, rgba(255,255,255,1) 46%, rgba(255,255,255,1) 54%, rgba(0,0,0,1) 68%, rgba(255,255,255,1) 81%, rgba(255,255,255,1) 86%, rgba(0,0,0,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#000000",endColorstr="#000000",GradientType=1);        
padding: 0 100px 0 100px; 
}
div { padding-bottom: 8%; box-shadow: 0px 0px 0px; border: 1px solid; }
p { font-family: monospace; font-size: 12px; margin: 0 auto; text-align: center; padding: 3px 0 3px 0; }
p.one { background-color: #EEE; }
p.two { background-color: 0 none !important; color: #EEE; }
</style>
</head>
</body>
EOF

echo $colorgrid

cat <<EOF

</body>
</html>
EOF

} > preset-demo.html 2>&1

buildwebsafecolors
