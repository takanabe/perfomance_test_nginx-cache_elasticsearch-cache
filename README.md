# perfomance_test_nginx-cache_elasticsearch-cache
Experiments for elasticsearch with nginx cache features and elasticsearch cache feature.

# Investigation & Result
Please see [wiki](https://github.com/takanabe/perfomance_test_nginx-cache_elasticsearch-cache/wiki)

# How to preform tests
## 1. Prepare test environment
### 1.1 Make a ec2 instance as elasticsearch with nginx(rproxy-cache)
1. Make a aws ec2 instance.
1. Confirm the instance FQDN registered in Public DNS
 * FQDN example:ec2-user@ec2-XX-XX-XX-XX.ap-northeast-1.compute.amazonaws.com
1. Rename `path/to/perfomance_test_nginx-cache_elasticsearch-cache/nodes/elasticsearch_with_nginx.json` to `ec2-user@ec2-XX-XX-XX-XX.ap-northeast-1.compute.amazonaws.com`
1. Execute apply chef recipe as follows:

   ```
   knife solo bootstrap ec2-user@ec2-XX-XX-XX-XX.ap-northeast-1.compute.amazonaws.com
   ```


### 1.2 Make a ec2 instance as elasticsearch with nginx(rproxy-cache)
1. Make a aws ec2 instance.
1. Confirm the instance FQDN registered in Public DNS
 * FQDN example:ec2-user@ec2-YY-YY-YY-YY.ap-northeast-1.compute.amazonaws.com
1. Rename `path/to/perfomance_test_nginx-cache_elasticsearch-cache/nodes/standalone_elasticsearch.json` to `ec2-user@ec2-YY-YY-YY-YY.ap-northeast-1.compute.amazonaws.com`

   ```
   knife solo bootstrap ec2-user@ec2-YY-YY-YY-YY.ap-northeast-1.compute.amazonaws.com
   ```

### 1.3 Install test tool(wrk:https://github.com/wg/wrk)
1. Execute following commands to install wrk

   ```
   git clone https://github.com/wg/wrk.git
   cd wrk
   make
   sudo make
   sudo cp wrk /usr/local/bin/wrk
   ```

## 2. Test




