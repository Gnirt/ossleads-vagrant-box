# To create your box simply launch

clone the project in your desired directory
<pre>git clone https://github.com/Gnirt/ossleads-vagrant-box.git</pre>
<pre>cd ossleads-vagrant-box</pre>
You must have installed [vagrant](http://docs.vagrantup.com/v2/installation/) and [virtual box](https://www.virtualbox.org/wiki/Downloads)
<pre>gem install librarian-chef</pre>
<pre>librarian-chef install</pre>
<pre>mkdir project</pre>
<pre>vagrant up</pre>
It might take some time for the box to create

After that you can put you root app in the folder project/

### If it fails type:
<pre>vagrant reload --provision</pre>

#Launch rails server
<pre>vagrant ssh</pre>
<pre>cd /vagrant</pre>
<pre>rails s</pre>

# Todo
Add how [chef](https://github.com/applicationsonline/librarian-chef), and vagrant work

Philippe
