project="hello-world"


app "go-app" {
  build {
    use "pack" {
      disable_entrypoint = true
    }

    registry {
      use "docker" {
        image = "soubai/hello-go"
        tag   = "latest"
      }
  
    }
  }

  deploy {
    use "kubernetes" {
      replicas     = 1
      probe_path = "/"

    }
  }

  release {
    use "kubernetes" {

      node_port = 30001

    }
  }
}
