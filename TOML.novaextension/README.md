# TOML Syntax for Nova

A simple Tree Sitter-based [Nova](https://nova.app) extension providing editor support for [**TOML**](https://toml.io/) files.

![](https://raw.githubusercontent.com/nlydv/nova-toml/master/preview.png)

## Language Support

**TOML** _(Tom's Obvious Markup Language)_ is a very straightforward and, according to Tom, obvious syntax.

Given the relative simplicity of the syntax, this extension is pretty much considered feature-complete. Any future updates would likely only focus on integrating additional IDE-like functionality and keeping up with any relevant changes introduced in Nova's extension API.

Beyond syntax highlighting, this extension also includes very basic implementations of the following features:
* Code folding
* Symbolication

> NOTE: this extension is only supported on **Nova v10.0** and higher

## Motivation

There already exists a TOML language extension in Nova but it has one really annoying bug which inserts `\#` instead of `#` when commenting. That extension doesn't appear to be maintained though, so I thought I'd just keep a local fork of it with that one character removed.

However, since the new Tree Sitter language system was released in Nova 10.0 the same day this was written, I figured I might as well try and compile an existing [Tree Sitter grammar for TOML][ikatyang/tree-sitter-toml] and publish it since the highlighting is more complete.

I've tried to keep the same highlighting selectors/colors as the existing extension, although this syntax also adds highlighting of some value types (numeric, datetime, and other literals) that it didn't pick up.

## Development

### Tree Sitter

The TOML syntax used by this extension is located at [nlydv/tree-sitter-toml] and linked here as a submodule. It's a lightly modified fork of [ikatyang/tree-sitter-toml] that exposes additional nodes in the syntax tree for queries to hook into.

### Building

```shell
git clone https://github.com/nlydv/nova-toml
cd nova-toml
git submodule update --init
./build.sh
```

Then, to install the built extension:

```shell
open TOML.novaextension
```

Nova should launch (if not already running) and ask you to confirm.

## License

Copyright © [Ika](https://github.com/ikatyang)<br>
Copyright © 2023 [Neel Yadav](https://neelyadav.com)<br>
MIT License

Full license text is available in the [LICENSE.txt](https://github.com/nlydv/nova-toml/blob/master/TOML.novaextension/LICENSE.txt) file.

[ikatyang/tree-sitter-toml]: https://github.com/ikatyang/tree-sitter-toml
[nlydv/tree-sitter-toml]: https://github.com/nlydv/tree-sitter-toml
