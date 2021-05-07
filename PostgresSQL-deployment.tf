resource "kubernetes_deployment" "postgres" {
  metadata {
    name = "scalablepostgres"
    labels = {
      App = "scalablepostgres"
    }
  }

  spec {
    replicas = 3 
    selector {
      match_labels = {
        App = "scalablepostgres"
      }
    }
    template {
      metadata {
        labels = {
          App = "scalablepostgres"
        }
      }
      spec {
        container {
          image = "postgres:latest"
          name  = "postgres"

          port {
            container_port = 5432
          }
          env_from {
            config_map_ref {
              name = "postgresconfigmap"
            }
          }
          volume_mount {
            mount_path = "/var/lib/postgresql/data"
            name = "postgresdisk01"
          }
        }
        volume {
          name = "postgresdisk01"
          empty_dir {
            medium = ""
          }
        }
      }
    }
  }
}
