Redmine on OpenShift
=========================

Redmine is a flexible project management web application. Written using Ruby on Rails framework, it is cross-platform and cross-database.

Redmine is open source and released under the terms of the GNU General Public License v2 (GPL).

More information can be found at www.redmine.org

Running on OpenShift
--------------------

Create an account at https://www.openshift.com

Create a ruby application with either MySQL

	rhc app create redmine ruby-2.0 mysql-5.5 --from-code=https://github.com/skarllot/openshift-redmine-quickstart.git

or PostgreSQL

	rhc app create redmine ruby-2.0 postgresql-9.2 --from-code=https://github.com/skarllot/openshift-redmine-quickstart.git

Make a note of the username, password, and host name as you will need to use these to login to the database.

That's it, you can now checkout your application at:

	http://redmine-$yournamespace.rhcloud.com


Use the following to login to your new Redmine application running on OpenShift:

	username: admin
	password: admin


Changing the default admin password
-----------------------------------
Once your installation is complete, it is highly recommended that you change
the password for the Redmine admin user - see the Change password link at:

	http://redmine-$yournamespace.rhcloud.com/my/account

Version
-----------------------------------
Redmine 3.2.1
