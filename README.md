# gitcraft
A minecraft server helper that uses git to share the files with your friends automatically.  
Git is perfect for keeping track of your world when multiple players want to host it.

Whenever you launch the server (with the proper launcher you can find here) it checks for updates in the world; in the same way when you stop playing, it uploads the new progress made in minecraft to git.

As the world files are huge (for git standard) they are stored using Git Large File Storage.


# How this works for users familiarized with git
Fork this repo.  
Clone your fork.  
If you alredy have a server, place its files inside server/  
If not;
* Download https://www.minecraft.net/en-us/download/server/ and put it in server/  
* If you alredy have a world, copy it as server/world

Launch the server with the launcher, it will download the last version of the world and run server.jar.  
When you are done with the cubes, close server.jar first, then the launcher will push the changes.


# How this works for users not familiarized with git
Sign up in github.com.  
Fork this repo; there is a button in the upper right corner of https://github.com/MikeMakes/gitcraft  
You will find this exact content in https://github.com/your_github_user/gitcraft

In windows:
 * Download & Install; https://gitforwindows.org/ and select "Use Git from the Windows Command Prompt" (leave any other option by default)
  * [Run this where you want your server files to be](/raw/master/gitcraft/windows_setup.bat)
 
 In gnu/linux and macOS;
  * msg me to write this ffs
  
Download https://www.minecraft.net/en-us/download/server/ and put it in server/  
Launch the server with the launcher, it will download the last version of the world and run server.jar.  
When you are done with the cubes, close server.jar first, then the launcher will push the changes and close itself.  
