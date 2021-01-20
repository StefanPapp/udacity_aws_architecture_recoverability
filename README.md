# note to the mentor

I used Terraform to build the basics as I originally considered to use Terraform to build up the whole database using Terraform

Due to the limited time, I decided not to stop this and I kept only the Terraform configuration to build up the VPC. I added this in the folder terraform.

Please find the answers and the screenshots in the corresponding folders grouped by part.

The last mentor asked for the following :
* Please share a screenshot of the S3 console showing multiple versions of index.html.
* You need to modify your estimates. RTO and RPO will not be zero for each case.
* For showing database replica configuration, share screenshot of RDS "Connectivity & Security" Tab showing the read replica in a different AWS region.

There is a folder additional that contains this
* delete marker.png adds a new screenshotwhowing multiple version of index.html
* estimated.txt: A revised esstimation of RTO and RPO
* connectivity secondary.png: A screenshot from which we can see that the rds is hosted in Ireland as a Replica. At the bottom we can see that the primary is in Frankfurt 
