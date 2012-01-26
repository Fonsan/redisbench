To reproduce

    gem install github
    gh clone Fonsan/redisbench
    cd redisbench
    rvm get head
    rvm install 1.9.3,jruby
    rvm 1.9.3,jruby do gem install bundler
    rvm 1.9.3,jruby do bundle install
    sh -v run.sh