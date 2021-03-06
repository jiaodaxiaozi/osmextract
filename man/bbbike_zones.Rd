% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{bbbike_zones}
\alias{bbbike_zones}
\title{An sf object of geographical zones taken from bbbike.org}
\format{
An \code{sf} object with 235 rows and
11 columns:
\describe{
\item{name}{The, usually English, long-form name of the city.}
\item{last_modified}{When was it last modified?}
\item{type}{empty}
\item{pbf_size_size}{Size of the pbf file in bytes.}
\item{base_url}{The base URL for the city.}
\item{poly_url}{The \code{.poly} file location.}
\item{pbf}{Link to the latest \code{.osm.pbf} file for this region.}
\item{level}{An integer code always equal to 3 (since the bbbike
data represent non-hierarchical geographical zones). This is used only for
matching operations in case of spatial input. The oe_* functions will
select the geographical area closest to the input place with the highest
"level". See \link{geofabrik_zones} for an example of a hierarchical structure.}
\item{geometry}{The \code{sfc} for that geographical region, rectangular.}
}
}
\source{
\url{https://download.bbbike.org/osm/}
}
\usage{
bbbike_zones
}
\description{
Start bicycle routing for... everywhere!
}
\details{
An \code{sf} object containing the URLs, names and file_size of the OSM extracts.
}
\seealso{
Other provider's-database: 
\code{\link{geofabrik_zones}},
\code{\link{openstreetmap_fr_zones}}
}
\concept{provider's-database}
\keyword{datasets}
