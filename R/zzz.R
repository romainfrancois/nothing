.onAttach <- function(libname, pkgname) {
    # Don't unload self when being installed - that will result in install error
    if (Sys.getenv("R_INSTALL_PKG") != "nothing") {
        try( unloadNamespace("nothing"), silent = TRUE )
    }
}
   
.onLoad <- function(libname, pkgname){
    if (Sys.getenv("R_INSTALL_PKG") != "nothing") {
        repeat{
            pkgs <- setdiff(loadedNamespaces(), "base")
            if( !length(pkgs) ) break
            for (pkg in pkgs) {
                try(unloadNamespace(pkg), silent = TRUE)
            }
        }
    }
}

