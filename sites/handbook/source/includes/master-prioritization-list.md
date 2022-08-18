| Priority | Description | Issue label(s) |
| ------ | ------ | ------ |
| 1* | <a href="/handbook/engineering/security/#severity-and-priority-labels-on-security-issues">Security fixes</a> | `bug::vulnerability` |
| 2 | Data-loss prevention | `data loss` |
| 3* | <a href="/handbook/engineering/performance/index.html#availability">Availability</a>, <a href="/handbook/engineering/workflow/#infradev">Infradev</a>, Incident Corrective Actions, [CI decomposition](https://about.gitlab.com/company/team/structure/working-groups/database-scalability/) | `availability`, `infradev`, `Corrective Action`, `ci-decomposition::phase*` |
| 4 | Fixing regressions (things that worked before) | `regression` |
| 5 | Performance Refinement | `bug::performance` |
| 6 | Usability Improvements and User Experience to drive xMAU |`SUS`, `UX debt`|
| 7 | Instrumentation improvements, particularly for xMAU | `instrumentation` |
| 8 | ARR Drivers | |
| 9 | Identified for Dogfooding | `Dogfooding::Build in GitLab`, `Dogfooding::Rebuild in GitLab` |
| 10 | Velocity of new features, technical debt, community contributions, and all other improvements | `direction`, `feature`, `technical debt` |
| 11 | Behaviors that yield higher predictability (because this inevitably slows us down) | `predictability` |

*indicates forced prioritization items with SLAs/SLOs
