workflow "Run Stale!" {
  on = "repository_dispatch"
  resolves = ["probot/stale-action@master"]
}

action "probot/stale-action@master" {
  uses = "probot/stale-action@master"
  secrets = ["GITHUB_TOKEN"]
}

workflow "On issue comments" {
  on = "issue_comment"
  resolves = ["probot/stale-action@master - issue_comment"]
}

action "probot/stale-action@master - issue_comment" {
  uses = "probot/stale-action@master"
  secrets = ["GITHUB_TOKEN"]
}

workflow "On pull request" {
  on = "pull_request"
  resolves = ["probot/stale-action@master - PR"]
}

action "probot/stale-action@master - PR" {
  uses = "probot/stale-action@master"
  secrets = ["GITHUB_TOKEN"]
}