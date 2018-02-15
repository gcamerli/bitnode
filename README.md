# **Bitnode**

![bitcore](img/bitcore.jpg)

This **Dockerfile** is related to this **docker** image:

+ [gcamerli/bitnode](https://hub.docker.com/r/gcamerli/bitnode/)

### **Packages**

**Bitnode** is fully equipped of:

+ nodejs
+ npm
+ nvm
+ bower
+ zmq

### **Shell scripts**

To automate the operations with **docker** use the following scripts:

+ [build.sh](script/build.sh)
+ [run.sh](script/run.sh)
+ [stop.sh](script/stop.sh)
+ [clean.sh](script/clean.sh)
+ [remove.sh](script/remove.sh)

#### **Build**

To build **bitnode** as a docker container execute:

```bash
$ ./script/build.sh
```
#### **Run**

To execute **bitnode** in an _interactive_ mode:

```bash
$ ./script/run.sh
```

### **Usage**

While the container is running, to set properly a **bitcore** node execute this command:

```bash
$ source .bashrc && ./post_install.sh
```

After the post install setup to run your **bitcore** node, update again your `.bashrc` and 
inside your `testnode` dir execute:

```bash
$ bitcored
```

### **Config**

To test and run your **bitcore-based** node, edit the file:

+ [post_install.sh](post_install.sh)

and rebuild the **bitnode** container executing again:

```bash
$ ./script/build.sh
```

### **Documentation**

For more info check the official [bitcore](https://bitcore.io/start) doc.

### **GPL License**

This work is licensed under the terms of **[GNU General Public License v3.0](https://www.gnu.org/licenses/gpl.html)**.

### **Donations**

Donations are accepted at:

+ **BTC**: 1DNWtR4wJbFE7vjcfQvuj4iE7FURYBURtr
