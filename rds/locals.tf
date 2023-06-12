locals {
  skip_final_snapshot = true

  common_tags={
    Owner = "JJTech Devops Team"
    cs = "devops@jjtechinc.co"
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }

}