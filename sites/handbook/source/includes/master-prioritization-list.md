| Priority | Description | Issue label(s) |
| ------ | ------ | ------ |
| 1* | <a href="/handbook/engineering/security/#severity-and-priority-labels-on-security-issues">Security</a> | `bug::vulnerability` |
| 2* | Data Loss | `data loss` |
| 3* | Resilience, Reliability, <a href="/handbook/engineering/performance/index.html#availability">Availability</a>, <a href="/handbook/engineering/workflow/#infradev">and Performance</a>| `availability`, `infradev`, `Corrective Action`, `bug::performance` |
| 4 | Usability | `Usability benchmark`, `SUS::Impacting`, `UX debt` |
| 5 | Instrumentation | `instrumentation` |
| 6 | xMAU / ARR Drivers | `direction` |
| 7 | All other items not covered above | |

*indicates forced prioritization items with SLAs/SLOs

#### Forced Prioritization 

Any of the items with a "*" are considered issues driven by the attached [SLO or SLA](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#severity) and are expected to be delivered within our stated policy. There are two items that fall into Forced Prioritization: 

1. Security Issues labeled with `bug::vulnerability` must be delivered according to the stated [SLO](https://about.gitlab.com/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)
1. Issues supporting our product's scale which include `bug::availability` with [specific SLOs](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#availability) as well as `infradev`, `Corrective Action`, `ci-decomposition::phase*` that follow the stated [`type::bug` SLO](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#severity-slos)

Any issues outside of these labels are to be prioritized using [cross-functional prioritization](https://about.gitlab.com/handbook/product/cross-functional-prioritization/). Auto-scheduling issues based on automation or triage policies are not forced prioritization. These issues can be renegotiated for milestone delivery and reassigned by the DRI. 
