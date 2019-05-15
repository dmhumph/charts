workflow "Publish Helm chart" {
  on = "push"
  resolves = [
    "Package Helm Chart(s)",
  ]
}

action "Package Helm Chart(s)" {
  uses = "billimek/gh-actions/helm-gh-pages@master"
  secrets = ["GITHUB_TOKEN"]
  args = "[\".\",\"https://billimek.com/billimek-charts/\"]"
}
