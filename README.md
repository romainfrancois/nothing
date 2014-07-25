nothing
=======

This is a package about nothing. 

![](http://media.tumblr.com/tumblr_lkw5e6ANdS1qf7q1s.png)

The idea is that when you do `require(nothing)` you express that you don't need
anything, and therefore `nothing` assumes you are fine just using the 
`base` package, so it detaches all other packages. 

```
> search()
 [1] ".GlobalEnv"        "package:stats"     "package:graphics"
 [4] "package:grDevices" "package:utils"     "package:datasets"
 [7] "package:devtools"  "package:methods"   "Autoloads"
[10] "package:base"
> require(nothing)
Loading required package: nothing
> search()
[1] ".GlobalEnv"      "package:nothing" "Autoloads"       "package:base"
```

I agree, this is completely useless. 
