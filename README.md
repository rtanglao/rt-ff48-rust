# rt-ff48-rust

## November 22, 2016

1. remove blank lines: ```gsed -i '/^$/d' commits.csv```

## November 21, 2016
after Ralph's pull request 

1. ```sh get_commits_with_lines_changed.sh``` #creates file commits.csv

## September 16, 2016
Change addDayOfTheyYear.rb  to handle the wraparound from 2015 to 2016

1. ```./addDayOfTheyYear.rb mp4parse-commits-without-commit-reason.csv >add365-for-2015-rust-mp4-dayofyear-unixtime,-person.csv```
1. ```sort -n add365-for-2015-rust-mp4-dayofyear-unixtime,-person.csv >add365-sorted-rust-mp4-dayofyear-unixtime-person.csv```
1. ```Rscript add365-plot-sortedcommit-by-day-of-year.R```

### Output

<a data-flickr-embed="true"  href="https://www.flickr.com/photos/roland/29645684091/in/dateposted-ff/" title="2015 and 2016 firefox 48 rust mp4 parser commits with day of year bug fixed! add365-rust-mp4-ff48-sorted-commits-by-dayofyear"><img src="https://c4.staticflickr.com/9/8080/29645684091_eb252c01bb_n.jpg" width="320" height="320" alt="2015 and 2016 firefox 48 rust mp4 parser commits with day of year bug fixed! add365-rust-mp4-ff48-sorted-commits-by-dayofyear"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>

## August 18, 2016
1. top1 125, top2 65, one each from coolperson1, coolperson2, coolperson2, coolperson3
1. ```cut -d, -f1-3 mp4parse-commits.csv >mp4parse-commits-without-commit-reason.csv``` # cut out column 4, retain 1-3
1. ```Rscript ff48-rust-mp4parser-commits-square-piechart.R```
1. ```./addDayOfTheyYear.rb mp4parse-commits-without-commit-reason.csv >rust-mp4-dayofyear-unixtime,-person.csv```
1. ```sort -n rust-mp4-dayofyear-unixtime,-person.csv > sorted-rust-mp4-dayofyear-unixtime-person.csv```
1. ```Rscript plot-sorted-commits-by-dayofyear.R```
<br />Output:<br />
<a data-flickr-embed="true"  href="https://www.flickr.com/photos/roland/29080751065/in/dateposted-ff/" title="count of Firefox rust mp4 parser git commits sorted by day of year (1-365) rust-mp4-ff48-sorted-commits-by-dayofyear"><img src="https://c2.staticflickr.com/9/8210/29080751065_e115217ae1.jpg" width="500" height="500" alt="count of Firefox rust mp4 parser git commits sorted by day of year (1-365) rust-mp4-ff48-sorted-commits-by-dayofyear"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>


## August 17, 2016
1. ```gem install octokit; gem install netrc```
1. create ~/.netrc
