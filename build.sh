
#!/bin/bash

idyll build -i index.idyll -o build/

for filename in ./chapters/*.idyll; do
  echo "$filename"
  idyll build -i "$filename" -o "build/chapters/$(basename $filename  .idyll)/"
done

cd build;
python -m SimpleHTTPServer 8080
