# JASS | _play Jasm CSS conducted by SASS._
<sup> Development started in 2012 formerly named QCSS (with LESS), first released in 2015 and refactored to JASS (with SASS) in 2023.
**Supported by www.maroqqo.com** </sup>

 > _Stop learning frameworks. Stop hacking styles. Start building web apps._ :+1:

A simple utility first type of "describe your style as class" CSS framework with no stylesheet editing and no recompiling for new themes in mind. Refactored in 2023 and renamed to JASS to keep being cross browser compatible down  to 2009 while using SASS (SCSS) for the generator. As an easy out-of-the-box styling layer from the bottom up by using a creative class group naming approach easy to learn and to reuse for each project.

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
 + less plugin lists

Which can be installed with npm like:

```
npm install -g uglifycss
npm install -g less
npm install -g less-plugin-clean-css
npm install -g less-plugin-autoprefixer
npm install -g less-plugin-lists
```

Why
---
 > Stop learning Frameworks. Start building web apps. 

Go back to the basics and write HTML with understandable classes to exactly know what you do and how to change it. Make your work independend from nested dependencies which can break your build from the bottom up. Use the HTML class attribute what it is made for. Or better sad: what it is intended for today. And use it much, and right. While classes usually have been intended to be what the name suggests: classes (groups), the simple grouping of similar styled elements turned to become limited for modern and complex mobile web. A class name like _headers_ do not tell enough today. And there can be very different _headers_ reacting different on narrowed mobile devices. You also have to go back to the headers section of your CSS to know what styles you do have used for it and to check of other things which have caused the unwanted look. That's why classes became more and more cluttered and confusing labels and frameworks started to misuse it and the nesting of html elements in combination of classes made the HTML almost unreadable. Today, classes should still be used what they are made for. But in an extended manner. Not to group such like _headers_ but such like _styles_. And voila you get a _header_ like this `<header class="fs2 b1 m1 maxh2"></header>` and you will know by reading the HTML that it has a font size of x2 and a minimal border, a minimal margin and a max-height of x2.

QCSS keeps its concept independed from any other and can perfectly get integrated into other concepts because of its smart $override variable creating sheets with !important automatically for you. And you can do the so called "sliding" changes rapidly by changing numbers in classes. Without revamping the whole LESS/SASS stack or other concepts which need many additional concept overthinking while editing. These big frameworks rather behaving like apps by creating (doubtless helpful) additonal layers all have the one big disadvantage that they suffer from: the ability to keep up consistency and colligation when making direct minimalist changes in a little corner of a project or when "unchaining" of style groups is needed. QCSS uses a simple but smart class group concept (as one of the first in the web!) ;-). Easy to remember (after some working with it). And simple to define. And you always know what comes from where. 

As I have often stated *"Do not put more on the table than you can eat."* or *"Don't chain longer than you'll be able to survey."*

Read stories like [this](https://qz.com/646467/how-one-programmer-broke-the-internet-by-deleting-a-tiny-piece-of-code/) to undestand what minimalists like me and low level enthusiasts like emacs and vim users come from and why they often take up position against overblown GUI applications, too long chains of depending software and non CoC designed code.

QCSS partly uses the KISS and CoC principle in the way that you only alter the overall look in the grouped css, while you alter the affecting parts the good old way: by only changing the regarding classes in html.

Inspired by the low level enthusiasts, the prior goal was to keep the creating, editing and after all the altering of the look of an html output as minimlistic and independend from any other "tools" as possible (chime in, change a nitpick and go) without losing too much of the advantages of all these fancy "tools" out there, triggered by the experience that many of the new fancy web development stuff becomes old very soon or changes their concept very often and keeps web dev teams always hussling with them rendering their advantages obsolete again.

What QCSS tries to avoid
------------------------

### Short
**No** Javascript | **No** SVG | **No** custom CSS --var | **No** display:grid or flex
Full cross browser compatibility including IE 8 / 9 and below. Yes there are pure people out there, please beware this.

### Long
1. QCSS do not use Javascript. A CSS framework should not use Javascript. Period. It uses smart CSS only solutions for the common Javasript parts like popups or other hidden/toggle features by using hidden checkboxes. Same goes for animations which can be perfectly integrated with Animate.css
2. Yes, QCSS is using external libraries as extension in the _full out of the box package_ of the framework, like fontawesome icons and such, but it do not uses the latest "hot" things for the very important reason to be backwards compatible as much as possible. We should not forget that not all people in the world have access to the latest and most modern browsers and powerful laptops or smartphones. That means that we carefully check the _CAN I USE_ sites and if there is too much red, we avoid it.
3. So, that means, SVG (as much as I like it personally a lot and work with it a lot) will not be used or linked to in QCSS. Of course you are free to use it with QCSS in your modified package.
4. QCSS do not use custom CSS properties (--var). For us it is absolutely NOT understandable why using such not 98% compatible feature when a CSS framework has been compiled by preprocessors, which have been made exactly for that purpose?

 > _You think a far way backwards compatible CSS framework without Javascript and without latest CSS gimmigs can't strike? Yeah, that's what they tell you. Check our example pages upcoming soon._

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
