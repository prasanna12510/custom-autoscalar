
export URL=http://a27c984b838d111e8829302105e290d2-1612426895.ap-south-1.elb.amazonaws.com/a8r/autoscaler
export NOW=`date '+%FT%T%z'`
curl -XPOST -H"Content-Type: application/json" -d @- $URL << EOF
{
  "replicationControllerId": "infinispan-controller",
  "metricName": "count",
  "threshold": 100,
  "duration": 10000,
  "minReplicas": 2,
  "maxReplicas": 10
}
EOF
