## Barracuda WAF for AWS

The Barracuda Web Application Firewall (WAF) provides proven application security and data loss prevention for your applications on Amazon Web Service (AWS), including:

- Detecting and blocking attacks including SQL injections, Cross-Site Scripting, malware uploads, and volumetric or application DDoS.
- Authentication and access control allowing organizations to exercise strong user control.
- Scanning of outbound traffic for sensitive data, with admin control of masking or blocking information to prevent data leakage.
- Built-in load balancing and session management, allowing organizations to manage multiple applications behind a single instance of the Barracuda Web Application Firewall.
- The Barracuda Web Application Firewall on Amazon Web Services protects your applications in the cloud.

Public cloud hosted deployment of the Barracuda Web Application Firewall on Amazon Web Services currently supports One-Arm Proxy Mode.

The Barracuda Web Application Firewall is available hourly in the AWS Marketplace or you can bring your own license (BYOL).

### Licensing Options

The Barracuda Web Application Firewall AMI is available on Amazon Web Services with the Bring Your Own License (BYOL) and Hourly / Metered option.

**Bring Your Own License (BYOL)**

With the Bring Your Own License (BYOL) option, there will be no Barracuda Web Application Firewall Software charges, but Amazon Elastic Compute Cloud (Amazon EC2) usage charges on Amazon will be applicable:
https://aws.amazon.com/marketplace/pp/B014GEC986?qid=1502918471842&sr=0-2&ref_=srh_res_product_title

If you want to increase the performance of a license that you have already purchased, you can buy additional cores from Barracuda and reconfigure your VM for a larger instance type.

**Hourly / Metered**

With the Hourly/Metered licensing option, you complete the purchase or evaluation of the Barracuda Web Application Firewall entirely within the AWS Marketplace. After the instance is launched, it is provisioned automatically. You are charged hourly for both the Barracuda Web Application Firewall Software and Amazon Elastic Compute Cloud (Amazon EC2) usage on Amazon.

PAYG: https://aws.amazon.com/marketplace/pp/B014GEC526?qid=1502924445997&sr=0-1&ref_=srh_res_product_title

Metered: https://aws.amazon.com/marketplace/pp/B06Y6N5SZF?qid=1502924445997&sr=0-3&ref_=srh_res_product_title

If you want to increase the performance of an existing VM, configure it with a larger instance type on AWS and you will be charged accordingly by Amazon. The VM will automatically be reconfigured by Amazon with the resources and capabilities of the larger instance type.

**Before You Begin**

Before you deploy the Barracuda Web Application Firewall on Amazon Web Services, choose the licensing option (Bring Your Own License (BYOL) or Hourly / Metered). Then set up an Amazon Virtual Private Cloud (VPC).

A Virtual Private Cloud (VPC) is an isolated virtual network on Amazon Web Services (AWS) Cloud where you can launch AWS resources, such as Amazon EC2 instances. When creating a VPC, the IP address(es) should be in the form of Classless Inter-Domain Routing (CIDR) block (for example, 10.0.0.0/16). In a VPC, you can select your own IP address range, create subnets, configure routing tables and network gateways.

The VPC cannot be larger than /16.
For more information about CIDR notation, refer to Classless Inter-Domain Routing[4] on Wikipedia. For information about the number of VPCs that you can create, refer to Amazon VPC Limits[5].

To set up a VPC, complete the following steps. If you have already configured a VPC for the Barracuda Web Application Firewall, you can skip the steps below and continue with Deploying the Barracuda Web Application Firewall on Amazon Web Services.

DISCLAIMER: ALL OF THE SOURCE CODE ON THIS REPOSITORY IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 

NONINFRINGEMENT. IN NO EVENT SHALL BARRACUDA BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOURCE CODE.###
