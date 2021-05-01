Automate-Me
------------

Collection of scripts or help functions that assist in the automation of system navigation, organization, operations, development, and whatever else I can think of.

As of right now, I currently have .bashrc functions. It's by no means a full fledged .bashrc setup. I merely found myself writing these to automate my development and navigational processes and I decided to throw them on github.

1) .bashrc functions
-----

- cd
  - This merely binds cd and ls, so that the dir is output after you cd. Really simple.
    - Usage: ``` cd ```
    ```
      ymski@dev:~$ cd projects/
      automate-me
    ```
  
- fig
  - Uses find and grep to search for a string in a specified directory.
    - Usage: ``` fig <directory> <string> ```
    - Example: Looking for the function "publish" in the project ZeroNet
    `
      ymski@dev:~/projects/ZeroNet/src$ fig $PWD publish
      /home/ymski/projects/ZeroNet/src/Site/Site.pyc
      /home/ymski/projects/ZeroNet/src/Site/Site.py
      /home/ymski/projects/ZeroNet/src/main.py
      /home/ymski/projects/ZeroNet/src/main.pyc
      /home/ymski/projects/ZeroNet/src/File/FileRequest.pyc
      /home/ymski/projects/ZeroNet/src/File/FileRequest.py
      /home/ymski/projects/ZeroNet/src/Config.pyc
      /home/ymski/projects/ZeroNet/src/lib/geventwebsocket/protocols/wamp.py
      /home/ymski/projects/ZeroNet/src/Ui/UiWebsocket.pyc
      /home/ymski/projects/ZeroNet/src/Ui/UiWebsocket.py
      /home/ymski/projects/ZeroNet/src/Config.py
    `
  
- hig
  - Simple function to pipe grep to the history command.
    - Usage: ``` hig <string> ```
    - Example: Looking for runserver commands in our history
    ```
      ymski@dev:~$ hig runserver
      191  python manage.py runserver
      192  python manage.py runserver xxx.xxx.xxx.xxx:8000
      489  ./manage.py runserver 127.0.0.1:9001
      496  ./manage.py runserver 127.0.0.1:9001
      565  ./manage.py runserver xxx.xxx.xxx.xxx:9001
      569  ./manage.py runserver xxx.xxx.xxx.xxx:9001
      594  python zeronet.py runserver xxx.xxx.xxx.xxx:43110
    ```
