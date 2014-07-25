nothing
=======

This is a package about nothing. 

![](http://media.tumblr.com/tumblr_lkw5e6ANdS1qf7q1s.png)

The idea is that when you do `require(nothing)` you express that you don't need
anything, and therefore `nothing` assumes you are fine just using the 
`base` package, so it detaches all other packages. 

```
> loadedNamespaces()
 [1] "base"      "datasets"  "devtools"  "digest"    "evaluate"  "graphics"
 [7] "grDevices" "httr"      "memoise"   "methods"   "parallel"  "RCurl"
[13] "stats"     "stringr"   "tools"     "utils"     "whisker"
>
> require(nothing)
Loading required package: nothing
unloading 'methods' package ...
Failed with error:  ‘invalid 'pos' argument’
>
> loadedNamespaces()
[1] "base"
```

I agree, this is completely useless. 
