variable "region" {
  description = "The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}
variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

// ECS instance
variable "ecs_instance_name" {
  description = "The name of ECS Instance."
  type        = string
  default     = "TF-Wordpress"
}
variable "ecs_instance_password" {
  description = "The password of ECS instance."
  type        = string
  default     = ""
}
variable "image_id" {
  description = "The image id used to launch one ecs instance. It only support CentOS_7."
  type        = string
  default     = ""
}
variable "ecs_instance_type" {
  description = "The instance type used to launch ecs instance."
  type        = string
  default     = ""
}
variable "system_disk_category" {
  description = "The system disk category used to launch one ecs instance."
  type        = string
  default     = ""
}
variable "system_disk_size" {
  description = "The system disk size used to launch ecs instance."
  type        = number
  default     = 40
}
variable "security_group_ids" {
  description = "A list of security group ids to associate with ECS and RDS Mysql Instance."
  type        = list(string)
  default     = []
}
variable "vswitch_id" {
  description = "The virtual switch ID to launch ECS and RDS MySql instance in VPC."
  type        = string
  default     = ""
}
variable "private_ip" {
  description = "Configure ECS Instance private IP address"
  type        = string
  default     = ""
}
variable "internet_charge_type" {
  description = "The internet charge type of ECS instance. Choices are 'PayByTraffic' and 'PayByBandwidth'."
  type        = string
  default     = "PayByTraffic"
}

variable "internet_max_bandwidth_out" {
  description = "The maximum internet out bandwidth of ECS instance."
  type        = number
  default     = 10
}
variable "data_disks" {
  description = "Additional data disks to attach to the scaled ECS instance."
  type        = list(map(string))
  default     = []
}
variable "volume_tags" {
  description = "A mapping of tags to assign to the devices created by the instance at launch time."
  type        = map(string)
  default     = {}
}
variable "deletion_protection" {
  description = "Whether enable the deletion protection or not. 'true': Enable deletion protection. 'false': Disable deletion protection."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the ECS and RDS Instance."
  type        = map(string)
  default     = {}
}

variable "resource_group_id" {
  description = "The Id of resource group which the ECS instance belongs."
  type        = string
  default     = ""
}