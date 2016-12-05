# OpenStack Command line reference

More information on: http://docs.openstack.org/developer/python-openstackclient/command-list.html

## Export your environment variables

```
. openstack-rc.sh
```

## List instances

```
openstack server list
```

## List images

```
openstack images list
```

## List Networks

```
openstack network list
```

## List key pairs

```
openstack keypair list
```

## Create Server

```
openstack server create --image bfe8f24c-226e-4e74-81d9-ce514a874e99 --flavor m1.small --security-group default --key-name diegows --nic net-id=adf0dd01-e11f-4d9b-b246-0e55d7c85720 test01
```

## List floating IPs

```
openstack ip floating list
```

## List floating IP pools

```
openstack ip floating pool list
```

## Get a floating IP

```
openstack ip floating create ext-net
```

## Attach floating IP

```
openstack ip floating add test01 x.x.x.x
```

## Create volume

```
openstack volume create --size 10 testvol
```

## Attach volume 

```
openstack server add volume test01 testvol
```

