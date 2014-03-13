import json
js = open("cpm_adInfo_dump.dat").read()
d= {"key":js}
print json.dumps(d)



