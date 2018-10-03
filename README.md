# avi-aci-ansible
(writing in progress :)

## Overview
set of playbooks to configure cloud in Avi Vantage with Cisco ACI integration

## Content

- create_avi_cloud.yml
- create_network_ranges.yml
- create_avi_application.yml
- extract_AviClusterName_export.yml (work in progress - export LDC from common to target tenant)


## HOWTO

rename creds_sample.yml to creds.yml
rename tenant_vars_sample.yml to tenant_vars.yml
rename apic_vars_sample.yml to apic_vars.yml

update content with appropriate credentials and data

Create Avi cloud with APIC integration

```
ansible-playbook create_avi_cloud.yml
```

(optional : create servicegraphtemplate in APIC)

create demo tenant in APIC

export L4-L7 device from common to demo tenant in APIC:

```
ansible-playbook extract_AviClusterName_export.yml -i _hosts_Basic_demo
```


Create static ranges for SE address allocation in dataplane 
```
ansible-playbook create_network_ranges
```


Create Virtual Service
```
ansible-playbook create_avi_application.yml
```
