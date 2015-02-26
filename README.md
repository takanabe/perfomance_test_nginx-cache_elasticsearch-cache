# perfomance_test_nginx-cache_elasticsearch-cache
Experiments for elasticsearch with nginx cache features and elasticsearch cache feature.

# Investigation & Result
Please see [wiki](https://github.com/takanabe/perfomance_test_nginx-cache_elasticsearch-cache/wiki)

# How to preform tests
## Prepare test environment
1. Make 2 aws instances.
1. Rename `path/to/perfomance_test_nginx-cache_elasticsearch-cache/node/instance_for_nginx_cache_test.json` to `ec2-user@ec2-XX-XX-XX-XX.ap-northeast-1.compute.amazonaws.com`
1. Rename `path/to/perfomance_test_nginx-cache_elasticsearch-cache/node/instance_for_elasticsearch_cache_test.json`
1. ノードのファイルの中のfqdnも書き換える

## First
1. Perform

   ```
   knife solo bootstrap ec2-user@ec2-XX-XX-XX-XX.ap-northeast-1.compute.amazonaws.com
   ```
1.
