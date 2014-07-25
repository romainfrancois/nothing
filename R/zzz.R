.onAttach <- function(libname, pkgname) {
  # Don't unload self when being installed - that will result in install error
  if (Sys.getenv("R_INSTALL_PKG") != "nothing") {
    try( unloadNamespace("nothing"), silent = TRUE )
  }
}
   
.onLoad <- function(libname, pkgname){
    if (Sys.getenv("R_INSTALL_PKG") != "nothing") {
        pkgs <- setdiff(loadedNamespaces(), "base")  
        while (length(pkgs) > 0) {
          for (pkg in pkgs) {
            tryCatch(unloadNamespace(pkg), error = function (e) invisible())
          }
        
          pkgs <- setdiff(loadedNamespaces(), "base")
        }
    }
}

