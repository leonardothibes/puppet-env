puppet-env
==========

A puppet module to provide a Redhat shell style for Debian/Ubuntu/Mint.

## Sample Usage
Install env and use the provided configuration defaults:
```puppet
node default {
	class {'env':}
}
```
or
```puppet
node default {
	include env
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-env/issues)
