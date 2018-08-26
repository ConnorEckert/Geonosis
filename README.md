 # Geonosis
 Making things for the Separatists since 22 BBY
 
 ### Project Prompt
 
 Using a containerization or virtualization tool, create an environment that contains a git server
and a web server. The git server should have a user “admin” with a repo “admin.” Script files will
be pushed to this repo. When a user accesses the web server, it should run the scripts in
admin/admin and display the results as the root webpage.
Example workflow:
“ps aux” ? ps.sh ? git push ? web server runs ps.sh and displays at localhost:443

- Serve all web traffic over SSL using a self-signed cert.
- Web server should be served over 443, git UI (if there is one) over 4443, and git SSH
over 22
- Set any passwords to “empiredidnothingwrong”
- Submit via a git repo all configuration, scripts, etc. that are required to stand up the
environment.
- Include a README in the repo that shows exactly how to use your solution
- Everything you submit must be scripted - binaries or pre-made containers/VMs will not
be accepted
- You may use existing 3rd party projects for inspiration / example. However, we will not
accept wholesale copying without customization or work done to meet the problem
criteria. If you choose to start from a kitchen sink solution and pare down, you must
remove anything that is not needed to meet problem criteria.


##
### Dependencies
- git
- docker
- docker-compose


##
### Use
1. Clone from this repository with 
```
git clone https://github.com/ConnorEckert/Geonosis.git
```
2. Move into the new folder and run 
```
./startGeonosis.sh
```

3. Move to the newly created admin folder
4. Create your script, ensuring it has a .sh file extension
5. Push to the git server with:
	```
    git add .
    git commit -m "your message here"
    git push --set-upstream origin master
    (subsequent pushes dont need to set-upstream again)
    ```
6. To veiw the output of your script browse to 
```
https://localhost
```

7. You can ssh into the git server container with 
```
ssh admin@localhost
```
8. To tear down the containers and repos, simply run 
```
./stopGeonosis
```

##
### note
In files that include code I pulled from the internet, I have put the URL of the source as a comment at the bottom of the file