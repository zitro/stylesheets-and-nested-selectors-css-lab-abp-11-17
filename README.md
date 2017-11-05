# Stylesheets and Nested Selectors with CSS

## Objectives

1. `<link>` to an external stylesheet `style.css` from `index.html`.
2. Use nested element selectors to style the navigation of the Icebreaker homepage.
3. Play with borders, heights, padding, margin, inline display, and floats.

## Instructions

We're going to style the navigation of our Icebreakers site. The goal is to move the `h3` to the left using floats and the `nav` to the right. We're also going to add some other styles like a bottom border and some colors. By the end of this lab the navigation in `index.html` will look like:

![Navigation](https://cl.ly/nWkx/Image%202017-11-05%20at%205.38.14%20PM.png)

Code your styles in `style.css` and include it in `index.html` with a `<link>` tag with an `href` attribute and a `rel` attribute of value `stylesheet`. 

You have to use the specific selectors described below to style the navigation.

### The `<header>`

Give the `header` element a `height` of `100px` and a `bottom-border` of `1px solid #cccccc`

### The `<nav>`

Select the `nav` element by finding it nested under the `header` (hint - `parent_element child_element {}`). Float the `nav` to the right.

### The `<nav>` `<ul>`

Select the `ul` element by finding it nested under the `nav`. Reset the `ul`'s padding to 0 and give it a top margin of 40px and reset all other margins to `0`. You can use a [shorthand `margin` property](https://www.w3schools.com/css/css_margin.asp) for this - `margin: TOP RIGHT BOTTOM LEFT`

### The `<li>`s inside of `<ul>` inside of `<nav>`

Select the `li`s with a triple nested selector searching for all `li`s inside a `ul` inside a `nav`. Set the `li` `display` property to inline and add a right margin of `10px`

### The `<a>`s inside of `<nav>`

Select all `a`s inside a `nav` with a nested selector. Remove their `text-decoration`, give them a `color` of `#007bff` and a font-size of `18px`

### The `<h3>` inside the `<header>`

Select the `h3` inside `header` with a nested selector. Float the h3 to the left and make the `font-size` `30px`.

### The `<a>` inside `<h3>` inside the `<header>`

Select the `a` with a tripple nested selector and style it with no `text-decoration` and a `color` of `#868e96`.

## Resources

* [CSS Selectors](https://www.w3schools.com/css/css_combinators.asp)
* [CSSS Groupings](http://www.htmldog.com/guides/css/intermediate/grouping/)