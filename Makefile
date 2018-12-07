cloud:
	ansible-playbook create_avi_cloud.yml

tenant:
	ansible-playbook build_aci_tenant.yml

vms:
	ansible-playbook attach_vms.yml

ranges:
	ansible-playbook create_network_ranges.yml

vs:
	ansible-playbook create_avi_application.yml

sg:
	ansible-playbook apply_avi_sg.yml

cleanup:
	ansible-playbook create_avi_application.yml --extra-vars "avi_config_state=absent"
	ansible-playbook detach_vms.yml
	ansible-playbook delete_aci_tenant.yml