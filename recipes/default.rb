#
# Cookbook:: workstation
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

vimrc_content = <<-EOS
syntax on
set number
set ruler
EOS

editor_config_content = <<-EOS
# EditorConfig is awesome: https://EditorConfig.org
# top-most EditorConfig file
root = true
# Unix-style newlines with a newline ending every file
[*]
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true
charset = utf-8
indent_style = space
indent_size = 4
EOS

git_config_content = <<-EOS
[push]
	default = simple
[alias]
	co = checkout
	di = diff
	pu = pull
	po = push origin
	pof = push --force-with-lease
	aa = !git add -N . && git add -p && git s
	s = !git status --short --branch && git diff --shortstat origin/master HEAD
	f = fetch --all
	cb = checkout -b
	ci = commit -m
	createpr = !git rev-parse HEAD && git reset --soft HEAD^ && git reset && git status
	commend = commit --amend --no-edit --date=now
	logp = !git log --graph --pretty=format:\"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\" --abbrev-commit
	b = !git branch -vv
[status]
	showUntrackedFiles = all
EOS

file "#{ENV['HOME']}/.vimrc" do
  content vimrc_content
end

file "#{ENV['HOME']}/dev/.editorconfig" do
  content editor_config_content
end

file "#{ENV['HOME']}/.gitconfig" do
  content git_config_content
end
