% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{geofabrik_zones}
\alias{geofabrik_zones}
\title{An sf object of geographical zones taken from Geofabrik}
\format{
An sf object with 430 rows and
15 columns:
\describe{
\item{id}{A unique identifier, contains letters, numbers and potentially
the characters "-" and "/".}
\item{name}{The, usually English, long-form name of the area.}
\item{parent}{The identifier of the next larger excerpts that contains this
one, if present.}
\item{level}{An integer code between 1 and 3. If level = 1 then the zone
corresponds to one of the continents plus the Russian Federation: Africa,
Antarctica, Asia, Australia and Oceania, Central America, Europe, North
America, Russian Federation and South America. If level = 2 then the zone
corresponds to the continent's subregions (i.e. the countries, such as
Italy, Great Britain, Spain, USA, Mexico, Belize, Morocco, Peru and so on).
There are also some exceptions that correspond to the Special Sub Regions
(according to their geofabrik definition), which are: South Africa
(includes Lesotho), Alps, Britain and Ireland, Germany + Austria +
Switzerland, US Midwest, US Northeast, US Pacific, US South, US West and
all US states. Finally, level = 3L correspond to the subregions of each
state (or each level 2 zone). For example the West Yorkshire, which is a
subregion of England, is a level 3 zone. This field is used only for
matching operations in case of spatial input. The oe_* functions will
select the geographical area closest to the input place with the highest
"level"}
\item{iso3166-1_alpha2}{A character vector of two-letter \href{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}{ISO3166-1 codes}. This will be set
on the smallest extract that still fully (or mostly) contains the entity
with that code; e.g. the code "DE" will be given for the Germany extract
and not for Europe even though Europe contains Germany. If an extract
covers several countries and no per-country extracts are available (e.g.
Israel and Palestine), then several ISO codes will be given (such as "PS
IL" for "Palestine and Israel").}
\item{iso3166_2}{A character vector of usually five-character \href{https://en.wikipedia.org/wiki/ISO_3166-2}{ISO3166-2 codes}. The same rules as above
apply. Some entities have both an \emph{iso3166-1} and \emph{iso3166-2} code. For
example, the \emph{iso3166_2} code of each US State is "US - " plus the code of
the state.}
\item{pbf}{Link to the latest \code{.osm.pbf} file for this region.}
\item{bz2}{Link to the latest \code{.osm.bz2} file for this region.}
\item{shp}{Link to the latest shape file for this region.}
\item{pbf.internal}{Link to the latest \code{.osm.pbf} file with user data for
this region (requires OSM login).}
\item{history}{Link to the latest history file for this region (requires
OSM login).}
\item{taginfo}{Link to the Geofabrik taginfo instance for this region.}
\item{updates}{Link to the updates directory (append /state.txt for status
file).}
\item{geometry}{The sfc for that geographical region. These are not the
country boundaries but a buffer around countries.}
\item{pbf_size_size}{Size of the \code{.pbf} file in bytes.}
}
}
\source{
\url{https://download.geofabrik.de/}
}
\usage{
geofabrik_zones
}
\description{
An \code{sf} object containing the URLs, names and file-sizes of the OSM
extracts stored at \url{https://download.geofabrik.de/}. You can read more
details about these data at the following link:
\url{https://download.geofabrik.de/technical.html}.
}
\seealso{
Other provider's-database: 
\code{\link{bbbike_zones}},
\code{\link{openstreetmap_fr_zones}}
}
\concept{provider's-database}
\keyword{datasets}
