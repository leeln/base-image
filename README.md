[![Build Status](http://ci.leeln.com/api/badges/ubm/images/status.svg)](http://ci.leeln.com/ubm/images)
# images
docker的基础镜像很多都有一些小地方不满足我们业务使用的需求，所以使用的镜像需要在这的基础上进行扩展一些东西。

# unbuntu 时区问题

`Asia/Shanghai`

```
docker run -ti --rm -e "TZ=Asia/Shanghai" docker.repo.waimai.sankuai.info/leeln/ubuntu:14.04 bash -c "date"
```

# centos 时区问题

```
docker run -ti --rm -e "TZ=Asia/Shanghai" docker.repo.waimai.sankuai.info/centos bash -c 'date'
```
