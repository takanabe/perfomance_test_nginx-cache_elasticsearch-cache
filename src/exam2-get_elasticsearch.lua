-- This lua program send same packets as followin command
-- curl -XGET 'taget_server_fqdn/twitter/users/taro?pretty=true'

wrk.method = "GET"
wrk.path = "/twitter/users/taro?pretty=true"
wrk.headers["Content-Type"] = "application/json"
