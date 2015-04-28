cat <<EOF > test.vcl
vcl 4.0;
import statsd;

backend default {
    .host = "127.0.0.1";
    .port = "8080";
  }
EOF
varnishd -C -f test.vcl 2>&1 >/dev/null && echo ok || echo "doesn't work"
