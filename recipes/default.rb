include_recipe "libapr"
include_recipe "libdb"
include_recipe "libexpat"
include_recipe "libuuid"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libaprutil1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
