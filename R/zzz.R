.onLoad <- function(libname, pkgname){
    
    repeat {
        pkgs <- grep( "package:", search(), value = TRUE )
        if( length(pkgs) == 1L ) break
        pkgs <- sub( "package:", "", setdiff( pkgs, "package:base" ) )
        for( pkg in pkgs ){
            try( unloadNamespace(pkg), silent = TRUE )    
        }
    }
}

