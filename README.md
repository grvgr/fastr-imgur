
fastr-imgur
===========

Improves image load speed using the prx2.unblocksit.es proxy.

Installation
============

1. Copy `redirects.conf` to `/etc/apache2/sites/`
2. Edit `/etc/apache2/sites/redirects.conf` to reflect correct paths based on your environment.
3. Modify `/etc/apache2/httpd.conf` to include the line `Include /private/etc/apache2/sites/redirects.conf`
4. Restart apache with `sudo apachectl restart`
5. Modify `/etc/hosts` to map `i.imgur.com` to `0.0.0.0`
6. Profit
