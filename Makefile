avi_cloud: 
	ansible-playbook create_avi_cloud.yml

aci_tenant:
	ansible-playbook build_aci_tenant.yml

vms:
	ansible-playbook attach_vms.yml

avi_ranges:
	ansible-playbook create_network_ranges.yml

avi_vs: 
	ansible-playbook create_avi_application.yml

move_aci_sg:
	ansible-playbook apply_avi_sg.yml


