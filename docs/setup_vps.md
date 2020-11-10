# Set up a VPS

## Ubuntu

Table of content:

[1. Add some missing packages](#add-packages)
[2. Create service user](#create-service-user)
[3. Harden SSH](#harden-ssh)
[4. Setup firewall](#setup-firewall)

### Add packages

NOTE: Assuming you are running as `root`

```bash
# apt-get update && apt-get upgrade -y
# apt get install vim tree -y
```

### Create service user

```bash
# useradd -m -c "Admin User" example_user
# passwd example_user
# usermod -aG sudo example_user
```

### Harden SSH

#### Create SSH key

If you have a key, skip this part.

NOTE: Assuming you switched from `root` to `example_user` and are creating from your machine

```bash
ssh-keygen -t rsa   # Enter a uniqe path, else it will write toid_rsa 
```

Important: Save the key to a backup

#### Upload key

NOTE: Assuming you switched from `root` to `example_user` and are creating from your machine

```bash
# Upload the public key from your machine
$ ssh-copy-id -i .ssh/path-to-file.pub example_user@127.0.0.1
# or
$ cat .ssh/path-to-file.pub example_user@127.0.0.1:~
$ ssh example_user@127.0.0.1
$ mkdir .ssh && cat key.pub >> .ssh/authorized_keys && rm key.pub
```

#### Disable `root` SSH login and switch to key access

Go to `/etc/ssh/sshd_config` and change the folowing:

```bash
Port [random_port_number: e.g. 3001]
...
PermitRootLogin no
...
PasswordAuthentication no
```

```bash
$ sudo systemctl restart ssh
```
