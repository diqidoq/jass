#!/bin/bash

# Traditional websafe color palette of 256 colors

red=(0 3 6 9 C F)
green=(0 3 6 9 C F)
blue=(0 3 6 9 C F)

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
@media only screen and (min-width:768px) {
 body { display: grid; grid-template-columns: repeat(12,1fr); column-gap: 0.5em; row-gap: 0.5em; }
}
@media only screen and (min-width:576px) and (max-width:767px) {
 body { display: grid; grid-template-columns: repeat(6,1fr); column-gap: 0.5em; row-gap: 0.5em; }
}
</style>
</head>
</body>
EOF

for r in "${red[@]}" ; do
  for g in "${green[@]}" ; do
    for b in "${blue[@]}" ; do

      echo "<div style='background-color:#$r$g$b'><p>#$r$g$b</p></div>";

    done
  done
done

cat <<EOF

</body>
</html>
EOF

} > websafe-demo.html 2>&1

buildwebsafecolors
