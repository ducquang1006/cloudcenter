#!/bin/bash
# Source the Cloudcenter user env file to onboard C3 specifc 	vars
source /usr/local/cliqr/etc/userenv
cd /home/cliqruser/thatisok
tee -a /home/cliqruser/test.pem << END
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEApC5x1GOddyA4m4LNRW47+z6cNSPVZLJD3isRsF1IN95F8fpj
9H0k6nk+ZJIhlFQbMbhWARBkZahPHYFQkVkilokUjEp/Dl/jY4Ud8vteQhxbgcmb
U6EkMgbflLu13mwGLS5UM5N2RDAZ+Asra3G6w9WTYF7sOAANqQEYwMdaQob4/n38
XuRbpOlSCmw3osPsb+47lWqtQk3NjWGlkMg5XumhnO3SvfL5Np7dhjkhILzPOO7k
LWGljJJ1C1nIaXHez4rHRqEe1cV0WBnhcNE5cdZChMMY1fE8LaPF/+DnGUwOwN+4
anSvuB7GL+uWQIj9oPflu4fd9ASHBI3Q4DJuOQIDAQABAoIBAGHjFxcMdXvrCBUf
/Ych3D1F7Rh5zucEqhYyE4/VbhNxQL6vDR1d576snxiTT9YB91zDjPOBdHpvyQvM
Z97hCBA8lrW2TN6jKQ3S9jJC0MYV5jERpLxN3Si+lFs3N43vVhdmAenmR6MMEs+i
yTZ8TmAoXIAe2DPjREG5V6rIsPXsUqxk5515527Z79l9EbWmjqTu/WhPy7Uj/ucc
pEq1o3wkHEOzuanYEk5ltRf/Pre+HsV0QegFLYgge+R8yvvOMYsR6XlbNFm1v78x
AU7NZzq4rAEc/n4SSB1noyAA+QztUnI9METwpcTVf6gBYBDUFOiE/Wf1Pw9wyraz
AV0nyqECgYEA1T2IZhxjEn+97XXuXOZU3aSLxGGnfmQtDnregdhl3P9ax3/i2vNa
lc8oIXcZuuDGuy2PuKrh+H3/+CYGAg77Q5bfKi96dgr05uNJh3Rw7vjNzR9jPoiG
HAAW7SOJEX/q9mX1E1h02UjFYV3lYh6rM0Wizmrij0e/gpzKjGrY0b0CgYEAxRqF
/7Mrs6ughOIwPEkmHAuX6XRuwhPd3dugFrZ/b5WPPhElI7QZO4O26wlXhC88YzD/
cO3wZNX6kU3wmV2dDklhdVBAPS59utps5NSC2B59VexVEj8oLfOb3C2fW83hxikn
COdhnDGp2FsXbx9ItygL7CjVYHZ33sn5YkEc0C0CgYATRnCh6kb6URm18UcOlrNt
JYaMxdcCEcQQ3wJl8k2i4GIwTlsPN5gkmokiHUXyIodUPBYVtzyd3aXZpHY+kWQd
A/JAOfJz4SGqDTmESP48W7kepYuvB2A3/7oSzXeCYXG3vBefHAvT6EQPPRGTAPqw
s8a3qem40d95yvp0HuRicQKBgFd8U1fQjig8mI4C24gWq7ytBKuRi4vHR6Yu0pri
PCQqDR9uer6jNMPuzaT7S4YXdUVNvUPByP7o30PZhV59Z7Wsqn5otWqylQn343ea
P81vkxAtSwFDWTE0PMz4zw/vjTPoljPkh7XNcWbf38Hp79ukAc67vSII02Hm4jNT
VVetAoGAY+FBmJhBWo2jIYLqHOU3NALwsTsubkhUI+QC7jR2k41bFn5URmQLHuDi
/bd09kAFNNWMrjVRX5L6Em8RFfUFCoc3K2XTMpczC8Iw+2Y7j7GA7jib1EC2UpJZ
dF+NHw1iOtPx5nDOsf7jqD7XVyTkOKoFde2gJUWx5C7nH8fdSCo=
-----END RSA PRIVATE KEY-----
END
chmod 400 /home/cliqruser/test.pem
ssh -t -i /home/cliqruser/test.pem centos@127.0.0.1 sudo usermod -aG wheel cliqruser
#ssh -t -i /home/cliqruser/test.pem centos@127.0.0.1 sudo -i bash -c "echo \"cliqruser  ALL= NOPASSWD: ALL\" >> /etc/sudoers"

