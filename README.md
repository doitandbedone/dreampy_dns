### dreampy_dns python script
Python script for updating Dreamhost.com DNS custom records.

This is a simple python script for updating the
DNS Custom Records in Dreamhost.com Nameservers using
Dreamhost API commands.

## License
Provided under the MIT License (MIT). See LICENSE for details.

## Requirements

Python 3 with urllib. Should be installed by default, if not use your package manager.

## Docker
### Enviroment Variables

#### API_KEY
API Key from Dreamhost, to obtain one please go to: https://panel.dreamhost.com/?tree=home.api 

For more general information about Dreamhost API Key please go to:
https://panel.dreamhost.com/?tree=home.api

#### DOMAIN 
Desired domain used for your ddns. I woudl recommend using a CNAME record of your liking. For instance if you own example.com, you can add the record mysubdomain.example.com

#### UPDATE_FREQUENCY
Desired update frequency in minutes. This is set to 10 minutes by default.

### Running Image
```bash
docker run --rm -it -e API_KEY='YOUR_API_KEY' -e DOMAIN='your.domain.com' --name dreampy-dns doitandbedone/dreampy-dns
```
If you want to override update frequency:
```bash
docker run --rm -it -e API_KEY='YOUR_API_KEY' -e DOMAIN='your.domain.com' -e UPDATE_FREQUENCY='15' --name dreampy-dns doitandbedone/dreampy-dns
```

## IPv6

You can update your domain with an IPv6 (AAAA) record also, if you would like to do so.
In that case, CHECKIPV6 variable must be set to anything other than the default 0.

## Comments (from original developer)

The script may seem a bit crude and dirty -and it is. This is a script I wrote for personal use
when I had minimal experience with Python and I decided to make it publicly available, in case anyone else needed it.  
If memory serves, this project started when a similar script I was using and was written in Perl stopped working around 2012. So, I decided to write my own script to update my dynamic IP address home server domain.  
As of January 2019 I am no longer using Dreamhost so I can't verify anymore that it does work. However, APIs do not change often, and I hope that this little piece of code will be useful for many more years to anyone that needs it.

## Credits
This was originally forked from:
https://github.com/gsiametis/dreampy_dns
