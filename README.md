nothing
=======

This is a package about nothing. 

![](http://media.tumblr.com/tumblr_lkw5e6ANdS1qf7q1s.png)

The idea is that when you do `require(nothing)` you express that you don't need
anything, and therefore `nothing` assumes you are fine just using the 
`base` package, so it detaches all other packages. 

```
> loadedNamespaces()
[1] "base"      "datasets"  "grDevices" "graphics"  "methods"   "stats"
[7] "utils"
> 
> require(nothing, quietly = TRUE)
> 
> loadedNamespaces()
[1] "base"
```

I agree, this is completely useless. 
