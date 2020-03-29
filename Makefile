serve:
	cd ./hugo; hugo -t kiss --themesDir ./themes/ server;

deploy:
	cd hugo; hugo -t kiss;
	rm -fr ./docs/* && mv ./hugo/public/* ./docs/
	cd ./docs && git add --all && git commit -m "update" && git push origin master
