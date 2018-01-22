cd ~/rossedlin.com/
echo "Install -> laravel-dev.rossedlin.com"

#Cleanup
rm -R -f old_laravel-dev
rm -R -f www.rossedlin.com-laravel

#Git
git clone -b dev https://bitbucket.org/cuttingweb/www.rossedlin.com-laravel

if [ -d ~/rossedlin.com/www.rossedlin.com-laravel ]; then

    #Composer
    cd ~/rossedlin.com/www.rossedlin.com-laravel
    composer install
    composer update

    #Environment File
    cd ~/rossedlin.com/
    cp ~/rossedlin.com/laravel-dev/.env ~/rossedlin.com/www.rossedlin.com-laravel/.env

    #Folders
    cd ~/rossedlin.com/
    mv laravel-dev old_laravel-dev
    mv www.rossedlin.com-laravel laravel-dev

    #Public
    cd ~/rossedlin.com/laravel-dev
    cp ./build/dev/robots.txt ./public/robots.txt
    cp ./build/dev/.htaccess ./public/.htaccess

    #Permissions
    chmod 755 -R ~/rossedlin.com/laravel-dev

fi