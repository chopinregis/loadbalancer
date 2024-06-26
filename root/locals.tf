locals{
  linux_app=[for f in fileset("${path.module}/${var.regisconfigs}", "[^_]*.yaml") : yamldecode(file("${path.module}/${var.regisconfigs}/${f}"))]

  linux_app_list = flatten([
    for app in local.linux_app : [
      for linuxapps in try(app.listoflinuxapp, []) :{
        name=linuxapps.name
        os_type=linuxapps.os_type
        sku_name=linuxapps.sku_name
      }
    ]
])
}
