project = "nginx-project"


app "web" {
  build {
    use "docker" {
    }
  }

  deploy {
    use "docker" {
    }
  }
}