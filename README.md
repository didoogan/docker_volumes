# docker_volumes

This repo describes mechanism of using docker volumes on Ubuntu Linux. 

## Testing app
- [install](https://www.vagrantup.com/downloads) vagrant
- clone repo to your local machine
- in the repos root directory run the next code in your terminal:
    ```sh
    vagrant up --provision
    vagrant ssh
    sudo -i
    cd /vagrant/app
    docker compose up -d
    ```
- check `/tmp/dich`  directory - it should contains `test_file.txt` file which was created inside conainer and accessed in host VM by docker volume mechanism.
