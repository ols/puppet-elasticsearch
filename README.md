Puppet module for [elasticsearch] on Ubuntu. 

[logstash]: https://github.com/logstash/logstash

## Prerequisites

* An Ubuntu system
* Puppet 2.7

## Installation

    cd /etc/puppet/modules
    git clone git://github.com/garthk/puppet-elasticsearch elasticsearch
    cd elasticsearch
    make fetch

Without `make`, do `./download.sh`.

## Usage

    class { 'elasticsearch':
      version      => '0.19.8',
      java_package => 'openjdk-6-jre-headless',
      dbdir        => '/var/lib/elasticsearch',
      logdir       => '/var/log/elasticsearch',
    }

All arguments are optional.

## Configuration:

The parameters to `elasticsearch` aside, you can supply your own
`elasticsearch.yml` and `logging.yml` files by making them available via the
Puppet file server as either:

* `site-elasticsearch/${fqdn}/*.yml` or
* `site-elasticsearch/*.yml`. 

If you don't supply them, the default content will be supplied by the module.

## Testing:

### Smoke Testing

* `make test` or `make smoke` to perform a simple [smoke test]

### Vagrant

* Install [Vagrant]

* Get the `lucid32` box (safe even if you already have it):

        vagrant box add lucid32 http://files.vagrantup.com/lucid32.box

* Fetch the default version of elasticsearch:

        make fetch

* Launch the virtual machine:

        vagrant up

[elasticsearch]: http://www.elasticsearch.org/
[Vagrant]: http://vagrantup.com/
[smoke test]: http://docs.puppetlabs.com/guides/tests_smoke.html
[get in touch]: http://twitter.com/garthk
