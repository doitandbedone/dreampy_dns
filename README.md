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
#### DOMAIN 
Desired domain used for your ddns
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

## Usage

No arguments needed, everything is included in the script itself. Unfortunately, this means that if you want to update several domains you must use different copies of this script.
Script requires API_key and domain variables to be filled in. API_Key is the
API Key you have created in Dreamhost's control panel (it must have permission
for the DNS commands). domain is the DNS record to be updated, eg.
myawesomedyndomain.example.com.
Script runs from CLI in the usual way, eg.:  
`python3 /path/to/script/dreampy_dns.py`  
or you can run it as it is (make sure you make it executable):  
`./dreampy_dns.py`

## IPv6

You can update your domain with an IPv6 (AAAA) record also, if you would like to do so.
In that case, CHECKIPV6 variable must be set to anything other than the default 0.

## Comments

The script may seem a bit crude and dirty -and it is. This is a script I wrote for personal use
when I had minimal experience with Python and I decided to make it publicly available, in case anyone else needed it.  
If memory serves, this project started when a similar script I was using and was written in Perl stopped working around 2012. So, I decided to write my own script to update my dynamic IP address home server domain.  
As of January 2019 I am no longer using Dreamhost so I can't verify anymore that it does work. However, APIs do not change often, and I hope that this little piece of code will be useful for many more years to anyone that needs it.

## Bugs
No serious (if any) bugs reported. If you find one, and corrected it, please make a pull request. If you don't know how to correct it, you can raise an issue on github.

For more general information about Dreamhost API Key please go to:
https://panel.dreamhost.com/?tree=home.api

## Credits
This was originally forked from:
https://github.com/gsiametis/dreampy_dns
