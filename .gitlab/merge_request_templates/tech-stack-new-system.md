# Tech Stack - New system

## Requestor to complete

Please don't merge this update before the Business Systems Analysts have reviewed and approved. Please make sure to complete the privacy review issue as soon as possible as we won't be able to merge until that is completed. 

Please answer the questions below:

1. Is this system replacing an existing system in our tech stack? 
    - [ ] Yes: Please make sure this MR also removes the system from the tech stack and proceed to create a [tech stack offboarding issue.](https://gitlab.com/gitlab-com/business-ops/Business-Operations/-/issues/new?issuable_template=offboarding_tech_stack)
    - [ ] No
1. Please link in the comments, or to this MR, a completed and approved [Vendor Contract Issue](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues)

1. Has a [Privacy Review been completed?](https://about.gitlab.com/handbook/legal/privacy/#privacy-review-process): 
    * [ ] Yes; **Link completed DPIA Issue in the MR comments**
    * [ ] No; **Complete [Privacy Review issue](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issuable_template=Vendor-Procurement-Privacy-Review)**

1. We deprovision access to all systems in our tech stack when a person leaves GitLab. Can you please indicate whether:
    - All GitLab team members need to be offboarded from this system
        -  [ ] If this is the case, please create an MR to update the [offboarding template](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/main/.gitlab/issue_templates/offboarding.md) and add the system under the correct department and person. Find instructions in the [Tech Stack](https://about.gitlab.com/handbook/business-ops/tech-stack-applications/#access-requests) handbook page. Add the MR to the comments.
    - Only certain team members need to be offboarded from this system (if the team members are scattered across too many departments or the system you are responsible for contains red data, please go with option 1)
        - [ ] If this is the case, please create an MR to update the [offboarding tasks templates per department](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/main/.gitlab/issue_templates/offboarding.md) and add the system under the correct department(s). Find instructions in the [Tech Stack](https://about.gitlab.com/handbook/business-ops/tech-stack-applications/#access-requests) handbook page. Add the MR to the comments.
        
1. Please [create an issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Update_Tech_Stack_Provisioner) to add the provisioners of the tool to the provisioners group. Link the issue to the comments of this MR.

1. Does data from this system need to be integrated into the [Enterprise Data Warehouse](https://about.gitlab.com/handbook/business-technology/data-team/platform/edw/) for reporting and analytics? Please answer with `Yes` or `No`. {+Add your answer here+}
    - If answer is yes: Create a '[New Data Source](https://gitlab.com/gitlab-data/analytics/-/issues/new?issuable_template=New%20Data%20Source)' issue in the Data Project. Keep in mind that new data sources are not free and the cost should be included in the total cost of the project. The cost of an automated data pipeline connector is arond usually 5-10k depending on complexity. If there is no budget OR no existing connector, the data will require custom development. For custom development, please create an issue and discuss possible options with the data team.  

> Examples for why you would need data integrated into the EDW:
  > - the data will be used as part of a new Key Performance Indicator or Performance Indicator
  > - the data needs to be part of lead-to-cash analysis
  > - the data needs to be joined with Marketo, Salesforce, or NetSuite data for cross-system analysis

### Personal Data Requests

If the `Add to Personal Data Request template?` box is marked as `Yes` on the Privacy Review issue, your tool will need to be added to our issue templates for Personal Data Requests. 

1. **Data access requests**: Add system to the list of applications in the [Personal Data Access Request issue template](https://gitlab.com/gitlab-com/gdpr-request/-/blob/master/.gitlab/issue_templates/personal_data_access_request.md) by opening an MR. Once completed, please paste the link in the comments of this MR.
1. **Data Deletion:** Add system to the list of applications in the [Account Deletion Request issue template](https://gitlab.com/gitlab-com/gdpr-request/-/blob/master/.gitlab/issue_templates/deletion_meta_issue.md) by opening an MR. Once completed, please paste the link in the comments of this MR.

## Security Risk to complete

- [ ] Determine if a BIA has been completed for this system
   - [ ] No: Coordinate BIA completion with assigned technical system owner
      - [ ] Update `data_classification` and `critical_systems_tier` attributes based on BIA response data


## Business Technology to complete

### To dos before merging (@marc_disabatino)

- [ ] Ensure privacy review has been linked
- [ ] Ensure all questions above have been answered and all action items have been completed


/cc @gitlab-com/internal-audit @disla @gitlab-com/gl-security/security-assurance/security-risk-team 
/assign @marc_disabatino @kylesmith2
/label ~"BusinessTechnology" ~"BT - TechStack" ~"BT-TechStack::To do" ~"BIA::Initiate"
