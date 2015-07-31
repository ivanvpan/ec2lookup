/etc/ansible/hosts | jq -r "._meta.hostvars[] | select(.ec2_tag_Name == \"$1\") | .ec2_ip_address"
