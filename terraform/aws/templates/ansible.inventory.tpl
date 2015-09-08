[master]
${master_short_name} ansible_ssh_host=${master_public_ip}

[etcd]
${etcd_short_name} ansible_ssh_host=${etcd_public_ip}

[apiservers]
${apiservers_inventory_info}

[nodes]
${nodes_inventory_info}

[cluster:children]
master
etcd
apiservers
nodes

[local]
localhost ansible_connection=local

[cluster:vars]
ansible_connection=ssh
ansible_python_interpreter="PATH=/home/core/bin:$PATH python"
ansible_ssh_user=core
cluster_master_record=${cluster_master_record}
cluster_name=${cluster_name}
dns_domain=${dns_domain}
dns_ip=${dns_ip}
dockercfg_base64=${dockercfg_base64}
etcd_private_ip=${etcd_private_ip}
etcd_public_ip=${etcd_public_ip}
hyperkube_deployment_mode=${hyperkube_deployment_mode}
hyperkube_image=${hyperkube_image}
interface_name=${interface_name}
kraken_services_branch=${kraken_services_branch}
kraken_services_dirs=${kraken_services_dirs}
kraken_services_repo=${kraken_services_repo}
kube_apiserver_v=${kube_apiserver_v}
kube_controller_manager_v=${kube_controller_manager_v}
kube_proxy_v=${kube_proxy_v}
kube_scheduler_v=${kube_scheduler_v}
kubelet_v=${kubelet_v}
kubernetes_api_version=${kubernetes_api_version}
kubernetes_binaries_uri=${kubernetes_binaries_uri}
logentries_token=${logentries_token}
logentries_url=${logentries_url}
master_private_ip=${master_private_ip}
master_public_ip=${master_public_ip}
node_001_private_ip=${node_001_private_ip}
node_001_public_ip=${node_001_public_ip}
apiserver_nginx_pool=${apiserver_nginx_pool}

[local:vars]
ansible_ssh_private_key_file=${ansible_ssh_private_key_file}
cluster_name=${cluster_name}
etcd_public_ip=${etcd_public_ip}
master_public_ip=${master_public_ip}
