BACKUP_DIR=HomeDirBackup_$$(date +%Y-%m-%d_%H-%M)

.PHONY:help
help:
	@echo "help                 :   Lists all Make recipes"
	@echo "install              :   Run install.sh"
	@echo "backup_UserHomeConfig:   Backup original bash,zsh config files into current folder"

.PHONY:install
install:
	@./install.sh

.PHONY:backup_UserHomeConfig
backup_UserHomeConfig:
	@echo "Backup User Home configs that will be impacted by script in this repo i.e zshrc zprofile zprompt bashrc bash_profile bash_prompt aliases private"
	@-mkdir $(BACKUP_DIR)
	@-cp ~/.zshrc ~/.zshrc.backup ~/.zshrc.pre-oh-my-zsh  $(BACKUP_DIR)
	@echo "Completed"

.PHONY: open_github_repo_url
open_github_repo_url:
	@open -a "Google Chrome" $$(git config --get remote.origin.url)

.PHONY: remove_upstream_remote
remove_upstream_remote:
	@git remote remove upstream