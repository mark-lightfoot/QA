.PHONY= add commit push checkuserisjenkins
message = "adding some things my friends"
file = "."
branch = "master"
userna = ${shell whoami}

checkuserisjenkins:
ifeq (${userna},jenkins)
        @echo "you are the right user!"
else
        ${error "You arent jenkins ya cheeky shit!"}
endif

add: 
	@git add ${file}

commit: add
	@git commit -m '${message}'

push: commit
	@git push origin "${branch}"
