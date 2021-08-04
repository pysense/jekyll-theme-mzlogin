@echo off

pushd %~dp0
set SSL_CERT_FILE=
bundle exec jekyll s
