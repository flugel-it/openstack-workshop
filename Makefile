
all: /usr/bin/ansible $(HOME)/.vimrc workstation

/usr/bin/ansible:
	sudo apt-get install software-properties-common
	sudo apt-add-repository -y ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible git

$(HOME)/.vim/bundle:
	mkdir -p $(HOME)/.vim/autoload
	mkdir -p $(HOME)/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/pearofducks/ansible-vim ~/.vim/bundle/ansible-vim
	git clone https://github.com/hashivim/vim-terraform.git ~/.vim/bundle/vim-terraform

$(HOME)/.vimrc: $(HOME)/.vim/bundle
	cp vimrc $(HOME)/.vimrc

workstation:
	sudo ansible-playbook -i 'localhost,' -s -c local ansible-wks/site.yml

