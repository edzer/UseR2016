# Handling and analyzing spatial, spatiotemporal and movement data

[Edzer Pebesma](https://github.com/edzer/sfr/blob/master/spatial-tutorial.Rmd),
Institute for Geoinformatics, University of Muenster,
edzer.pebesma@uni-muenster.de

## Background 

In recent years, trajectory data (sequences of space-time fixes for
e.g. persons, cars, or animals) have become abundant, and a source
for research and valorisation. This tutorial discusses inference
opportunities arising in different domains, and demonstrates how
such data can be used in spatial statistical analysis methods,
(aggregation, regression modelling, interpolation, and density
estimation). Many R packages do not make explicit whether spatial
and/or temporal data refer to continuously varying phenomena
(fields), aggregations, or discrete objects/events. Case studies
that illustrate the difference between these will improve the
ability of participants to choose appropriate analysis methods.


## Overview of what will be covered

The tutorial will introduce users to the different types of spatial
data (points, lines, polygons, rasters) and demonstrate how they
are read into R. It will also explain how time series data can
be imported, handled and analyzed in R. Then, it will explain
the different types of spatiotemporal data and trajectory data,
and present ways of importing them and analyzing them.

## Outline of the tutorial

The goals of this tutorial are to make participants familiar with

1. basic R packages for handling spatial data (sp, rgdal, rgeos, raster)
2. basic R packages for time series data analysis (zoo, xts)
3. R packages for spatiotemporal analysis (spacetime, trajectories)
4. spatiotemporal fields (continuously varying phenomena), events, objects, and trajectories, and the meaningfulness of analysis methods on each of these
5. strong referencing in R, and how it allows the integration of different data types

Using a small number of use cases, following this sequence, the tutorial will illustrate how to

1. import spatial, temporal, and spatiotemporal data in R
2. map these data structures to and from matrix and data.frame objects
3. work with points, lines, polygons, and rasters
4. work with time series of each of these
5. work with space-time events, and moving objects
6. intersect various spacetime objects, e.g. for spatial and/or temporal selection or for spatial, temporal or spatiotemporal aggregation
7. represent higher concepts such as fields, objects, events, trajectories, and aggregations into the classes, and how to carry out meaningful analysis of these

and give users the opportunity to experiment with this material.

The tutorial consists of one-hour blocks, where 40-45 mins
lecturing/demonstration is followed by 15 mins breaks where
participants can try to replicate the analysis, work on their own
data, or start small-group discussions.

## Prerequisites attendees should have in order to benefit from the tutorial

Familiarity with using R is assumed.  Some prior familiarity
with handling spatial and/or temporal data will be of benefit,
but not required.

## Pre-tutorial preparations attendees should make 

Attendees should install the following software on their laptop:

* [R](https://cran.r-project.org/) (current release), possibly with [R-studio](http://www.rstudio.com/)
* CRAN packages [sp](http://cran.r-project.org/package=sp) [rgdal](http://cran.r-project.org/package=rgdal) [rgeos](http://cran.r-project.org/package=rgeos) [raster](http://cran.r-project.org/package=raster) [zoo](http://cran.r-project.org/package=zoo) [xts](http://cran.r-project.org/package=xts) [spacetime](http://cran.r-project.org/package=spacetime) [trajectories](http://cran.r-project.org/package=trajectories)

All tutorial material will be published on
[github](https://github.com/edzer/UseR2016), and include executable R
/ R-markdown scripts with example data.  Participants will be pointed
to further resources (R packages, CRAN task views, software papers,
scientific literature).
