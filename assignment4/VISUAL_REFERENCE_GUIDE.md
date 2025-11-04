# ASSIGNMENT 4 - VISUAL REFERENCE GUIDE

## 📁 FILE STRUCTURE REFERENCE

```
assignment4/
│
├── KC03FE1.DCMAFD02.A4.MNU.BMS/
│   └── MNUSYYY.bms          ← Upload as member MNUSFE1
│
├── KC03FE1.DCMAFD02.A4.MNU.COBOL/
│   └── UUMNUYYY.cbl          ← Upload as member UUMNUFE1
│
├── KC03FE1.DCMAFD02.A4.MNU.JCL/
│   ├── MNUSBYYY.jcl          ← Upload as member MNUSBFE1
│   └── UUMNUYYY.jcl          ← Upload as member UUMNUFE1
│
├── KC03FE1.DCMAFD02.A4.MNU.PROCLIB/
│   └── DFHZITCL.jcl          ← Upload as member DFHZITCL
│
└── submission/               ← Copy all files here for submission
    ├── MNUSBFE1.bms         ✓
    ├── UUMNUFE1.cbl         ✓
    ├── MNUSBFE1.jcl         ✓
    ├── UUMNUFE1.jcl         ✓
    └── DFHZITCL.jcl         ✓
```

---

## 🔄 WORKFLOW DIAGRAM

```
┌─────────────────────────────────────────────────────────────┐
│ PHASE 1: UPLOAD FILES TO MAINFRAME (VISTA TN3270)         │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│ PHASE 2: COMPILE BMS MAP (Submit MNUSBFE1.jcl)            │
│          → Get RC=0 → Save Job Summary                      │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│ PHASE 3: COMPILE COBOL (Submit UUMNUFE1.jcl)              │
│          → Get RC=0 → Save Job Summary                      │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│ PHASE 4: SETUP CICS RESOURCES                               │
│          → Define MAPSET, PROGRAM, TRANSACTION              │
│          → Install all three resources                       │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│ PHASE 5: TEST TRANSACTION 9FE1                             │
│          → Test all choices (1,2,3,4,9, and invalid)       │
│          → Take 5 screenshots                                │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│ PHASE 6: PREPARE SUBMISSION                                 │
│          → Gather 12 files → ZIP → Upload to DCConnect      │
└─────────────────────────────────────────────────────────────┘
```

---

## 🗺️ CICS RESOURCE RELATIONSHIPS

```
GROUP: DCMAFD02
    │
    ├── MAPSET: MNUSFE1
    │       └── Contains MAP: MNUMFE1
    │
    ├── PROGRAM: UUMNUFE1
    │       └── Uses MAPSET: MNUSFE1
    │
    └── TRANSACTION: 9FE1
            └── Starts PROGRAM: UUMNUFE1
```

---

## 📊 TESTING FLOW CHART

```
User types: 9FE1
      ↓
┌──────────────────┐
│  MAIN MENU       │
│  displayed       │
└──────────────────┘
      ↓
User enters choice
      ↓
┌─────────────────────────────────────────┐
│  Choice 1 → "Choice 1 is not available" │
│  Choice 2 → "Choice 2 is not ready    " │
│  Choice 3 → "Choice 3 is being tested " │
│  Choice 4 → "Choice 4 is not working  " │
│  Choice 9 → "APPLICATION ENDING"        │
│  Other    → "Invalid input - KC03FE1"   │
└─────────────────────────────────────────┘
      ↓
Menu redisplays (except for Choice 9)
```

---

## 📋 COBOL PROGRAM STRUCTURE

```
UUMNUFE1
│
├── 000-MAIN
│   └── Handle MAPFAIL → 100-FIRST-TIME
│       Receive MAP
│       Go to 200-MAIN-LOGIC
│
├── 100-FIRST-TIME
│   └── Send initial blank map
│       Return with TRANSID 9FE1
│
├── 200-MAIN-LOGIC
│   └── Evaluate CHOICEI
│       ├── '1' → 300-CHOICE-ONE
│       ├── '2' → 400-CHOICE-TWO
│       ├── '3' → 500-CHOICE-THREE
│       ├── '4' → 600-CHOICE-FOUR
│       ├── '9' → 900-EXIT
│       └── Other → 800-INVALID-INPUT
│
├── 300-CHOICE-ONE
│   └── Display: "Choice 1 is not available"
│       Return with TRANSID 9FE1
│
├── 400-CHOICE-TWO
│   └── Display: "Choice 2 is not ready    "
│       Return with TRANSID 9FE1
│
├── 500-CHOICE-THREE
│   └── Display: "Choice 3 is being tested "
│       Return with TRANSID 9FE1
│
├── 600-CHOICE-FOUR
│   └── Display: "Choice 4 is not working  "
│       Return with TRANSID 9FE1
│
├── 800-INVALID-INPUT
│   └── Display: "Invalid input - KC03FE1"
│       Return with TRANSID 9FE1
│
└── 900-EXIT
    └── Display: "APPLICATION ENDING"
        Return (end transaction)
```

