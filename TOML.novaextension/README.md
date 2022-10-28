# TOML Syntax for Nova

Simple [Nova]("https://nova.app") extension for syntax highlighting of [**TOML**](https://toml.io/) files.

Requires the Tree Sitter based syntax engine introduced in **Nova 10**.

![](https://raw.githubusercontent.com/nlydv/nova-toml/master/preview.png)

## Language Support

**TOML** *(Tom's Obvious Markup Language)* is a very straightforward and, according to Tom, obvious syntax.

Barring any bugs, inconsistencies, or obvious deficiencies with the functionality of this extension, no future updates are planned at this time.

## The *other* TOML

There already exists a TOML language extension in Nova but it has one really annoying bug which inserts `\#` instead of `#` when commenting. That extension doesn't appear to be maintained though, so I thought I'd just keep a local fork of it with that one character removed.

However, since the new Tree Sitter language system was released in Nova 10.0 the same day this was written, I figured I might as well try and compile an existing [Tree Sitter grammar for TOML](https://github.com/ikatyang/tree-sitter-toml) and publish it since the highlighting is more complete.

I've tried to keep the same highlighting selectors/colors as the existing extension, although this syntax also adds highlighting of some values types (numeric, datetime, and other literals) that it didn't pick up. Other than that, it's pretty much the same.

## Building

```bash
git clone https://github.com/nlydv/nova-toml
cd nova-toml
./build.sh
```

Then, to install the built extension:

```
open TOML.novaextension
```

Nova should launch (if not already running) and ask you to confirm.

## License

Copyright © [Ika](https://github.com/ikatyang)<br>
Copyright © 2022 [Neel Yadav](https://neelyadav.com)<br>
MIT License

Full license text is available in the [LICENSE.txt](https://github.com/nlydv/nova-toml/blob/master/LICENSE.txt) file.
