# luzlogr
Lightweight logging utilities for R scripts.

[![Travis-CI Build Status](https://travis-ci.org/bpbond/luzlogr.svg?branch=master)](https://travis-ci.org/bpbond/luzlogr)

## Installing
To install this package:

1. Make sure you have `devtools` installed from CRAN and loaded.
2. `install_github("bpbond/luzlogr")`

Then:

```R
library(luzlogr)
help(package = 'luzlogr')
```

## Logging

Three functions - `openlog()`, `printlog()`, `closelog()` - provide logging of script output. They provide features including priority levels for logs and messages; optionally capturing all output (via `sink`); switching between logs; and logging to a text file or arbitrary [connection](https://stat.ethz.ch/R-manual/R-devel/library/base/html/connections.html). For example:
```R
openlog("test.log")
printlog("message")
closelog()
```
The resulting log file `test.log` looks like this:
```
Thu Sep 17 08:46:59 2015  Opening ./test.log
Thu Sep 17 08:46:59 2015  message
Thu Sep 17 08:46:59 2015  Closing test.log  flags = 0
-------
R version 3.2.0 (2015-04-16)
Platform: x86_64-apple-darwin13.4.0 (64-bit)
Running under: OS X 10.10.5 (Yosemite)
```

For more details, see the vignette and documentation.
