---
layout: default
title: OSRSBox | osrsbox-tooltips | An Old School Runescape (OSRS) Tooltip library
---

# osrsbox-tooltips
## An Old School Runescape (OSRS) Tooltip library

This repository is a library for creating Old School RuneScape (OSRS) tooltips to enhance user experience on fan websites. The repository hosts the files necessary to implement OSRS tooltips on web pages. For example, check out the lovely <span class="tooltip osrs-tooltip" id='6920' title='Please wait ...'>[Infinity boots]</span> and their stats! The project is based on World of Warcraft (WOW) tooltips - primarily the [WOWhead tooltips](http://www.wowhead.com/tooltips) that are used on the WOWhead website and other WOW fan sites. You can see a more thorough working demo of WOWhead tootips [here](http://wow.zamimg.com/widgets/power/demo.html).

## Usage Example

The OSRS tooltip library provides default support for tooltips in:

1. Text: usually item names
2. Images: usually a thumbnail picture on an image

OSRS tooltips are pretty simple to use. The process requires two main additions to your web page: 1) Including the JavaScript and CSS code in your web page header; and 2) Including an HTML in your web page body to display a text or image which is used to display the actual tooltip when hovered.

### 1) Include JavaScript and CSS style sheet in the web page header

The JavaScript code (osrsbox-tooltips.js) needs to be included the HTML source code header for the web page when you want to use OSRS tooltips.

{: .code-box}
``` html
<script type="text/javascript" src="http://osrsbox.com/osrsbox-tooltips/osrsbox-tooltips.js"></script>
```

The CSS style code (osrsbox-tooltips.css) also needs to be included the HTML source code header for the web page when you want to use OSRS tooltips.

{: .code-box}
```html
<link rel="stylesheet" type="text/css" href="http://osrsbox.com/osrsbox-tooltips/osrsbox-tooltips.css">
```

The following code provides a full working example of a header with links to the the JavaScript and CSS files hosted on osrsbox.com:

{: .code-box}
```html
<head>
	<link rel="stylesheet" type="text/css" href="http://osrsbox.com/osrsbox-tooltips/osrsbox-tooltips.css">
	<script type="text/javascript" src="http://osrsbox.com/osrsbox-tooltips/osrsbox-tooltips.js"></script>
</head>
```

### 2) Include HTML element to show tooltip

Once the OSRS tooltip library has been included in the header we can create HTML elements which have tooltips when a user hovers their mouse over the element. The OSRS tooltip library provide default support for providing tooltips to:

1. Text: usually item names
2. Images: usually a thumbnail picture on an image

Some code below indicates the use of each method of displaying OSRS tooltips.

Text example:

{: .code-box}
```html
<div class="tooltip">
	<span class="osrs-tooltip" id='2615' title='Please wait ...'>[Rune platebody (g)]</span>
</div><!-- /.tooltip -->
```
Image example:

{: .code-box}
``` html
<div class="tooltip">
	<span class="osrs-tooltip" id='2617' title='Please wait ...'><img class="" height="32" width="32" src="http://osrsbox.com/osrsbox-db/items-icons/2/2617.png"></span>
</div><!-- /.tooltip -->
```

### Full working example

Sometimes code snippets can be difficult to understand or implement. Therefore, the following HTML code is a full working example of how to use OSRS tooltips on a web page. This is barebones example with minimal page formatting and style. 

Code includes a hoverable text in the form of an item name, as well as a hoverable thumbnail image example. 

{: .code-box}
```html
<!DOCTYPE html>
<html>
<head>
	<title>OSRSBOX | Simple HTML Example using OSRS Tooltips by PH01L</title>
    <!-- External links to osrsbox-tooltip library (JS and CSS) -->
	<link href="http://osrsbox.com/osrsbox-tooltips/osrsbox-tooltips.css" rel="stylesheet" type="text/css">
	<script src="http://osrsbox.com/osrsbox-tooltips/osrsbox-tooltips.js" type="text/javascript">
	</script>
</head>
<body>
    <div class="tooltip">
		<span class="osrs-tooltip" id='2615' title='Please wait ...'>[Rune platebody (g)]</span>
	</div><!-- /.tooltip -->
	<div class="tooltip">
		<span class="osrs-tooltip" id='2617' title='Please wait ...'><img class="" height="32" width="32" src="http://osrsbox.com/osrsbox-db/items-icons/2/2617.png"></span>
	</div><!-- /.tooltip -->
</body>
</html>
```

# TODO

Add summary of each file (.js and .css)

Cover connection to RESTful API

Link to projects using OSRS tooltips

Summary of license information and reuse

Project feedback and contribution

<span id="forkongithub"><a href="https://github.com/osrsbox/osrsbox-tooltips">Fork me on GitHub</a></span>

