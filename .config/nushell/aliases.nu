
alias task = go-task

# personal aliases
alias ll = ls -al

# kubectl
alias k = kubectl
alias kl = kubectl logs
alias kexec = kubectl exec -it
alias kgp = kubectl get pods
alias kgd = kubectl get deployments
alias kgns = kubectl get namespaces
alias kcfgns = kubectl config set-context --current --namespaces


# docker 
alias dps = docker ps
alias dc = docker compose
alias dcu = docker compose up -d
alias dcd = docker compose down
alias dcr = docker compose run
alias dl = docker logs -f
alias dcexec = docker compose exec -it

# github
alias gca! = git commit -v -a --amend
alias gs = git status

# cloud-sql-proxy
alias dbfp = cloud-sql-proxy censys-internal:us-central1:fred-production -p 55436
alias dbr = cloud-sql-proxy censys-internal:us-central1:radagast-staging -p 55432
alias dbrp = cloud-sql-proxy censys-fred:us-central1:radagast-production -p 55433
alias dbrprod = cloud-sql-proxy censys-fred:us-central1:radagast-production -p 55433
alias dbs = cloud-sql-proxy censys-internal:us-central1:fred-staging -p 55432

# tailscale
alias tss = tailscale status
