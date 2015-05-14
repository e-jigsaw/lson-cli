lson-cli
========

[LSON](https://github.com/gkovacs/lson) compiler for CLI.

# Usage

Simple

```sh
✈ lson -p test.lson
{ hoge: 'hoge' }
```

Output to file

```sh
✈ lson -o hage.json test.lson
✈ cat hage.json
{ hoge: 'hoge' }
```

Output to directory

```sh
✈ mkdir out
✈ lson -o out test.lson
✈ cat out/test.json
{ hoge: 'hoge' }
```

[Glob](https://github.com/isaacs/node-glob) your file

```sh
✈ mkdir out
✈ lson -o out *.lson
✈ cat out/test.json
{ hoge: 'hoge' }
```

# Installation

```
✈ npm install lson-cli
```

# build

```sh
✈ npm run build
```

# Author

* jigsaw (http://jgs.me, [@e-jigsaw](https://github.com/e-jigsaw))

# License

MIT

The MIT License (MIT)

Copyright (c) 2015 Takaya Kobayashi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
