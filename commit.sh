#!/bin/bash
git pull
fold -s _includes/index.md | gpg2 --clearsign > _includes/index.asc
gpg2 --export --export-options=export-minimal --armor admin@herh.de > herhde.asc
git add _includes/index.md _includes/index.asc herhde.asc
jekyll build && git commit -S
