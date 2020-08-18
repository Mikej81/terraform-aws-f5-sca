# Deploy all Pieces

# Get my current Public IP for NSG
data http myip {
  url = "http://ipv4.icanhazip.com"
}

resource random_id so_random {
  byte_length = 2
}

module core {
    source              = "./sca/core"
    aws_region          = var.aws_region
    aws_profile         = var.aws_profile
    project             = lower(var.project)
    region-az-1         = var.region-az-1
    region-az-2         = var.region-az-2
    allowed_mgmt_cidr   = "${chomp(data.http.myip.body)}/32"
    allowed_app_cidr    = var.allowed_app_cidr
    cidr-1              = var.cidr-1
    cidr-2              = var.cidr-2
    cidr-3              = var.cidr-3
}

module security_stack {
    source                      = "./sca/security_stack"
    ec2_key_name                = var.ec2_key_name
    ec2_instance_type           = var.ec2_instance_type
    aws_region                  = var.aws_region
    aws_profile                 = var.aws_profile
    project                     = lower(var.project)
    transit_gateways            = module.core.transit_gateways
    random_id                   = lower(random_id.so_random.hex)
    security_groups             = module.core.security_groups
    vpcs                        = module.core.vpcs
    route_tables                = module.core.route_tables
    subnet_cidrs                = module.core.subnet_cidrs
    secrets_manager_name        = module.core.secrets_manager_name
    aws_cidr_ips                = module.core.aws_cidr_ips
    iam_instance_profile_name   = module.core.iam_instance_profile_name
    subnets                     = module.core.subnets
    f5_ami_search_name          = var.f5_ami_search_name
    f5_owner_ids                = var.f5_owner_ids
}