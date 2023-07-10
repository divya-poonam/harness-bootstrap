variable "tags" {
  type        = map(string)
  description = "These tags are used to group and identify resources. Expecting common values such as env, owner to be passed from outside so that they are maintained in one place"
}