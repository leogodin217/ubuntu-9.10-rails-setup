# Install the basics
aptitude install -y vim build-essential g++ sqlite3 libsqlite3-dev libxslt-dev libxml2 libxml2-dev git gitk subversion libssl-dev libreadline6-dev
 
# Setup environment
# If you don't already have a decent .vimrc setup follow the instructions below.
# !!!Make sure to change "leo" (my username) to your username.   In vim type %s/leo/<username>/g. Then uncomment the next 3 lines to get a decent .vimrc setup. 
#cp /usr/share/vim/vim72/vimrc_example.vim ~leo/.vimrc
#chown leo:leo ~leo/.vimrc
#echo 'set tabstop=4' >> ~leo/.vimrc
 
# Setup ruby
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p376.tar.gz
gunzip ruby-1.9.1-p376.tar.gz
tar -xpf ruby-1.9.1-p376.tar
cd ruby-1.9.1-p376
./configure
make
make install
cd ..
 
# Setup ruby gems
gem update --system
gem install rails do_sqlite3 sqlite3-ruby rspec rspec-rails cucumber webrat rails_datamapper datamapper paperclip haml factory_girl factory_girl_extensions rails_datamapper recaptcha ssl_requirement
# For 1.2.3 error in rspec
gem install test-unit -v=1.2.3
