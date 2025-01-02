# Code Citations

## License: Apache_2_0
https://github.com/GoogleCloudPlatform/cloud-foundation-fabric/tree/9ab3b49f69588715e13eedb5fcb4a1f4186cd711/blueprints/data-solutions/vertex-mlops/vertex.tf

```
sa"
}

resource "google_notebooks_runtime" "runtime" {
  for_each = { for k, v in var.notebooks : k => v if v.type == "MANAGED" }
  name     = "${var.prefix}-${each.key}"
  project
```

