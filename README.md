# To create your box simply launch

clone the project in your desired directory
<pre>git clone https://github.com/Gnirt/ossleads-vagrant-box.git</pre>
<pre>cd ossleads-vagrant-box</pre>

<pre>git clone "YOUR PROJECT" project</pre>
You must have installed [vagrant](http://docs.vagrantup.com/v2/installation/) and [virtual box](https://www.virtualbox.org/wiki/Downloads)
<pre>gem install librarian-chef</pre>
<pre>librarian-chef install</pre>
<pre>vagrant up</pre>
It might take some time for the box to create

After that you can put you root app in the folder project/

### If it fails type:
<pre>rm .vagrant/machines/default/virtualbox/synced_folders</pre>
<pre>vagrant reload --provision</pre>

### If bundle fail:
<pre>
/home/vagrant/.rbenv/bin/rbenv init
source ~/.profile
gem install --no-ri --no-rdoc bundler
/home/vagrant/.rbenv/bin/rbenv rehash
/home/vagrant/.rbenv/shims/bundler
</pre>

#Launch rails server
<pre>vagrant ssh</pre>
<pre>cd /vagrant</pre>
<pre>rails s</pre>

# Todo
Add how [chef](https://github.com/applicationsonline/librarian-chef), and vagrant work

Philippe
