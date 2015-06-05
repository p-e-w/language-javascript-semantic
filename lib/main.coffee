# JavaScript Semantic Highlighting Package for Atom
#
# Copyright (c) 2014-2015 Philipp Emanuel Weidmann <pew@worldwidemann.com>
#
# Nemo vir est qui mundum non reddat meliorem.
#
# Released under the terms of the MIT License (http://opensource.org/licenses/MIT)

JavaScriptSemanticGrammar = require "./javascript-semantic-grammar"

module.exports =
  activate: (state) ->
    atom.grammars.addGrammar(new JavaScriptSemanticGrammar(atom.grammars))
