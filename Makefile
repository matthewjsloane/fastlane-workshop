RBENV_EXEC=rbenv exec bundle exec
FASTLANE=$(RBENV_EXEC) fastlane
GEM=$(RBENV_EXEC) gem
BUNDLE=rbenv exec bundle
POD=rbenv exec pod

install_dev:
	brew update
	brew install rbenv node
	rbenv install -s 2.3.1
	eval "$(rbenv init -)"
	hash -r
	make install

install:
	$(BUNDLE) install
	$(POD) install

lint:
	swiftlint

unit_test:
	$(FASTLANE) unit_test

ui_test:
	$(FASTLANE) ui_test

beta:
	$(FASTLANE) beta

submit:
	$(FASTLANE) submit

