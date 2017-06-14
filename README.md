# XMR-Stak-Ryzen - Monero mining software based on the fireice-uk developer. 

XMR-Stak-Ryzen is a universal Stratum pool miner. This is the CPU-mining version optimized for the RYZEN CPU.


## Compile on Linux (Debian-based distros)

### GNU Compiler
```
    sudo apt-get install libssl-dev cmake build-essential
    make 

#### CPU mining performance 

Performance is nearly identical to the closed source paid miners. Here are some numbers:

* **RYZEN 1600 OC 3.7 - 510 H/s
* **I7-2600K** - 266 H/s
* **I7-6700** - 276 H/s (with a separate GPU miner)
* **Dual X5650** - 466 H/s (depends on NUMA)
* **Dual E5640** - 365 H/s (same as above)

## There is no dev donation


If you want to donate directly to support development of the XMR-Stak, here are the wallets:


malvanos (XMR-Stak-Ryzen developer):
```
46cN6HeEy6KNjha8hz6maGAGtS13zwibFTnHxHfJNK7a8NnKKtg5akPEbYtW5ZDxYNY2TQd2vqXxEYVcQaMRpUkSAMvPTT9
```

fireice-uk (XMR-Stak-cpu original developer):
```
4581HhZkQHgZrZjKeCfCJxZff9E3xCgHGF25zABZz7oR71TnbbgiS7sK9jveE6Dx6uMs2LwszDuvQJgRZQotdpHt1fTdDhk
```

psychocrypt (wrote some of the code):
```
43NoJVEXo21hGZ6tDG6Z3g4qimiGdJPE6GRxAmiWwm26gwr62Lqo7zRiCJFSBmbkwTGNuuES9ES5TgaVHceuYc4Y75txCTU
```


On Linux you will need to configure large page support `sudo sysctl -w vm.nr_hugepages=128` and increase your
ulimit -l. To do do this you need to add following lines to /etc/security/limits.conf:

    * soft memlock 262144
    * hard memlock 262144
    
Save file.  You WILL need to log out and log back in for these settings to take affect on your user (no need to reboot, just relogin in your session).

You can also try to run the application in root mode.


