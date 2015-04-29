#!/bin/bash
git pull
fold -s index.md | gpg2 --clearsign > index.asc
gpg2 --export --export-options=export-minimal --armor admin@herh.de > herhde.asc
git add index.md index.asc herhde.asc
git commit -S
