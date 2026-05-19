---
banner: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34"
banner-y: 0.4
cssclasses:
  - dashboard
---
# Bonjour, Nevette

> [!parisian] Today
> `= dateformat(date(today), "cccc, LLLL d, yyyy")`

## ✦ Active Projects

```dataview
TABLE status AS "Status", updated AS "Last Touched"
FROM "projects"
WHERE status != "archived"
SORT updated DESC
```

## ✦ This Week's Focus

- [ ] 
- [ ] 
- [ ] 

## ✦ Recent Brag Doc Entries

```dataview
LIST
FROM "brag"
SORT file.ctime DESC
LIMIT 5
```

## ✦ Inbox to Triage

```dataview
LIST
FROM "inbox"
SORT file.ctime DESC
```