---

## 🎯 CICS COMMAND QUICK REFERENCE

### Definition Commands:
```
CEDA DEFINE MAPSET(MNUSFE1) GROUP(DCMAFD02)
CEDA DEFINE PROGRAM(UUMNUFE1) GROUP(DCMAFD02) TRANSID(9FE1)
CEDA DEFINE TRANSACTION(9FE1) GROUP(DCMAFD02) PROGRAM(UUMNUFE1)
```

### Display Command:
```
CEDA DISPLAY GROUP DCMAFD02 ALL *FE1*
```

### Installation:
```
Type 'I' next to each resource in the display
```

### Testing Commands:
```
CECI SEND MAP(MNUMFE1) MAPSET(MNUSFE1)
CEMT SET PROG(UUMNUFE1) NEWCOPY
```

### Run Transaction:
```
9FE1
```

---

## 📦 SUBMISSION PACKAGE (12 Files)

```
KC03FE1_DCMAFD02_A4.zip
│
├── Job Summaries (2)
│   ├── KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS
│   └── KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU
│
├── Source Files (5)
│   ├── MNUSBFE1.bms
│   ├── UUMNUFE1.cbl
│   ├── MNUSBFE1.jcl
│   ├── UUMNUFE1.jcl
│   └── DFHZITCL.jcl
│
└── Screenshots (5)
    ├── KC03FE1.DCMAFD02.A4.SCREENSHOT1.jpg (Choice 1)
    ├── KC03FE1.DCMAFD02.A4.SCREENSHOT2.jpg (Choice 2)
    ├── KC03FE1.DCMAFD02.A4.SCREENSHOT3.jpg (Choice 3)
    ├── KC03FE1.DCMAFD02.A4.SCREENSHOT4.jpg (Choice 4)
    └── KC03FE1.DCMAFD02.A4.SCREENSHOT5.jpg (Invalid)
```

---

## 🔑 KEY IDENTIFIERS SUMMARY

| Component | Name |
|-----------|------|
| User ID | KC03FE1 |
| Author | Lucas delvoie |
| Date | Oct 25 2025 |
| Mapset | MNUSFE1 |
| Map | MNUMFE1 |
| Program | UUMNUFE1 |
| Transaction | 9FE1 |
| Group | DCMAFD02 |
| BMS JCL | MNUSBFE1 |
| COBOL JCL | UUMNUFE1 |

---

## ⚡ QUICK COMMANDS CHEAT SHEET

### In ISPF:
- `3.4` - Dataset list
- `E` - Edit dataset
- `S` - Submit JCL
- `=SD` - Go to SDSF
- `XDC` - Save as XDC file

### In CICS:
- Connect: `CICS`
- Define: `CEDA DEFINE`
- Display: `CEDA DISPLAY`
- Install: Type `I`
- Test: `CECI SEND`
- Newcopy: `CEMT SET`
- Run: `9FE1`

---

## 💡 TROUBLESHOOTING MAP

```
Problem: BMS compile fails
    ↓
Check: Mapset name = MNUSFE1
Check: Dataset names in JCL
Check: Member exists in dataset
    ↓
Fix and resubmit

─────────────────────────────────

Problem: COBOL compile fails
    ↓
Check: COPY MNUMFE1 statement
Check: All MAP/MAPSET names
Check: PROGLIB dataset access
    ↓
Fix and resubmit

─────────────────────────────────

Problem: Transaction doesn't work
    ↓
Check: All 3 resources installed
Run: CEMT SET PROG(UUMNUFE1) NEWCOPY
Check: Transaction ID = 9FE1
Check: Program name = UUMNUFE1
    ↓
Retry transaction

─────────────────────────────────

Problem: Messages don't display
    ↓
Check: Message spacing is exact
Check: Using MSGO field name
Run: NEWCOPY command
    ↓
Test again
```

---

## 📸 SCREENSHOT REQUIREMENTS

Each screenshot must clearly show:
1. ✓ The MAIN MENU title
2. ✓ All 5 choice options
3. ✓ The choice entered (in CHOICE field)
4. ✓ The message displayed (at bottom)
5. ✓ CICS terminal indicator

---

## ✅ FINAL PRE-SUBMISSION CHECK

```
[√] Both JCL jobs: RC=0
[√] All 5 test messages work
[√] All 5 screenshots captured
[√] All files are ASCII
[√] 12 files in ZIP
[√] ZIP uploaded to DCConnect
```

---

**YOU'RE READY TO GET 100%!** 🎉
