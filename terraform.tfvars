data = [
  {
    pitambardashboard = "pitambar-dash-1",
    permissions       = "public_read_only",
    pagename          = "first dashboard",
    widtitle1         = "Requesting per minute",
    nrql1             = "FROM Public_APICall SELECT filter(percentile(duration, 75),  WHERE api ='amazonservices.com')",
    widtitle2         = "total-pageviews",
    nrql2             = "FROM InfrastructureEvent SELECT rate(count(*), 1 week )",
    widtitle3         = "Total-pageviews-average",
    nrql3             = "FROM Public_APICall SELECT filter(percentile(duration, 98),  WHERE api ='amazonservices.com' )"
  },

  {
    pitambardashboard = "pitambar-dash-2",
    permissions       = "public_read_only",
    pagename          = "second dashboard",
    widtitle1         = "Requesting per minute",
    nrql1             = "FROM Public_APICall SELECT filter(count(http.method), WHERE http.method='POST')",
    widtitle2         = "total-pageviews",
    nrql2             = "FROM Public_APICall SELECT filter(count(http.method), WHERE http.method='DELETE')",
    widtitle3         = "Total-pageviews-average",
    nrql3             = "FROM Public_APICall SELECT filter(percentile(duration, 80),  WHERE api ='github.com')"
  },

  {
    pitambardashboard = "pitambar-dash-3",
    permissions       = "public_read_only",
    pagename          = "third dashboard",
    widtitle1         = "Requesting per minute",
    nrql1             = "FROM Public_APICall SELECT filter(count(http.method), WHERE http.method='POST')",
    widtitle2         = "total-pageviews",
    nrql2             = "FROM Public_APICall SELECT filter(percentile(duration, 80),  WHERE api ='github.com')",
    widtitle3         = "Total-pageviews-average",
    nrql3             = "FROM Public_APICall SELECT filter(percentile(duration, 98),  WHERE api ='amazonservices.com' )",
  },

  {
    pitambardashboard = "pitambar-dash-4",
    permissions       = "public_read_only",
    pagename          = "forth dashboard",
    widtitle1         = "Requesting per minute",
    nrql1             = "FROM Public_APICall SELECT filter(percentile(duration, 98),  WHERE api ='amazonaws.com' )",
    widtitle2         = "total-pageviews",
    nrql2             = "FROM InfrastructureEvent SELECT rate(count(*), 1 week )",
    widtitle3         = "Total-pageviews-average",
    nrql3             = "FROM Public_APICall SELECT filter(percentile(duration, 55),  WHERE api ='facebook.com')",
  }
]