.onLoad <- function(libname, pkgname){
    pkgs <- grep( "package:", search(), value = TRUE )
    pkgs <- setdiff( pkgs, "package:base" )
    sapply( pkgs, detach, character.only = TRUE )  
}

