module Chef::Splunk
  def self.node_name(node)
    name = case node[:splunk][:name_scheme]
    when "ec2", :ec2
      "#{node[:ec2][:instance_id]}-splunk"
    when "node_name", :node_name
      "#{node.name}-splunk"
    end
    return name
  end
end