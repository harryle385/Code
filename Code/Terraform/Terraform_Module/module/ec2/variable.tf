variable "region" {
    type = string
    default = "ap-southeast-1"
}
variable "AMIasREGION" {
    type = map(any)
    default = {
        ap-southeast-1 = "ami-02ee763250491e04a"
    }
}
variable "instancetype" {
    type = string
    default = "t2.micro"
}
