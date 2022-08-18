### Feature Change Locks

We will enact a localized feature change lock (FCL) anytime there is an S1 or public-facing (status page) S2 incident on GitLab.com (including the License App, CustomersDot, and Versions) determined to be caused by a change from the development department. The [team](https://about.gitlab.com/company/team/structure/#organizational-structure) involved should be determined by the author, their line manager, and that manager's other direct reports.

Direct reports involved in an active [borrow](https://about.gitlab.com/handbook/product/product-processes/#borrow) should be included if they were involved in the authorship or review of the change.

An FCL assignment and creation must be approved by either the VP of Infrastructure or VP of Development. The purpose is to foster a sense of ownership and accountability amongst our teams, but this should not challenge our no-blame culture.

#### Timeline

Rough guidance on timeline is provided here to set expectations and urgency for an FCL.  We want to balance moving urgently with doing thoughtful important work to improve reliaiblity.  Note that as times shift we can adjust accordingly.   The DRI of an FCL should pull in the timeline where possible.  

The following bulleted list provides a suggested timeline starting from incident to completion of the FCL.  "Business day x" in this case refers to the x business day after the incident.  

The approver of the FCL will add the item to the daily reliability standup and will tag the development director so they can assign as appropriate.

* Day 0: Incident: 
* Business day 1:  update in daily reliability standup to give status
* Business day 2:  confirmation that an FCL is required for this incident and start planning.
* Business days 3-4:  planning time
* Business days 5-9 (1 week):  complete planned work
* Business days 10-11:  closing ceremony, retrospective and report back to standup

#### Activities

During the FCL, the team(s) exclusive focus is around [reliability work](#scope-of-work-during-fcl), and any feature type of work in-flight has to be paused or re-assigned. Maintainer duties can still be done during this period and should keep other teams moving forward. Explicitly higher priority work such as security and data loss prevention should continue as well. The team(s) must:

* Create a public slack channel called `#fcl-incident-[number]`, with members
    * The Team's Manager
    * The Author and their teammates
    * The Product Manager, the stage's Product leader, and the section's Product leader
    * All reviewer(s)
    * All maintainers(s)
    * Infrastructure Stable counterpart
    * The chain-of-command from the manager to the CTO (Sr Manager, Sr/Director, VP of Development, CTO, etc)
* Create an FCL epic or issue with the information below in the description
    * Name the epic or issue: [Group Name] FCL for Incident ####
    * FCL time period (start date - end date)
    * Link to the production incident issue
* Complete the written Incident Review documentation within the Incident Issue as the first priority after the incident is resolved.  The Incident Review must include completing all fields in the Incident Review section of the incident issue (see [incident issue template](https://gitlab.com/gitlab-com/gl-infra/production/-/blob/master/.gitlab/issue_templates/incident.md)).  The incident issue should serve as the single source of truth for this information, unless a linked confidential issue is required. Completing it should create a common understanding of the problem space and set a shared direction for the work that needs to be completed.
* See that not only all procedures were followed but also how improvements to procedures could have prevented it
* A work plan referencing all the Issues, Epics, and/or involved MRs must be created and used to identify the scope of work for the FCL. The work plan itself should be an Issue or Epic.
* Report daily to the Reliability & Security Stand-up using the template:
    * Exec-level summary
        * Date Started
        * Target End Date
        * Link to FCL Issue/Epic
        * Link to Incident Issue
        * Link to RCA Artifact
        * Link to Causal MR/Issue
        * [YYYY-MM-DD] update:
            * Highlights/lowlights
* Hold a synchronous `closing ceremony` upon completing the FCL to review the retrospectives and celebrate the learnings.
    * All FCL stakeholders and participants shall attend or participate async.  Managers of the groups participating in the FCL, including Sr. EMs and Directors should be invited.
    * Agenda includes reviewing FCL retrospective notes and sharing learnings about improving code change quality and reducing risk of availability.
    * Outcome includes [handbook](https://about.gitlab.com/handbook/) and [GitLab Docs](https://docs.gitlab.com/ee/) updates where applicable.

##### Scope of work during FCL

After the Incident Review is completed, the team(s) focus is on preventing similar problems from recurring and improving detection. This should include, but is not limited to:

* Address immediate corrective actions to prevent incident reoccurrence in the short term
* Introduce changes to reduce incident detection time (improve collected metrics, service level monitoring, which users are impacted)
* Introduce changes to reduce mitigation time (improve rollout process through feature flags, and clean rollbacks)
* Ensure that the incident is reproducible in environments outside of production (Detect issues in staging, increase end-to-end integration test coverage)
* Improve development test coverage to detect problems (Harden unit testing, make it simpler to detect problems during reviews)
* Create issues with general process improvements or asks for other teams

Examples of this work include, but are not limited to:

* Fixing items from the Incident Review which are identified as causal or contributing to the incident.
* Improving observability
* Improving unit test coverage
* Adding integration tests
* Improving service level monitoring
* Improving symmetry of pre-production environments
* Improving the [GitLab Performance Tool](https://gitlab.com/gitlab-org/quality/performance)
* Adding mock data to tests or environments
* Making process improvements
* Populating their backlog with further reliability work
* Security work
* Improve communication and workflows with other teams or counterparts

Any work for the specific team kicked off during this period must be completed, even if it takes longer than the duration of the FCL. Any work directly related to the incident should be kicked off and completed even if the FCL is over. Work paused due to the FCL should be the priority to resume after the FCL is over. Items created for other teams or on a global level don't affect the end of the FCL.

The stable counterpart from Infrastructure will be available to review and consult on the work plan.
