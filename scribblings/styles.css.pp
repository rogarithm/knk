#lang pollen


◊;{
* matches every element. in the styles of mb, he initiallizes margin, border, and padding to 0.
}
* {
	padding: 0;
	margin: 0;
	border: 0;
	font-weight: inherit;
	font-size: inherit;
	font-style: inherit;
	◊;{
	inherit a CSS property from the parent element. But as * means every element of html, then what's the parent element of *?
	}
	}

◊; didn't use in html.pm, but template will have body, so need this styling.
body {
    margin: 0;
    margin-left:auto; ◊; this will give the content in the center.
    margin-right:auto;
    ◊;width:100%;
    ◊;max-width:1000px;
}

#doc ◊; styles if an id is doc
{
    margin-top: 6rem; ◊;{
		rem is short for root em. Unlike em, it always related to the font size of html tag.
		But what's the font size of html tag?
		}
    margin-bottom: 6rem;
    ◊;◊(make-css-kerning)
    ◊;font-family: concourse-t3;
    ◊;color: #222;
    line-height: 1.4;
}
