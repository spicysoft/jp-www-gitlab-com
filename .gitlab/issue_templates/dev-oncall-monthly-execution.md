**Background**:

Handbook Entry https://about.gitlab.com/handbook/engineering/development/processes/Infra-Dev-Escalation/
See epic https://gitlab.com/groups/gitlab-com/-/epics/122

**Instructions**:

* Directors and Managers: Sign up as coordinator for the month, please **assign** this issue to yourself, and update the sign up sheet (link below) **Coordinator** column.
* Engineers: sign up slots in the [scheduling spreadsheet](https://docs.google.com/spreadsheets/d/10uI2GzqSvITdxC5djBo3RN34p8zFfxNASVnFlSh8faU/edit#gid=382724865).
* To assist assignment exercise, here are [eligible engineers and their timezones](https://docs.google.com/spreadsheets/d/1Uug3QHeGYobzUbB2ajJsw7CKe7vy1xRdflO5FOuHgDw/edit#gid=2117413239).
* There is additional information regarding weekend shifts, which can be found in this shared document "[Additional Notes for Weekend Shifts](https://drive.google.com/drive/search?q=%22Additional%20Notes%20for%20Weekend%20Shifts%22)".
* A nice handy tool for coordinators to find available engineers quickly without going through multiple spreadsheets above.
  * Instructions: https://gitlab.com/gitlab-com/dev-on-call
  * Video: https://www.youtube.com/watch?v=D0bR0WnvdgM
* The manual process for coordinators is documented in this process page [how-to](https://about.gitlab.com/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#how-to)
  * Note the recommendation to check the team members' calendar to ensure they are available. This will help ensure team members are not scheduled when on leave, and reduce the need for rescheduling. 
* Coordinator: publish on-call schedule to the shared calendar.
  1. Keep the tab of the month active (displayed).
  1. Use the menu `Sync to Calendar` on the menu bar. It takes 3\~5 minutes.
  1. Verify the calendar `On-call schedule shifts` is populated. This is currently a manual process to verify all slots are filled.  If there are open slots on the `On-call schedule shifts` calendar you can either manually add them to the calendar or debug the on-call spreadsheet. Typically when calendar slots remain open there is a data integrity issue within columns E or F for the given time slot.  **It is safe to run `Sync To Calendar` multiple times, it is idempotent**.
  1. If you run into failures of calendar sync, double check if the calendar ID is in cell 197C and the calendar link is in cell 198C. If you receive the message `TypeError: Cannot read property 'getName' of nullDetails`, you may need permission to manage the Google Calendar. Ping Chun Du on slack. 
* Coordinator: close this issue when the month wraps up.

**Action items and due dates**:

* [ ] Coordinator calling for sign-up and doing assignments: start around 15th of the previous month
* [ ] Coordinator nomination: all **assigned** engineers are notified by mentioning them by name in this issue **explicitly**
  * [ ] Engineers who are on leave should inform Coordinator and the Coordinator should find an appropriate engineer.  
  * [ ] Engineers are encouraged to help the Coordinator by seeking replacements for time-slots that don't work for them.  Swap for like days/shifts later in the schedule by reaching out to your peers directly.  Engineers who are unsuccessful in finding a replacement please work with Coordinator to find a solution. 
  * Example wording for assignment notification and encouraging individuals to seek swapping shifts can be found [here](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/8330#note_416317851)
* [ ] All slots are signed up: due by 2 days before the 1st of the month
* [ ] Coordinator publishes on-call schedule to the shared calendar when all slots are confirmed. (see instructions above)

**Additional Information**

* For more detail of other information, please refer to [process documentation](https://about.gitlab.com/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html).

/label ~"Engineering Management" 
/epic https://gitlab.com/groups/gitlab-com/-/epics/122
