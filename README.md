# qcss (Qualified CSS)
(Development supported by www.maroqqo.com)

A simple group of minimalized css (and Less) to use as an easy out-of-the-box "naliing" framework of required overrides without hassling with your CMS or HTML creating system by using a creative class group naming approach.

Requirements
------------
 + less (lessc)
 + uglifycss (or similar)
 + less plugin clean-css ()
 + less plugin Autoprefixer ()

Slogan
------
Back to basics. Write HTML and use classes to make the playing right. Make your work independend from toys. Use the HTML class attribute what it is made for. And use it much, and right.

Why
---
QCSS keeps the parts independed from any other concepts and can do the so called "sliding" changes. Without revamping the whole LESS/SASS stack or other concepts which need many additional concept overthinking while editing. These modern doubtless helpful additonal layers all have the one big disadvantage that they suffer from: the ability to keep up consistency and colligation when making direct minimalist changes in a little corner of a project or when "unchaining" of style groups is needed. QCSS uses a smart class group concept, easy to remember after some working with it and simple to define. And you always know what comes from where. 

As I have often stated *"Do not put more on the table than you can eat."* or *"Don't chain longer than you'll be able to survey."*

Read stories like [this](https://qz.com/646467/how-one-programmer-broke-the-internet-by-deleting-a-tiny-piece-of-code/) to undestand what minimalists like me and low level enthusiasts like emacs and vim users come from and why they often take up position against overblown GUI applications, too long chains of depending software and non CoC designed code.

QCSS partly uses the KISS and CoC principle in the way that you only alter the overall look in the grouped css, while you alter the affecting parts the good old way: by only changing the regarding classes in html. *"What do you mean with the other red, there is only one red, the red defined in CSS"...*

Roadmap
-------
We want to see where it goes and if it expands well after further development and maybe some contribution of other ideas. We agree about that if it does not work out well, we accept the missed challenge. But until then we will try our best.

Notes for global usage in npm enviroment
----------------------------------------
sudo npm install -g uglifycss
sudo npm install -g less
sudo npm install -g less-plugin-clean-css
sudo npm install -g less-plugin-autoprefixer

Reasons
-------
Inspired by the low level enthusiasts, the prior goal was to keep the creating, editing and after all the altering of the look of an html output as minimlistic and independend from any other "tools" as possible (chime in, change a nitpick and go) without losing too much of the advantages of all these fancy "tools" out there, triggered by the experience that many of the new fancy web development stuff becomes old very soon or changes their concept very often and keeps web dev teams always hussling with them rendering their advantages obsolete again.

Main class group identifiers
----------------------------
b = border, m = margin, p = paddiing, r = radius, s = shadow
 
Licensed under GPL 3
--------------------
https://github.com/diqidoq/qcss/blob/master/LICENSE

