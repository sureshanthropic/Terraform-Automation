# Repository instructions

## Terraform change workflow
- Whenever Terraform-related files change in this repository, treat it as a deployment-ready change and ensure it is committed and pushed to git.
- Watch for changes in files matching:
  - `**/*.tf`
  - `**/terraform.tfvars*`
  - `**/.terraform.lock.hcl`
- After making Terraform changes, the agent should:
  1. Review the changed files.
  2. Stage the relevant changes with `git add`.
  3. Create a clear commit message describing the Terraform update.
  4. Confirm with user and Push the changes to the current branch remote.
- Only skip the push step if the user explicitly requests not to, or if Git credentials/remote access are unavailable.
