# content

## External links to file map

| External URL | Repository File | Title and/or Description |
|-------------|-----------------|-------------|
| https://pelicanbaytennisgroups.com/ | [page/top.md](/page/top.md) | Men's Tennis Groups at Pelican Bay (Landing page) |
| https://pelicanbaytennisgroups.com/page/_template | [page/_template.md](/page/_template.md) | example (Information on Groups) |
| https://pelicanbaytennisgroups.com/page/groupsummaries | [page/groupsummaries.md](/page/groupsummaries.md) | Men's Tennis Groups (Information on Groups) |
| https://pelicanbaytennisgroups.com/page/womengroupsummaries | [page/womengroupsummaries.md](/page/womengroupsummaries.md) | Women's Tennis Groups (Information on Groups) |
| https://pelicanbaytennisgroups.com/page/groups/matchpoint/info | [page/groups/matchpoint/info.md](/page/groups/matchpoint/info.md) | MatchPoint Group FAQs (MatchPoint FAQs) |
| https://pelicanbaytennisgroups.com/page/groups/matchpoint/members | [page/groups/matchpoint/members.md](/page/groups/matchpoint/members.md) | MatchPoint Members Page (Current Month Pairings and Next Month Signup) |
| https://pelicanbaytennisgroups.com/page/groups/matchpoint/signup | [page/groups/matchpoint/signup.md](/page/groups/matchpoint/signup.md) | Signup form for MatchPoint members |
| https://pelicanbaytennisgroups.com/page/groups/players/info | [page/groups/players/info.md](/page/groups/players/info.md) | The Players Group FAQs (Players FAQs) |
| https://pelicanbaytennisgroups.com/page/groups/players/members | [page/groups/players/members.md](/page/groups/players/members.md) | Players Members Only (The Players Members Page - Schedules and Signup) |
| https://pelicanbaytennisgroups.com/page/groups/players/signup | [page/groups/players/signup.md](/page/groups/players/signup.md) | Signup form for Players members |
| https://pelicanbaytennisgroups.com/page/groups/stuart/members | [page/groups/stuart/members.md](/page/groups/stuart/members.md) | Stuart MWF Members Only (Current Month Pairings and Next Month Signup) |

## Sitemap

```mermaid
graph TD
    %% Site structure diagram with styling
    classDef default fill:#000,color:#fff,stroke:#666,stroke-width:1px;
    Root["/"]
    page["/page"]
    Root -->|"page"| page
    page_top["/page/top"]
    page -->|"top"| page_top
    page_groups["/page/groups"]
    Root -->|"groups"| page_groups
    page_groups_matchpoint["/page/groups/matchpoint"]
    page_groups -->|"matchpoint"| page_groups_matchpoint
    page_groups_players["/page/groups/players"]
    page_groups -->|"players"| page_groups_players
    page_groups_stuart["/page/groups/stuart"]
    page_groups -->|"stuart"| page_groups_stuart
    page__template["/page/_template"]
    page -->|"_template"| page__template
    page_groups_matchpoint_info["/page/groups/matchpoint/info"]
    page_groups_matchpoint -->|"info"| page_groups_matchpoint_info
    page_groups_matchpoint_members["/page/groups/matchpoint/members"]
    page_groups_matchpoint -->|"members"| page_groups_matchpoint_members
    page_groups_matchpoint_signup["/page/groups/matchpoint/signup"]
    page_groups_matchpoint -->|"signup"| page_groups_matchpoint_signup
    page_groups_players_info["/page/groups/players/info"]
    page_groups_players -->|"info"| page_groups_players_info
    page_groups_players_members["/page/groups/players/members"]
    page_groups_players -->|"members"| page_groups_players_members
    page_groups_players_signup["/page/groups/players/signup"]
    page_groups_players -->|"signup"| page_groups_players_signup
    page_groups_stuart_members["/page/groups/stuart/members"]
    page_groups_stuart -->|"members"| page_groups_stuart_members
    page_groupsummaries["/page/groupsummaries"]
    page -->|"groupsummaries"| page_groupsummaries
    page_womengroupsummaries["/page/womengroupsummaries"]
    page -->|"womengroupsummaries"| page_womengroupsummaries
```
