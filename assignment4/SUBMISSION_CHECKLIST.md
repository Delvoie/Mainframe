# ASSIGNMENT 4 SUBMISSION CHECKLIST

## Student: Lucas delvoie (KC03FE1)

---

## PHASE 1: UPLOAD TO MAINFRAME ✓
- [ ] Uploaded MNUSFE1.bms to KC03FE1.DCMAFD02.A4.MNU.BMS
- [ ] Uploaded UUMNUFE1.cbl to KC03FE1.DCMAFD02.A4.MNU.COBOL
- [ ] Uploaded MNUSBFE1.jcl to KC03FE1.DCMAFD02.A4.MNU.JCL
- [ ] Uploaded UUMNUFE1.jcl to KC03FE1.DCMAFD02.A4.MNU.JCL
- [ ] Uploaded DFHZITCL.jcl to KC03FE1.DCMAFD02.A4.MNU.PROCLIB

---

## PHASE 2: BMS COMPILATION ✓
- [ ] Submitted job MNUSBFE1
- [ ] Verified job completed with RC=0
- [ ] Saved job summary as KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS (PDF or XDC)
- [ ] Downloaded job summary to PC

---

## PHASE 3: COBOL COMPILATION ✓
- [ ] Submitted job UUMNUFE1
- [ ] Verified job completed with RC=0
- [ ] Saved job summary as KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU (PDF or XDC)
- [ ] Downloaded job summary to PC

---

## PHASE 4: CICS SETUP ✓
- [ ] Connected to CICS
- [ ] Defined MAPSET (MNUSFE1)
- [ ] Defined PROGRAM (UUMNUFE1)
- [ ] Defined TRANSACTION (9FE1)
- [ ] Displayed all resources with: CEDA DISPLAY GROUP DCMAFD02 ALL *FE1*
- [ ] Installed MAPSET
- [ ] Installed PROGRAM
- [ ] Installed TRANSACTION
- [ ] Sent initial map: CECI SEND MAP(MNUMFE1) MAPSET(MNUSFE1)
- [ ] Set NEWCOPY: CEMT SET PROG(UUMNUFE1) NEWCOPY

---

## PHASE 5: TESTING & SCREENSHOTS ✓
- [ ] Tested transaction 9FE1 - menu displays correctly
- [ ] Tested Choice 1 - message: "Choice 1 is not available"
- [ ] SCREENSHOT 1 saved as: KC03FE1.DCMAFD02.A4.SCREENSHOT1.jpg
- [ ] Tested Choice 2 - message: "Choice 2 is not ready    "
- [ ] SCREENSHOT 2 saved as: KC03FE1.DCMAFD02.A4.SCREENSHOT2.jpg
- [ ] Tested Choice 3 - message: "Choice 3 is being tested "
- [ ] SCREENSHOT 3 saved as: KC03FE1.DCMAFD02.A4.SCREENSHOT3.jpg
- [ ] Tested Choice 4 - message: "Choice 4 is not working  "
- [ ] SCREENSHOT 4 saved as: KC03FE1.DCMAFD02.A4.SCREENSHOT4.jpg
- [ ] Tested Invalid Input - message: "Invalid input - KC03FE1"
- [ ] SCREENSHOT 5 saved as: KC03FE1.DCMAFD02.A4.SCREENSHOT5.jpg
- [ ] Tested Choice 9 - message: "APPLICATION ENDING"

---

## PHASE 6: FILE PREPARATION ✓

### Job Summaries (2 files):
- [ ] KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS
- [ ] KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU

### Source Files (5 files):
- [ ] MNUSBFE1.bms (in submission folder)
- [ ] UUMNUFE1.cbl (in submission folder)
- [ ] MNUSBFE1.jcl (in submission folder)
- [ ] UUMNUFE1.jcl (in submission folder)
- [ ] DFHZITCL.jcl (in submission folder)

### Screenshots (5 files):
- [ ] KC03FE1.DCMAFD02.A4.SCREENSHOT1.jpg
- [ ] KC03FE1.DCMAFD02.A4.SCREENSHOT2.jpg
- [ ] KC03FE1.DCMAFD02.A4.SCREENSHOT3.jpg
- [ ] KC03FE1.DCMAFD02.A4.SCREENSHOT4.jpg
- [ ] KC03FE1.DCMAFD02.A4.SCREENSHOT5.jpg

---

## PHASE 7: FILE VERIFICATION ✓
- [ ] All text files are in ASCII format (NOT EBCDIC)
- [ ] Opened each file to verify readability
- [ ] All file names match exactly as specified
- [ ] Total of 12 files ready for submission

---

## PHASE 8: ZIP & SUBMIT ✓
- [ ] Created folder: KC03FE1_Assignment4
- [ ] Copied all 12 files to this folder
- [ ] Created ZIP file: KC03FE1_DCMAFD02_A4.zip
- [ ] Verified ZIP contains exactly 12 files
- [ ] Logged into DCConnect
- [ ] Uploaded ZIP file to Assignment 4 folder
- [ ] Verified upload was successful

---

## FINAL VERIFICATION ✓
- [ ] Both JCL jobs had RC=0
- [ ] All 5 messages tested and work correctly
- [ ] All 5 screenshots clearly show messages
- [ ] All files in ASCII format
- [ ] All 12 files in ZIP
- [ ] ZIP file uploaded to DCConnect

---

## GRADING SUMMARY
**Total: 60 marks (5 marks per file × 12 files)**

1. JOB.SUMMARY.BMS - 5 marks
2. JOB.SUMMARY.MNU - 5 marks
3. MNUSBFE1.bms - 5 marks
4. UUMNUFE1.cbl - 5 marks
5. MNUSBFE1.jcl - 5 marks
6. UUMNUFE1.jcl - 5 marks
7. DFHZITCL.jcl - 5 marks
8. SCREENSHOT1.jpg - 5 marks
9. SCREENSHOT2.jpg - 5 marks
10. SCREENSHOT3.jpg - 5 marks
11. SCREENSHOT4.jpg - 5 marks
12. SCREENSHOT5.jpg - 5 marks

---

**Date Completed**: _______________

**Submitted to DCConnect**: _______________

**Grade Received**: _____/60

---

🎉 **CONGRATULATIONS! YOU'RE DONE!** 🎉
