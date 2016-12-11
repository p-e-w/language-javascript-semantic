### :red_circle: This project is *on hold* pending resolution of [atom#8669](https://github.com/atom/atom/issues/8669). I'm tired of chasing an undocumented private API.

---


## See Your JavaScript Code in a New Light

This [Atom](https://atom.io/) package enables [semantic highlighting](https://medium.com/programming-ideas-tutorial-and-experience/coding-in-color-3a6db2743a1e) for JavaScript code. Identifiers are highlighted in different colors (the same identifier always in the same color) while everything else (like language keywords) is displayed in various shades of gray. This approach runs contrary to classical ideas about syntax highlighting but is rapidly becoming very popular.

![With Dark Theme](https://raw.githubusercontent.com/p-e-w/language-javascript-semantic/images/screenshot-dark-theme.png)
![With Light Theme](https://raw.githubusercontent.com/p-e-w/language-javascript-semantic/images/screenshot-light-theme.png)

In addition to being a useful tool for actual, productive JavaScript coding, the package also demonstrates some techniques that might serve other developers when creating similar packages for other languages:

* Advanced use of Less to **dynamically create a syntax theme** that goes well with the existing one
* **A language grammar that is defined programmatically** rather than through a `.cson` grammar file
* Connecting an **external parser** ([Acorn](https://github.com/marijnh/acorn) in this case)

Acorn is a mature, fast JavaScript parser that is available through [npm](https://www.npmjs.org/). Unfortunately, the requirements for an Atom grammar necessitated two customizations:

* Support for tokenizing unterminated multi-line comments (required to allow incremental, i.e. line-by-line, tokenizing)
* Reverting to regex- rather than `eval`-based keyword recognition to work around [Atom Shell](https://github.com/atom/atom-shell)'s CSP restrictions (this problem is being tracked in https://github.com/marijnh/acorn/issues/90)

As a result, this package ships with a modified version of Acorn, but it would be preferable if those issues could be worked out so that Acorn can be pulled from npm in the future.

## Acknowledgments

### Prior Art

* [Coding in Color](https://medium.com/programming-ideas-tutorial-and-experience/coding-in-color-3a6db2743a1e): The blog post that started the current semantic highlighting craze, which in turn acknowledges [Semantic Highlighting in KDevelop](http://zwabel.wordpress.com/2009/01/08/c-ide-evolution-from-syntax-highlighting-to-semantic-highlighting/)
* [Sublime-Colorcoder](https://github.com/vprimachenko/Sublime-Colorcoder): Ingenious plugin to enable semantic highlighting through Sublime Text's highly limited plugin API by *dynamically generating a TextMate theme!*
* [recognizer](https://github.com/equiet/recognizer): A very advanced semantic editing plugin for [Brackets](http://brackets.io/)
* [Polychromatic](https://github.com/kolinkrewinkel/Polychromatic): Semantic highlighting plugin for Xcode

### Dependencies

* [Acorn](https://github.com/marijnh/acorn): JavaScript parser

## License

Copyright © 2014-2015 Philipp Emanuel Weidmann (<pew@worldwidemann.com>)

Released under the terms of the [MIT License](http://opensource.org/licenses/MIT)
