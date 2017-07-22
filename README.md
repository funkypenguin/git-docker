[![](https://images.microbadger.com/badges/version/funkypenguin/git-docker.svg)](https://microbadger.com/images/funkypenguin/git-docker "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/funkypenguin/git-docker.svg)](https://microbadger.com/images/funkypenguin/git-docker "Get your own image badge on microbadger.com")
# git-docker

A Docker container for the git client and other system utilities provided by Alpine (e.g. BusyBox) and Curl. Useful for idempotent OS images (Hello, CentOS Atomic!) which don't include a git client.  Based on the work of https://github.com/channeladam/git-docker

## Examples

Run a regular git command with ```docker run -v $PWD:/var/data funkypenguin/git-docker git <command> <arguments>```

Or, setup an alias so that you can just run ```git <command> <arguments>```, by running:
```
alias git='docker run -v $PWD:/var/data funkypenguin/git-docker git' 
```

See an example at https://github.com/funkypenguin/geeks-cookbook-recipies/blob/master/bash/gcb-aliases.sh
