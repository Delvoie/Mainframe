# ASSIGNMENT 4 - QUICK REFERENCE SUMMARY

## Your Information
- **Name**: Lucas delvoie
- **User ID**: KC03FE1
- **Date**: Oct 25 2025

---

## ✅ COMPLETED FOR YOU (All Code Changes Done!)

### Files Updated:
1. ✅ **MNUSYYY.bms** → All YYY replaced with FE1
2. ✅ **UUMNUYYY.cbl** → All YYY replaced with FE1, author/date updated, all messages added
3. ✅ **MNUSBYYY.jcl** → All YYY replaced with FE1
4. ✅ **UUMNUYYY.jcl** → All YYY replaced with FE1
5. ✅ **DFHZITCL.jcl** → Ready to use

### Key Names to Remember:
- **Mapset**: MNUSFE1
- **Map**: MNUMFE1
- **Program**: UUMNUFE1
- **Transaction**: 9FE1
- **Group**: DCMAFD02

---

## 📝 YOUR TO-DO LIST (In Order)

### STEP 1: Upload Files to Mainframe
Upload these members to VISTA TN3270:
- `MNUSFE1` to `KC03FE1.DCMAFD02.A4.MNU.BMS`
- `UUMNUFE1` to `KC03FE1.DCMAFD02.A4.MNU.COBOL`
- `MNUSBFE1` to `KC03FE1.DCMAFD02.A4.MNU.JCL`
- `UUMNUFE1` to `KC03FE1.DCMAFD02.A4.MNU.JCL`
- `DFHZITCL` to `KC03FE1.DCMAFD02.A4.MNU.PROCLIB`

### STEP 2: Compile BMS Map
1. Submit JCL job `MNUSBFE1`
2. Verify RC=0
3. Save job summary as `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS`

### STEP 3: Compile COBOL Program
1. Submit JCL job `UUMNUFE1`
2. Verify RC=0
3. Save job summary as `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU`

### STEP 4: Setup CICS (Type these commands)
```
CEDA DEFINE MAPSET(MNUSFE1) GROUP(DCMAFD02)
CEDA DEFINE PROGRAM(UUMNUFE1) GROUP(DCMAFD02) TRANSID(9FE1)
CEDA DEFINE TRANSACTION(9FE1) GROUP(DCMAFD02) PROGRAM(UUMNUFE1)
CEDA DISPLAY GROUP DCMAFD02 ALL *FE1*
```
Then install each (type `I` next to each resource)

```
CECI SEND MAP(MNUMFE1) MAPSET(MNUSFE1)
CEMT SET PROG(UUMNUFE1) NEWCOPY
```

### STEP 5: Test and Take Screenshots
Run transaction `9FE1` and test:
- Type `1` → Screenshot 1 (Choice 1 is not available)
- Type `2` → Screenshot 2 (Choice 2 is not ready)
- Type `3` → Screenshot 3 (Choice 3 is being tested)
- Type `4` → Screenshot 4 (Choice 4 is not working)
- Type `5` → Screenshot 5 (Invalid input - KC03FE1)

### STEP 6: Submit
Zip these 12 files:
- 2 job summaries (BMS and MNU)
- 5 source files (MNUSBFE1.bms, UUMNUFE1.cbl, MNUSBFE1.jcl, UUMNUFE1.jcl, DFHZITCL.jcl)
- 5 screenshots

Upload to DCConnect!

---

## 🎯 Expected Messages

| Choice | Message |
|--------|---------|
| 1 | `Choice 1 is not available` |
| 2 | `Choice 2 is not ready    ` |
| 3 | `Choice 3 is being tested ` |
| 4 | `Choice 4 is not working  ` |
| 5 (or any invalid) | `Invalid input - KC03FE1` |
| 9 | `APPLICATION ENDING` |

---

## ⚠️ Critical Checks
- [ ] Both jobs have RC=0
- [ ] All files are ASCII (not EBCDIC)
- [ ] All 12 files in ZIP
- [ ] File names match exactly

---

For detailed instructions, see: **COMPLETE_ASSIGNMENT_INSTRUCTIONS.md**
