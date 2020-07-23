variable "rg" {
    default = "terraform-lab2"
}

variable "loc" {
    default = "southeastasia"
}

variable "tags" {
    type = map
    default = {
        environment = "training"
        source      = "learn"}
    }
    variable "sa" {
    default = "sarinlearnterraformlab2"
}