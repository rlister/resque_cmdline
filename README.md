# resque_cmdline

This is a simple command-line client for showing info about queues and
workers from
[resque](https://github.com/resque/resque) or 
[sidekiq](https://github.com/mperham/sidekiq).

resque_cmdline does not use resque or sidekiq gems, but extracts info
directly from redis. This should be an order of magnitude faster when
querying a redis server over a slow (vpn over internet) connection.

## Usage

    rq [options] command [-e shell_command]

where command is one of: queues workers failed running pending stats. Commands
may be be shortened to their shortest unique beginning.

See option list using `-h`.

## Example

Show ps listing for all running jobs older than 1 hour:

    rq running -o 1h -e ssh {host} ps -lfp {pid}

## Config

Configure your environments and redis servers in `~/.rq.yml`. For example:

```yaml
environments:
  production:  redis-01:6379
  staging:     redis-stg-01:6379
  development: localhost:6379

environment: production
```

## License

See included file LICENSE.

## Copyright

Copyright (c) 2012 Richard Lister.
