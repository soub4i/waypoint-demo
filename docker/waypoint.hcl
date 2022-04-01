project = "my-project"

labels = { "platform" = "docker" }

app "web" {
    build {
        use "docker" {}
    }
    deploy {
        use "docker" {}
    }
}
