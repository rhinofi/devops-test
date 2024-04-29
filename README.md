1. Map services configs from `services` dir to `kubernetes_ingress` spec in `terraform/main.tf`


2. Write a script which given:
  - a json file containing k8s List object with multiple resource,
  - a directory path

  writes each resource from the list into a seperate json file in given directory, with file names based on `metadata.name` and `kind` (for example: `db.Pod.json`).
