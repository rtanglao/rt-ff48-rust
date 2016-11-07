#!/bin/bash

DIR=mp4parse-rust
test -d ${DIR} || git clone https://github.com/mozilla/${DIR}
pushd ${DIR}
git log --pretty=format:%h,%an,%at --shortstat | awk '/^$/ {if (x) print x"\n"; x=""; next} {x=(!x)?$0:x","$0}END{print x"\n"}' > ../commits.csv
popd
