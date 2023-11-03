#!/bin/sh
# feel free to change the steps here to reduce the count of shadees,
# for example like: 1 3 5 7 9 B D F (leaving out each second step)
# You can do it for all color channles or just for some.
# Or if you want low contrast leave out 0 and F.
red-steps=(0 1 2 3 4 5 6 7 8 9 A B C D E F)
green-steps=(0 1 2 3 4 5 6 7 8 9 A B C D E F)
blue-steps=(0 1 2 3 4 5 6 7 8 9 A B C D E F)

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
@media only screen and (min-width:768px) {
 body { display: grid; grid-template-columns: repeat(16,1fr); column-gap: 0.5em; row-gap: 0.5em; }
}
@media only screen and (min-width:576px) and (max-width:767px) {
 body { display: grid; grid-template-columns: repeat(8,1fr); column-gap: 0.5em; row-gap: 0.5em; }
}
</style>
</head>
</body>
EOF

for r in "${red-steps[@]}" ; do
  for g in "${green-steps[@]}" ; do
    for b in "${blue-steps[@]}" ; do

      echo "<div style='background-color:#$r$g$b'><code>#$r$g$b</code></div>";

    done
  done
done

cat <<EOF

</body>
</html>
EOF

} >> colors-websafe-demo.html 2>&1

buildwebsafecolors
