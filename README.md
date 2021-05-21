# NSPROXY
Servicio de Squid4 proxy para acceder a las redes internas desde diferentes sistemas.

# DOCKER RUN

```
docker run --name=nsproxy -p 86:86 -v /etc/localtime:/etc/localtime:ro \
			-v /data/apps/nsproxy/etc:/etc/squid \
			-v /data/apps/nsproxy/var/log:/var/log/squid \
			-d nsoporte/nsproxy
```

