# Introduction
Suppose you have a pdf with `16` pages `[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16]`.
If you run this program, you get a pdf with `8` pages `[8|1],[2|7],[3|6],[4|5],[9|16],[10|15],[11|14],[12|13]`.
If you choose to print this pdf double-sided in landscape format, you get four pages `[[8|1]-[2|7]],[[3|6]-[4|5]],[[9|16]-[10|15]],[[11|14]-[12|13]]` (on the first page, you will have `[8|1]` on the front and `[2|7]` on the back). If you put together the first two pages and the last two pages and fold each of them in the middle, you have two [signatures](https://en.wikipedia.org/wiki/Section_(bookbinding)). 
If you put the signatures on a deck, you can read the pages in the correct order. 
# Usage 
Run
```
docker build . -t bookbinder
```
Run 
```
docker run -i -v $(pwd)/test:/mnt/bookbinder bookbinder /mnt/bookbinder
```
to bind all books in the directory `$(pwd)/test`.
