# DD2525 Project by Pooya Rayat and Roni Henareh

**PREREQUISITES FOR SERVERS TO WORK**
You will need to modify your hosts configurations on your machine.
Step-by-Step Instructions to Modify /etc/hosts:

1: Open /etc/hosts file for editing:
On Unix-based systems like Linux or macOS, use a text editor with superuser privileges. For example:

`sudo nano /etc/hosts`

On Windows, you'll need to open Notepad as an administrator and navigate to:

`C:\Windows\System32\drivers\etc\hosts`

2: Add the following lines to the hosts file:
`127.0.0.1 attacker.local`
`127.0.0.1 victim.local`
These lines tell your machine to resolve attacker.local and victim.local to 127.0.0.1, which is your local machine’s IP address. This allows you to use http://attacker.local and http://victim.local in your browser to access the Docker containers.

3: Save and Exit:
On Linux/macOS, press Ctrl+O to write the changes, then Ctrl+X to exit.
On Windows, save and close Notepad.


**TO BUILD AND RUN THE CONTAINERS (SERVERS), YOU HAVE TWO OPTIONS.**

***FIRST OPTION***
1. Navigate to your project directory (where docker-compose.yml is located).

2. Build the Docker Containers:
Build the containers for the attacker and victim services by running:

`docker-compose build`

3. Run the Containers:
Start the containers in detached mode using:

`docker-compose up -d`

4. Check the Status of the Containers:
Verify that the containers are running correctly:

`docker ps`
You should see both the victim and attacker containers running.

***SECOND OPTION***
1. Open git bash or something similar that allows you to run Unix-based commands.
2. Navigate to the scripts directory
3. Make the script executable, example with the file *setup.sh*:
`chmod +x setup.sh`
4. Run the script, example with *setup.sh*:
`./setup.sh


**INSTRUCTIONS FOR ACCESSING VICTIM OR ATTACKER SITE**
1. Access the Victim Site:
Open your browser and visit:

`http://victim.local:8080`

2. Access the Attacker Site:
Similarly, visit:

`http://attacker.local:8081`