stunnel_smartos Cookbook
========================
TODO: Enter the cookbook description here.

e.g.
This cookbook makes your favorite breakfast sandwich.

Requirements
------------

- Cookbook[stunnel]


Attributes
----------


Usage
-----


### Data Bag Example

```
{
  "id": "my_item",
  "ca": {
    "hoge": "moge"
  },
  "servers": [
    {
      "name": "https",
      "accept": 443,
      "connect": 80,
      "cafile": "hoge.pem",
      "verify": 2
    }
  ]
```

FYI
----

Content of stunnel plkg.

```
# pkgin pkg-content stunnel
Information for http://pkgsrc.joyent.com/packages/SmartOS/2014Q1/x86_64/All/stunnel-5.00.tgz:
Files:
/opt/local/bin/stunnel
/opt/local/bin/stunnel3
/opt/local/lib/stunnel/libstunnel.la
/opt/local/lib/stunnel/libstunnel.a
/opt/local/lib/stunnel/libstunnel.so
/opt/local/man/man8/stunnel.8
/opt/local/man/man8/stunnel.fr.8
/opt/local/man/man8/stunnel.pl.8
/opt/local/share/doc/stunnel/AUTHORS
/opt/local/share/doc/stunnel/BUGS
/opt/local/share/doc/stunnel/COPYING
/opt/local/share/doc/stunnel/COPYRIGHT.GPL
/opt/local/share/doc/stunnel/CREDITS
/opt/local/share/doc/stunnel/ChangeLog
/opt/local/share/doc/stunnel/INSTALL
/opt/local/share/doc/stunnel/INSTALL.FIPS
/opt/local/share/doc/stunnel/INSTALL.W32
/opt/local/share/doc/stunnel/INSTALL.WCE
/opt/local/share/doc/stunnel/PORTS
/opt/local/share/doc/stunnel/README
/opt/local/share/doc/stunnel/TODO
/opt/local/share/doc/stunnel/examples/ca.html
/opt/local/share/doc/stunnel/examples/ca.pl
/opt/local/share/doc/stunnel/examples/importCA.html
/opt/local/share/doc/stunnel/examples/importCA.sh
/opt/local/share/doc/stunnel/examples/script.sh
/opt/local/share/doc/stunnel/examples/stunnel.init
/opt/local/share/doc/stunnel/examples/stunnel.service
/opt/local/share/doc/stunnel/examples/stunnel.spec
/opt/local/share/doc/stunnel/stunnel.fr.html
/opt/local/share/doc/stunnel/stunnel.html
/opt/local/share/doc/stunnel/stunnel.pl.html
/opt/local/share/examples/stunnel/stunnel.conf-sample
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Author: SAWANOBORI Yukihiko (HiganWorks LLC)

License: apache2
