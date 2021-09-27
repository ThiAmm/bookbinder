Run
```
docker build . -t bookbinder
```
Run 
```
docker run -i -v $(pwd)/test:/mnt/bookbinder bookbinder /mnt/bookbinder
```
to bind all books in the directory `$(pwd)/test`.
