deploy:
	cd hugo; hugo -t kiss;
	rm -fr ./docs/* && mv ./hugo/public/* ./docs/
	cd ./docs && git add --all && git commit -m "[add] Publishing to docs" && git push origin master
