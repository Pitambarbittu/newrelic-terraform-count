resource "newrelic_one_dashboard" "pitambardash" {
  count       = length(var.data)
  name        = lookup(var.data[count.index], "pitambardashboard")
  permissions = lookup(var.data[count.index], "permissions")

  page {
    name = lookup(var.data[count.index], "pagename")

    widget_billboard {
      title  = lookup(var.data[count.index], "widtitle1")
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = lookup(var.data[count.index], "nrql1")
      }
    }

    widget_bar {
      title  = lookup(var.data[count.index], "widtitle2")
      row    = 1
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 3995249
        query      = lookup(var.data[count.index], "nrql2")
      }

    }

    widget_bar {
      title  = lookup(var.data[count.index], "widtitle3")
      row    = 4
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = 3995249
        query      = lookup(var.data[count.index], "nrql3")
      }


    }
  }
}
