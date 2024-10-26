## JASS  ·  _"Play with Jasm CSS classes conducted by SASS."_
<sup> Development started in 2012 formerly named QCSS (with LESS), first released in 2015 and refactored to JASS (with SASS) in 2023.<br>
**Supported by www.maroqqo.com** </sup>

![jass](https://github.com/diqidoq/jass/assets/7956667/67feeeba-cc91-444e-aae9-b118d91b75a0)

A simple utility first type of "describe your style as class out of the box" CSS toolset with no stylesheet editing and no recompiling for new themes in mind (multipurpose presets).

Development started in 2012 formerly named as QCSS. Refactored in 2023 and renamed to JASS. _(Not to confuse with JSS, Javascript driven CSS.)_ Being cross browser compatible down to 2009 while using SASS (SCSS) for manufacturing. Why still SASS in ^2020 instead of CSS --variables and nesting? [Because it still matters if you care about browser support](https://www.reddit.com/r/css/comments/18r4gxm/do_i_still_need_sass_in_2024/)

An easy out-of-the-box styling layer from the bottom up by using a creative class group naming approach, easy to learn and to reuse for each project, no matter how the markup is structured. With a footprint of only 70kb by settings limited to mid-range use (~200kb on max).

> Read more about the term "Jasm" and where the term Jazz (music) comes from: https://en.wikipedia.org/wiki/Jazz_(word)

Components:

 - borders: width, radius, directions and smart variations.
 - colors: extensive color scheme options and target class options.
 - responsive layouts, but without(!) using diplay flex or grid, to be accessible _"for the rest of the world"_ (2% - 5%).
 - shadows: no predefined but smart extendable with auto generating class names.
 - rhythm independent spacing tools (as one of the first frameworks in web!)
 - typography: most extensive typo classes available
 - extra tools (anything needed in combination with other components like floats, positions, order, etc.)
 - optional override-switch per component (!important), default: no. (off)
 - optional child target setting per component (classes with trailing --c), default: no. (off)
 - optional class name settings for long and short, descriptive or index based class names.
 - optional print style setting per component (classes with trailing --p), default: no. (off)
 - @todo: rtl support.

Corresponding [Drupal CMS theme based on JASS](https://www.drupal.org/project/jass) under development.

> [!NOTE]
> Great to see that the margin/padding altering extension classes (e.g. mr1, pr2) based on the grid space have found its way into **Bootstrap v4 and v5**. And great to see that a CSS framework like **tailwindcss** has taken over this utility first approach here into a fully-fledged CSS framework in 2017. Just would have been nice to credit it all somewhere. I published this qcss idea in 2012. :) Without maintaining it carefully enough. So it's OK ;-)

Why yet another CSS toolset?
----------------------------
Because most active frameworks are too overblown mix of CSS and JS to me with too few backwards compatibility. In my opinion, we need to rethink the massive overblown toolchain we use in web development nowadays in the shadow of all the buzz about emission and wasted resources on our planet.

For example: Do we really need huge overblown Javascript Apps in every case to _"interact with our users"_? Javascript is great, but its _"solution for everything"_ trend is dangerous. Javascript in the way it is being used today is young and not resource optimized at all yet and wastes far more energy than PHP. Also most Javascript web applications force users to use most modern web browsers and most modern computers to have a flawless experience. Which is another issue regarding enviromental responsibilty thinking. Do you maybe remember back in the days when you have started to think about a new laptop because new pages like YOUTUBE or Facebook didn't wanted to act right on your old machine? This is where the mistakes have been started. And today it became the go-to "faster bigger fresher" ... I strongly believe that this road has a already visible end on the horizon by the exponential grow of internet usage correlated against modern global resource management.

Development status
------------------
In the first time it was more something like _"public available, but rather for own-use-created project"_. Lately I started to make it more production ready _"for all of us"_. The reason therefor was the growing interest out there and early adaptors. Which surprised me, to be honest. Because this project lives far from any up-to-date trends.

Credits
-------
Author:  [@diqidoq](https://github.com/diqidoq)

List of developers and contributors, who have helped:
 + jbitdrop
 + ocb

Requirements
------------
None.

Optional requirements
---------------------
If you do not want to use the prebuild CSS toolset "as-is" or need to change some of the smart settings we provide per default, you can recompile with SCSS (SASS) https://sass-lang.com/install. All you need to do is to edit the well documented jass scss settings files on each component.

How to use
----------

 > Play Jasm CSS conducted by SASS.

As one of the very first with this attempt: In JASS (formerly QCSS) every CSS class is just a combination of a main group identifier describing the css property with an optional direction followed by a positive or negative (-) value. And we did this already in 2012! Each class exists as shorthand and as most readable version depending on the setting you choose, corresponding directly to the CSS property at target. Including the option to render child target classes. There are no traditional classes misused as label-grouping style bundle, like for "nav" or like "primary" or "header", "xxl" etc. Only CSS-property-describing classes plus values which you use to build your style on the HTML element. That is the tricka dn whole idea behind JASS.

Examples:

    b = border, m = margin, p = padding, r = radius, s = shadow, w = width, h = height
    <div class="b1 solid m20 pt10 s-2-2-8-333"> works exactly the same like <div class="border1 border-style-solid margin20 paddingtop10 shadow-2-2-8-333">

Which corresponds to CSS like: margin: 20px; padding-top: 10px; border-width: 1px; border-style: solid; box-shadow: 2px 2px 8px #333.

All classes are expandable by useful increasing or decreasing values defined in the settings and which can be changed for the own most common values or own rhythm in mind. But keep it Jazzy! ;-) After playing around with it, you will find yourself back in the traditional way of building a website: By just editing HTML and class names.

What JASS tries to make better
------------------------------

Think twice before you decide on what Web is good for and how much time you want to invest and how much resources your web project should waste. And how many dependencies you can manage over the years. Stop building development stacks of modern and fresh stylish overblown projects and go back to the basics. Write smart HTML with understandable classes or their shorthands to exactly know what you do and how to change it while keep being on the HTML side. Make your work independent from nested dependencies which will break in a unknown future. Use the HTML class attribute what it is made for. Or better sad: what it is intended for today. And use it much, and right.

More in detail: While classes usually have been intended to be what the name suggests: classes (groups), the simple grouping of similar styled elements turned out to become limited for modern and complex mobile web. A class name like _headers_ do not tell enough today. And there can be very different _headers_ acting different on narrowed mobile devices. You also have to go back to the headers section of your CSS to know what styles you do have used for it and to check for other things which have caused the unwanted look.

That's why classes became more and more cluttered and confusing "labels" just corresponding to spontaneous CSS design. And frameworks started to misuse it and the nesting of html elements in combination of classes made the HTML almost unreadable. Today, classes should still be used what they are made for. But in an extended manner. Not to group such like _headers_ or colors like "primary" but such like _styles_. Or colors like .cf65 (#FF6655). And voila you get a _header_ like this `<header class="fontsize12 border1 margin10 hmax250 color687"></header>` or in short `<header class="fsz12 b1 m1 hmax250 c687"></header>` and you will know by reading the HTML that it has a font size of 12px and a border of 1px, a margin of 10px and a max-height of 250px and a web-safe color for text and shadows like #668877.

JASS tries to be a ready to go and forget solution which can get perfectly integrated into other concepts because of its class-describes-style attempt and smart $override variable creating component divided sheets with !important automatically for you, if you want it (disabled by default).

And you can do the so called "sliding" changes rapidly by changing numbers in classes. Without revamping the whole LESS/SASS stack or other concepts which need many additional concept overthinking while editing.

Big frameworks (we avoid that term) behaving like app-suites by creating (doubtless helpful) additional layers, but all have the one big disadvantage that they suffer from: the ability to keep up consistency and collation when making direct minimalist changes in a little corner of a project or when "unchaining" of style groups is needed. JASS uses a simple but smart class group concept (as one of the first in the web) ;-). Easy to remember (after some working with it). And simple to define. And you always know what comes from where and can be re-generated in the way you like it.

As I have often stated *"Do not put more on the table than you can eat."* or *"Don't chain longer than you'll be able to survey."*

Read stories like [this](https://qz.com/646467/how-one-programmer-broke-the-internet-by-deleting-a-tiny-piece-of-code/) to understand what minimalists like me and low level enthusiasts like emacs and vim users come from and why they often take up position against overblown and grown hogs, too long chains of depending on software and non CoC designed code.

JASS partly uses the KISS and CoC principle in the way that you only alter the overall look in the grouped css, while you alter the affecting parts the good old way: by only changing the regarding classes in html.

The prior goal was to keep the creating, editing and after all the altering of the look of an html output as minimalistic and independent from any other "tool" as possible (chime in, change a nitpick and go) without losing too much of the advantages of all these fancy "tools" out there. Triggered by the own experience, that many of the new fancy web development stuff becomes old very soon. Or changes their concept very often and keeps web dev teams always busy by rendering its advantages obsolete again.

What JASS tries to avoid
------------------------

### Short
**No** Javascript for styling (use it for its purpose), **No** custom CSS --variables and nesting, **No** ignorance against users of old browsers out there in the world. (You run a non-profit webpage for a aid organisation supporting pure users in another corner of the world? Here you go.)

### Long
JASS will try to keep full cross browser compatibility including IE 10 and partly even below and will provide CSS alternative solutions for common Javascript parts (like mobile nav, popup, etc.). Yes, you read right. There are pure people out there, please beware this. And there are still people out there disabling Javascript. And all you fighters against Browser flaws: There is no need to fight old browsers no more by pushing modern technologies. Because all modern browsers follow new technologies already. And this is great! I love all the new and often better possibilities of modern browsers. But there are browsers out there not developed no more but still used in pure corners of the world and I am not willing to ignore them. You care about accessibility? Then you should worry about those too. Just for an example: For me 1% or 2% of the world is still too much to ignore.

1. Why JASS do not use Javascript? A CSS(!) toolset should not use Javascript. Period. Let each tool do it's job. JASS integrates well with other tools. And if you are interested in smart CSS only solutions for the common Javasript parts like popups or other hidden/toggle features by using hidden checkboxes etc, there are interesting tools out there you can combine with JASS. Same goes for animations which can be perfectly integrated with Animate.css - And while this is not supported by old browsers your website will still work made by JASS. And since JASS is component based you are free to disable parts and use other CSS or JS based tools in the mix with JASS.
2. JASS tries to be backwards compatible as much as possible. Again: We should not forget that not all people in the world have access to the latest and most modern browsers and powerful laptops or smartphones. That means that we carefully check the _CAN I USE_ sites and if there is too much red, we try avoiding it or only use it in not mandatory corners without breaking if not supported.
3. So, that means, SVG (as much as I like it personally a lot and work with it a lot) will not be used or linked to in JASS. Of course you are free to use it with it in your modified package.
4. JASS do not use custom CSS properties (--var). For us it is absolutely NOT understandable why using such not backwards compatible feature when a CSS framework has been compiled by preprocessors, which have been made exactly for that purpose? Did you have looked at the output in the development pane when controlling the rederning of a Bootstrap page? Millions of --var lists popup.
5. And last but not least a maybe shocking news for you: Out of the box JASS provides only websafe 3digit hex color code classes without opacity. You may say: _"Oh how can I have all the wonderful shaded color tunes I usually use then? This reads old fashioned."_ Well, let me tell you as somebody who works as a photographer, as a cinematographer, as a colorist and often even as a designer in the most modern scenarios: They tricked you. The new toys just make you lazy. Think one more time: how many colors and shades of them do you have in mind in that moment? And are you sure that you need transparency to blend them against the background? Really? Did you know that transparency makes scrolling very CPU hungry? Do you know how many colors you can generate from just 3 digits in 16 steps (0-F) variations? From #000 to #FFF? Well check out our **color generator** included in this package and you will be surprised. It is 4069(!) color shades. And if you are not able to use them right to create the same effects which you solve today by using rgba, well, ... then maybe _it is not the tool, but the user_. And web safe colors guarantee you the most compatibility and same look on all screens and old monitors. Beware: the big impressive painters of the last centuries had only 10-50 colors they have produced from flowers and spice etc. by their self. You now have over 4000!

 > _You think a backwards compatible CSS toolset without Javascript and without latest CSS gimmicks can't strike? Yeah, that's what they tell you. Check our example pages upcoming soon._


Licensed under GPL 3 since 2012 under crediting the original author
---------------------------------------------------------------------

https://github.com/diqidoq/qcss/blob/master/LICENSE
