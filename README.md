![Language: Rust](https://img.shields.io/badge/language-Rust-green.svg)
![Topic: Interview](https://img.shields.io/badge/topic-Interview_Question-red.svg)
![Topic: Bitmaps](https://img.shields.io/badge/topic-Bitmaps-red.svg)
![Library Status: Complete](https://img.shields.io/badge/status-Library_Complete-green.svg)

# Bitmap

It's a straightforward API for a bitmap.  It's backed by a Vec, and it's
not meant to be complicated.  It has very few bells or whistles, it's
not meant to compete with
[Roaring](https://github.com/saulius/croaring-rs).  I just needed
something to support my [Boggle
Solver](https://github.com/elfsternberg/boggle-solver), and it needed to
have clone() capability.  There are unit tests.

## Caveats:

Attempting to run setter operations beyond the size of the bitmap will
panic.

## License

Copyright [Elf M. Sternberg](https://elfsternberg.com) (c) 2019, and
licensed with the Mozilla Public License vers. 2.0.  A [copy of the
license file is included in the `docs/` folder](./docs/LICENSE.md).
Contributors should also review the [code of
conduct](./docs/CODE_OF_CONDUCT.md) file.

