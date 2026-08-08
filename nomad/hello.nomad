job "hello-devops" {
  datacenters = ["dc1"]

  type = "service"

  group "hello" {
    count = 1

    task "hello" {
      driver = "docker"

      config {
  image      = "devops-hello:1.0"
  force_pull = false
}

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
