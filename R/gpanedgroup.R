##' @include GContainer.R
NULL

##' Toolkit constructor
##'
##' @export
##' @rdname gWidgets2RGtk2-undocumented
##' @method .gpanedgroup guiWidgetsToolkitRGtk2
## @export .gpanedgroup guiWidgetsToolkitRGtk2
.gpanedgroup.guiWidgetsToolkitRGtk2 <-  function(toolkit,
                                                horizontal = TRUE, 
                                                container = NULL, ... ) {
  GPanedGroup$new(toolkit,
           horizontal=horizontal, 
           container = container, ...)
}


## main class
GPanedGroup <- setRefClass("GPanedGroup",
                            contains="GContainer",
                           fields=list(
                             horizontal="logical"
                             ),
                            methods=list(
                              initialize=function(toolkit=NULL,
                                horizontal=TRUE,
                                container=NULL, ...) {
                                if(horizontal)
                                  widget <<- gtkHPanedNew()
                                else
                                  widget <<- gtkVPanedNew()


                                initFields(block=widget,
                                           horizontal=horizontal
                                           )
                                add_to_parent(container, .self, ...)
                                callSuper(toolkit)
                              },
                              get_value = function(...) {
                                "get sash position"
                                pos <- widget$getPosition()
                                sz <- get_size()

                                if(horizontal)
                                  pos/sz[1]
                                else
                                  pos/sz[2]
                              }, 
                              set_value = function(value, ...) {
                                "Set sash position"
                                if(is.integer(value)) {
                                  pos <- value
                                } else {
                                  sz <- get_size()

                                  if(horizontal)
                                    pos <- as.integer(value*sz[1])
                                  else
                                    pos <- as.integer(value*sz[2])
                                }
                                widget$setPosition(pos)
                              },
                              get_items = function(i, j, ..., drop=TRUE) {
                                children[[i, drop=drop]]
                              },
                              get_length = function() {
                                length(children)
                              },
                              add_child=function(child, expand=NULL, fill=NULL, anchor=NULL, resize=TRUE, shrink=FALSE) {
                                "Add one of two possible children"
                                n <- get_length()
                                if(n >= 2) {
                                  message("Already have two children. Remove one?")
                                  return()
                                }
                                
                                if(n == 0) {
                                  widget$pack1(getBlock(child), resize=resize, shrink=shrink)
                                } else if(n == 1) {
                                  widget$pack2(getBlock(child), resize, shrink)
                                }

                                child_bookkeeping(child)
                              },
                              remove_child=function(child) {
                                "remove child from paned container"
                                children <<- Filter(function(x) !identical(x, child), children)
                                child$set_parent(NULL)
                                widget$remove(getBlock(child))
                              }
                              ))

