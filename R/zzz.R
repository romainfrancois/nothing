.onAttach <- function(libname, pkgname) {
    # Don't unload self when being installed - that will result in install error
    suppressMessages(
        if (Sys.getenv("R_INSTALL_PKG") != "nothing") {
            try(unloadNamespace("nothing"), silent = TRUE)
        }
    )
}

.onLoad <- function(libname, pkgname) {

    ## revert stdout and close temporary connection
    on.exit({
        sink()
        close(con)
    })

    ## create a temporary connection where we can revert stdout
    stdout <- vector('character')
    con    <- textConnection('stdout', 'wr', local = TRUE)

    ## suppress stdout
    sink(con)

    ## do actual stuff
    suppressMessages(
        if (Sys.getenv("R_INSTALL_PKG") != "nothing") {
            repeat{
                pkgs <- setdiff(loadedNamespaces(), "base")
                if (!length(pkgs)) break
                for (pkg in pkgs) {
                    try(unloadNamespace(pkg), silent = TRUE)
                }
            }
        }
    )

}
