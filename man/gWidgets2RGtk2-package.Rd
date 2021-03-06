% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gWidgets2RGtk2-package.R, R/GComponent.R,
%   R/GContainer.R, R/GWidget.R, R/gbutton.R, R/gtable.R, R/gdf.R, R/glabel.R,
%   R/gprogressbar.R, R/gtimer.R
\docType{package}
\name{gWidgets2RGtk2-package}
\alias{gWidgets2RGtk2-package}
\alias{GComponent-class}
\alias{GComponent}
\alias{GContainer-class}
\alias{GContainer}
\alias{GWidget-class}
\alias{GWidget}
\alias{GWidgetWithItems-class}
\alias{GWidgetWithItems}
\alias{GButton-class}
\alias{GButton}
\alias{GTable-class}
\alias{GTable}
\alias{GDf-class}
\alias{GDf}
\alias{GLabel-class}
\alias{GLabel}
\alias{GProgressBar-class}
\alias{GProgressBar}
\alias{GTimer-class}
\alias{GTimer}
\title{gWidgets2Rtk2}
\arguments{
\item{...}{passed to constructor}
}
\description{
The \pkg{gWidgets2} package provides a programming interface for
making graphical user interfaces within R. The package is a
rewrite of the \pkg{gWidgets} package, introducing a few external
changes but a significant number of internal ones. The package
relies on one of several underlying toolkit packages providing
access to the graphical libraries. This package provides the
implementation to interface with the underlying \pkg{RGtk2}
package.

GComponent is a parent class for both GContainer and GWidget and
inherits its primary interface from
gWidgets2::BasicToolkitInterface.

This GTable class for RGtk2 implements a few additional reference
methods: \code{hide_names} to hide the header names;
\code{remove_popup_menu} to remove the popup menu;
\code{add_popup} to add a popup menu

Passing in a value \code{freeze_attributes = TRUE} will make it so
there are no menu items to resize frame, change variable types,
relabel factors, .... Values of \code{"row"} or \code{"column"}
will remove popup menus just for the row or columns.

The label class for RGtk2 has the extra method
\code{set_angle} to set the angle for the
text. A value of 90 will rotate ccw to read bottom to top

The main reference methods \code{GTimer} are \code{start_timer} and \code{stop_timer}
}
\section{Methods}{

\describe{
\item{\code{add_drag_motion(handler, action = NULL, ...)}}{Called when motion over widget occurs}

\item{\code{add_to_parent(parent, child, expand = NULL, fill = NULL, anchor = NULL,
  ...)}}{Add a child to parent if it is ia container and non null. Dispatches to add_child method of parent}

\item{\code{get_enabled()}}{is widget sensistive to user input}

\item{\code{set_enabled(value, ...)}}{specify with logical if widget is sensistive to user input}

\item{\code{set_rgtk2_font(obj, value)}}{Set font on a gtkWidget instance}

\item{\code{set_size(value, ...)}}{Set widget size (size request), value=c(width=-1, height=-1)}

\item{\code{child_bookkeeping(child)}}{Update parent property of child and children property of parent container}

\item{\code{set_child_align(child, alt_child, anchor)}}{Set child alignment, if a GtkMisc or GtkAlignment object}

\item{\code{set_child_fill(child, fill, horizontal = TRUE)}}{Fill can be NULL, TRUE, FALSE, '', 'both', 'x', 'y'...}

\item{\code{connect_to_toolkit_signal(signal, decorator, emitter = .self$handler_widget())}}{Connect signal of toolkit to notify observer}

\item{\code{get_value(drop = NULL, ...)}}{Get main value of widget. From `svalue` when index = FALSE or NULL}

\item{\code{remove_border()}}{Remove border by setting relief to none}

\item{\code{set_value(value, ..., drop = NULL)}}{for `svalue<-` when index = FALSE or NULL}

\item{\code{add_popup(menu_fun = NULL)}}{Add a popup menu to the columns. Function should generate list of actions, ...}

\item{\code{clear_columns()}}{Clear out old treeview columns in preparation of new}

\item{\code{default_popup_menu(col_index)}}{Provide default popup menu (passed to gmenu(..., popup=TRUE))}

\item{\code{get_index(drop = NULL, ...)}}{svalue; index=TRUE}

\item{\code{get_length(...)}}{Get length of object. Needed for sapply.}

\item{\code{get_model()}}{Helper: get rGtkDataFrame model, which is filtered}

\item{\code{get_selected()}}{Get selected indices or numeric(0)}

\item{\code{get_valid_columns()}}{Helper: get column indices less those for icons, tooltips, visible}

\item{\code{get_value(drop = NULL, ...)}}{Get main value of widget. From `svalue` when index = FALSE or NULL}

\item{\code{get_view_columns()}}{Helper: get non-icon columns to iterate over}

\item{\code{hide_names(value)}}{adjust visibility of header}

\item{\code{make_columns()}}{Make new columns, watching out for icons, tooltips, visible}

\item{\code{make_icon_column()}}{Make column for icons}

\item{\code{not_these()}}{Helper: Remove these indices due to icon_col, ...}

\item{\code{remove_popup_menu()}}{remove popup menu from column headers}

\item{\code{set_focus(value)}}{If we can focus, do so, then raise}

\item{\code{set_selected(ind)}}{Set selected rows by index}

\item{\code{set_selection_mode(mode = c("none", "single", "browse", "multiple",
  "extended"))}}{Helper: Set the selection mode}

\item{\code{set_size(value, ...)}}{Set widget size (size request), value=c(width=-1, height=-1)}

\item{\code{set_value(value, ..., drop = NULL)}}{for `svalue<-` when index = FALSE or NULL}

\item{\code{get_value(drop = NULL, ...)}}{Get main value of widget. From `svalue` when index = FALSE or NULL}

\item{\code{set_angle(angle)}}{Rotate text by angle degrees ccw}

\item{\code{set_value(value, ..., drop = NULL)}}{for `svalue<-` when index = FALSE or NULL}

\item{\code{get_value(drop = NULL, ...)}}{Get main value of widget. From `svalue` when index = FALSE or NULL}

\item{\code{set_value(value, ..., drop = NULL)}}{for `svalue<-` when index = FALSE or NULL}

\item{\code{set_interval(ms)}}{Set the interval. Need to stop and start active timer to implement.}

\item{\code{start_timer()}}{Start the timer}

\item{\code{stop_timer()}}{stop the timer}
}}

\author{
John Verzani \email{jverzani@gmail.com}

Maintainer: John Verzani \email{jverzani@gmail.com}
}
\keyword{package}
