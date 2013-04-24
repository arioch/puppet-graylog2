# Puppet Graylog2

## Requirements

## Example usage

### Install Graylog2

    node /box/ {
      include graylog2
    }

### Configure Graylog2, ElasticSearch related

    node /box/ {
      class { 'graylog2':
        es_clustername => 'graylog2',
        es_nodename    => 'graylog2-server',
        es_tcpport     => '9350',
      }
    }

