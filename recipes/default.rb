packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libaprutil1
  /
when "precise"
  packages |= %w/
    libaprutil1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
