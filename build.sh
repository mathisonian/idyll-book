
#!/bin/bash

idyll build -i index.idyll -o build/

for filename in ./book/*.idyll; do
  echo "$filename"
  idyll build -i "$filename" -o "build/book/$(basename $filename  .idyll)/"
done

cd build;
python -m SimpleHTTPServer 8080
