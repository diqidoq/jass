# qcss (Qualified CSS)
<sup> Development started in 2012, first released in 2015 & supported by www.maroqqo.com </sup>

 > _Stop learning frameworks. Start building web apps._ :+1:

A simple utility first type of "describe your style as class" tiny CSS framework started in 2012 to use as an easy out-of-the-box "nailing" and minimal framework, to use from the bottom up or, to use for required framework overrides without hassling with your main CSS framework, main CMS or HTML-template-creating systems like CMS' by using a creative class group naming approach easy to learn and to reuse for each project. For example: Adds the missing feature to Boostrap 3 to override some spaces with simple and understandable CSS classes for individual html blocks inherited or not-inherited from the given Bootstrap rythm.

> [!NOTE]
> Great to see that the margin/padding altering extension classes (e.g. mr1, pr2) based on the grid space have found its way into **Bootstrap v4 and v5**. And great to see that a CSS framework like **tailwindcss** has taken over this utility first approach here into a fully-fledged CSS framework in 2017. Just would have been nice to credit it all somewhere. I published this qcss idea in 2012. :) Without maintaining it carefully enough. So it's OK ;-)

Development status
------------------
I keep it in early **alpha** state because I do not like unfullfilled promises. We use it already in production but with custom tweaks on each project. But a more generally usable base version is not ready yet. See the [milestones](https://github.com/diqidoq/qcss/milestones) if you are willing to help.

Credits
-------
Author:  [@diqidoq](https://github.com/diqidoq)

List of developers who have helped:
 + jbitdrop
 + ocb

Requirements
------------
None. (for CSS only)

Optional requirements
---------------------
If you do not want to use the prebuild CSS you can recompile it with LESS and in future also with SCSS (@todo). Example package list for LESS compiling:

 + Less (lessc) 
 + uglifycss (or similar)
 + less plugin clean-css
 + less plugin Autoprefixer

Which can be installed with npm like:

```
sudo npm install -g uglifycss
sudo npm install -g less
sudo npm install -g less-plugin-clean-css
sudo npm install -g less-plugin-autoprefixer
```

Why
---
Stop learning Frameworks. Start building web apps. Go back to the basics and write HTML with understandable classes to exactly know what you do and how to change it. Make your work independend from nested dependencies which can break your build from the bottom up. Use the HTML class attribute what it is made for. And use it much, and right. While classes usually have been intended to be what the name suggests: classes (groups), the simple grouping of similar styled elements turned to become limited for modern and complex mobile web. A class name headers do not tell enough today and there can be very different headers reacting different on narrowed mobile devices. That's why classes became more and more cluttered and confusing labels and frameworks started to misuse it and the nesting of html elements in combination of classes mage the html almost unreadable. Today classes should still be used what they are made for, but in an extended manner. Not to group headers but to group styles.

QCSS keeps the parts independed from any other concept and you can do the so called "sliding" changes rapidly by changing numbers in classes. Without revamping the whole LESS/SASS stack or other concepts which need many additional concept overthinking while editing. These modern doubtless helpful additonal layers all have the one big disadvantage that they suffer from: the ability to keep up consistency and colligation when making direct minimalist changes in a little corner of a project or when "unchaining" of style groups is needed. QCSS uses a smart class group concept, easy to remember after some working with it and simple to define. And you always know what comes from where. 

As I have often stated *"Do not put more on the table than you can eat."* or *"Don't chain longer than you'll be able to survey."*

Read stories like [this](https://qz.com/646467/how-one-programmer-broke-the-internet-by-deleting-a-tiny-piece-of-code/) to undestand what minimalists like me and low level enthusiasts like emacs and vim users come from and why they often take up position against overblown GUI applications, too long chains of depending software and non CoC designed code.

QCSS partly uses the KISS and CoC principle in the way that you only alter the overall look in the grouped css, while you alter the affecting parts the good old way: by only changing the regarding classes in html.

Inspired by the low level enthusiasts, the prior goal was to keep the creating, editing and after all the altering of the look of an html output as minimlistic and independend from any other "tools" as possible (chime in, change a nitpick and go) without losing too much of the advantages of all these fancy "tools" out there, triggered by the experience that many of the new fancy web development stuff becomes old very soon or changes their concept very often and keeps web dev teams always hussling with them rendering their advantages obsolete again.

Roadmap
-------
We want to see where it goes and if it expands well after further development and maybe some contribution of other ideas. We agree about that if it does not work out well, we accept the missed challenge. But until then we will try our best.

How to use
----------
Every CSS class is a combination of a main group identifier and optional with a direction and a positive or negative (-) value.

    b = border, m = margin, p = padding, r = radius, s = shadow, w = width, h = height
    followed by a number = positive value in the rhythm
    or followed by - minus and a number = negative number of steps in the rhythm

### HTML code example

All classes have increasing numbers indicating the steps of increasing or decreasing values. Like m1 = margin step 1 (6px). These steps and how much steps exist can all be changed in the settings if you want to recomile QCSS.

A html div element with a 1-step margin, padding and a 1-step thick and 3px radius wide rounded border.

    <div class="m1 p1 b1 r3"></div>
 
A html div element with a negative margin-right, padding-left and a 2px thick border and 4px wide radius rounded.

    <div class="mr-1 pl1 b2 r4"></div>
 
Licensed under GPL 3 since 2012 under crediting the original author
---------------------------------------------------------------------

https://github.com/diqidoq/qcss/blob/master/LICENSE
