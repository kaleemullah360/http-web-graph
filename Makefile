run:
	firefox ./index.html

clean:
	rm -f *.exe

clean-all: 
	rm -f *.o
	rm -f *.swp

view-project:
	firefox https://github.com/kaleemullah360/http-web-graph &

view-profile:
	firefox https://github.com/kaleemullah360 &

ifeq ($(c),)
 c = 'updates'
endif

push:
	git add -A
	git commit -m $(c)
	git push origin master

pull:
	git pull origin master