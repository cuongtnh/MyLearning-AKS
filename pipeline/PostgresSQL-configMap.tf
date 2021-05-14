resource "kubernetes_config_map" "configMap" {
  metadata {
    name = "postgresconfigmap"
  }

  data = {
    POSTGRES_DB = "postgresdb"
    POSTGRES_USER = "postgresadmin"
    POSTGRES_PASSWORD = "admin123"
    }
}
