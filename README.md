# content

## External links to file map

| External URL | Repository File | Title and/or Description |
|-------------|-----------------|-------------|
| https://pelicanbaytennisgroups.com/ | [page/top.md](/page/top.md) | Tennis Groups at Pelican Bay (Landing page) |
| https://pelicanbaytennisgroups.com/page/MinneapolisGuitarsforVets | [page/MinneapolisGuitarsforVets.md](/page/MinneapolisGuitarsforVets.md) | Minneapolis Guitars for Vets Chapter (landing page) |
| https://pelicanbaytennisgroups.com/page/_template | [page/_template.md](/page/_template.md) | example (Information on Groups) |
| https://pelicanbaytennisgroups.com/page/groupsummaries | [page/groupsummaries.md](/page/groupsummaries.md) | Men's Tennis Groups (Information on Groups) |
| https://pelicanbaytennisgroups.com/page/womengroupsummaries | [page/womengroupsummaries.md](/page/womengroupsummaries.md) | Women's Tennis Groups (Information on Groups) |
| https://pelicanbaytennisgroups.com/page/groups/signupprocess | [page/groups/signupprocess.md](/page/groups/signupprocess.md) | Monthly Signup for Matches (Chelsea and GroupPairings Tool) |
| https://pelicanbaytennisgroups.com/page/groups/bridge/signup | [page/groups/bridge/signup.md](/page/groups/bridge/signup.md) | Signup form for St Lucia Bridge members |
| https://pelicanbaytennisgroups.com/page/groups/bridge/st-lucia | [page/groups/bridge/st-lucia.md](/page/groups/bridge/st-lucia.md) | St. Lucia Bridge Schedule (Landing page) |
| https://pelicanbaytennisgroups.com/page/groups/bridgemn/stpaul | [page/groups/bridgemn/stpaul.md](/page/groups/bridgemn/stpaul.md) | St. Paul Bridge Schedule (Landing page) |
| https://pelicanbaytennisgroups.com/page/groups/matchpoint/info | [page/groups/matchpoint/info.md](/page/groups/matchpoint/info.md) | MatchPoint Group FAQs (MatchPoint FAQs) |
| https://pelicanbaytennisgroups.com/page/groups/matchpoint/members | [page/groups/matchpoint/members.md](/page/groups/matchpoint/members.md) | MatchPoint Members Page (Current Month Pairings and Next Month Signup) |
| https://pelicanbaytennisgroups.com/page/groups/matchpoint/scheduleonly | [page/groups/matchpoint/scheduleonly.md](/page/groups/matchpoint/scheduleonly.md) | MatchPoint Members Schedule (Current Month Pairings) |
| https://pelicanbaytennisgroups.com/page/groups/matchpoint/signup | [page/groups/matchpoint/signup.md](/page/groups/matchpoint/signup.md) | Signup form for MatchPoint members |
| https://pelicanbaytennisgroups.com/page/groups/newgroup/members | [page/groups/newgroup/members.md](/page/groups/newgroup/members.md) | NewGroup Members Only (NewGroup Members Page - Schedules and Signup) |
| https://pelicanbaytennisgroups.com/page/groups/newgroup/newgroupinfo | [page/groups/newgroup/newgroupinfo.md](/page/groups/newgroup/newgroupinfo.md) | NewGroup Tennis FAQs (NewGroupTemplate for FAQs) |
| https://pelicanbaytennisgroups.com/page/groups/newgroup/signup | [page/groups/newgroup/signup.md](/page/groups/newgroup/signup.md) | Signup form for NewGroup members |
| https://pelicanbaytennisgroups.com/page/groups/players/info | [page/groups/players/info.md](/page/groups/players/info.md) | The Players Group FAQs (Players FAQs) |
| https://pelicanbaytennisgroups.com/page/groups/players/members | [page/groups/players/members.md](/page/groups/players/members.md) | Players Members Only (The Players Members Page - Schedules and Signup) |
| https://pelicanbaytennisgroups.com/page/groups/players/signup | [page/groups/players/signup.md](/page/groups/players/signup.md) | Signup form for Players members |
| https://pelicanbaytennisgroups.com/page/groups/raffo/info | [page/groups/raffo/info.md](/page/groups/raffo/info.md) | Raffo Sunday FAQs (Raffo FAQs) |
| https://pelicanbaytennisgroups.com/page/groups/raffo/member | [page/groups/raffo/member.md](/page/groups/raffo/member.md) | Raffo Sunday Members Only (Raffo Members Page - Schedules and Signup) |
| https://pelicanbaytennisgroups.com/page/groups/raffo/signup | [page/groups/raffo/signup.md](/page/groups/raffo/signup.md) | Signup form for NewGroup members |
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
    page_groups_bridge["/page/groups/bridge"]
    page_groups -->|"bridge"| page_groups_bridge
    page_groups_bridgemn["/page/groups/bridgemn"]
    page_groups -->|"bridgemn"| page_groups_bridgemn
    page_groups_matchpoint["/page/groups/matchpoint"]
    page_groups -->|"matchpoint"| page_groups_matchpoint
    page_groups_newgroup["/page/groups/newgroup"]
    page_groups -->|"newgroup"| page_groups_newgroup
    page_groups_players["/page/groups/players"]
    page_groups -->|"players"| page_groups_players
    page_groups_raffo["/page/groups/raffo"]
    page_groups -->|"raffo"| page_groups_raffo
    page_groups_stuart["/page/groups/stuart"]
    page_groups -->|"stuart"| page_groups_stuart
    page_MinneapolisGuitarsforVets["/page/MinneapolisGuitarsforVets"]
    page -->|"MinneapolisGuitarsforVets"| page_MinneapolisGuitarsforVets
    page__template["/page/_template"]
    page -->|"_template"| page__template
    page_groups_bridge_signup["/page/groups/bridge/signup"]
    page_groups_bridge -->|"signup"| page_groups_bridge_signup
    page_groups_bridge_st-lucia["/page/groups/bridge/st-lucia"]
    page_groups_bridge -->|"st-lucia"| page_groups_bridge_st-lucia
    page_groups_bridgemn_stpaul["/page/groups/bridgemn/stpaul"]
    page_groups_bridgemn -->|"stpaul"| page_groups_bridgemn_stpaul
    page_groups_matchpoint_info["/page/groups/matchpoint/info"]
    page_groups_matchpoint -->|"info"| page_groups_matchpoint_info
    page_groups_matchpoint_members["/page/groups/matchpoint/members"]
    page_groups_matchpoint -->|"members"| page_groups_matchpoint_members
    page_groups_matchpoint_scheduleonly["/page/groups/matchpoint/scheduleonly"]
    page_groups_matchpoint -->|"scheduleonly"| page_groups_matchpoint_scheduleonly
    page_groups_matchpoint_signup["/page/groups/matchpoint/signup"]
    page_groups_matchpoint -->|"signup"| page_groups_matchpoint_signup
    page_groups_newgroup_members["/page/groups/newgroup/members"]
    page_groups_newgroup -->|"members"| page_groups_newgroup_members
    page_groups_newgroup_newgroupinfo["/page/groups/newgroup/newgroupinfo"]
    page_groups_newgroup -->|"newgroupinfo"| page_groups_newgroup_newgroupinfo
    page_groups_newgroup_signup["/page/groups/newgroup/signup"]
    page_groups_newgroup -->|"signup"| page_groups_newgroup_signup
    page_groups_players_info["/page/groups/players/info"]
    page_groups_players -->|"info"| page_groups_players_info
    page_groups_players_members["/page/groups/players/members"]
    page_groups_players -->|"members"| page_groups_players_members
    page_groups_players_signup["/page/groups/players/signup"]
    page_groups_players -->|"signup"| page_groups_players_signup
    page_groups_raffo_info["/page/groups/raffo/info"]
    page_groups_raffo -->|"info"| page_groups_raffo_info
    page_groups_raffo_member["/page/groups/raffo/member"]
    page_groups_raffo -->|"member"| page_groups_raffo_member
    page_groups_raffo_signup["/page/groups/raffo/signup"]
    page_groups_raffo -->|"signup"| page_groups_raffo_signup
    page_groups_signupprocess["/page/groups/signupprocess"]
    page_groups -->|"signupprocess"| page_groups_signupprocess
    page_groups_stuart_members["/page/groups/stuart/members"]
    page_groups_stuart -->|"members"| page_groups_stuart_members
    page_groupsummaries["/page/groupsummaries"]
    page -->|"groupsummaries"| page_groupsummaries
    page_womengroupsummaries["/page/womengroupsummaries"]
    page -->|"womengroupsummaries"| page_womengroupsummaries
```
