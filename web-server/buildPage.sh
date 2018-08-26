#!/bin/sh
while :
	do
		echo "<!DOCTYPE html>" > /webserver/index.html
		echo "<html>" >> /webserver/index.html
		echo "<body>" >> /webserver/index.html
		echo "<h1>" >> /webserver/index.html
		echo "<center>Geonosis<center>" >> /webserver/index.html
		echo "</h1>" >> /webserver/index.html
		echo "<p1>" >> /webserver/index.html
		echo "<center>Push scripts to the admin repo to display their output here</center>" >> /webserver/index.html
		echo "</p>" >> /webserver/index.html

		for file in `ls /scripts/*.sh`
		  do
		  	chmod +x $file
		    echo "<div>" >> /webserver/index.html
		    echo "<b>>$file</b>" >> /webserver/index.html
		    echo "</div>" >> /webserver/index.html

		    echo "<div>" >> /webserver/index.html
		    $file >> /webserver/index.html
		    echo "</div>" >> /webserver/index.html
		    echo "<br></br>" >> /webserver/index.html
		  done

		echo "</body>" >> /webserver/index.html
		echo "</html>" >> /webserver/index.html
		sleep 5 #need time or page doesn't load all the text
	done