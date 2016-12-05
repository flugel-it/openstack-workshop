#!/bin/bash

openstack project create --description $1 $1
openstack user create --password $1 $1
openstack role add --project $1 --user $1 _member_

