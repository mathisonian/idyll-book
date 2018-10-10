

# Multi-page Idyll

![animated example](https://user-images.githubusercontent.com/1074773/44600272-a4170700-a78d-11e8-83e3-c60fd55d7304.gif)

In this example, we are making a book. There is a home page / index page
stored in `index.idyll` at the root level, and the individual chapters
of the book are stored in `chapters/<chapter-name>.idyll`.


## Developing

Similarly to run the dev server for the index and chapter pages:

```sh
# index page
idyll -i index.idyll -o build

# individual chapter
idyll -i chapters/<chapter-title>.idyll -o build/chapters/<chapter-title>
```

## Building

To build the index page:

```
idyll build -i index.idyll -o build
```

To build a single chapter page:

```
idyll build -i chapters/<chapter-title>.idyll -o build/chapters/<chapter-title>
```

To build everything:

```
./build.sh
```

This will compile all pages and start a server on localhost:8080.
