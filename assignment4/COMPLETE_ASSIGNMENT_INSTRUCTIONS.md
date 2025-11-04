# MAINFRAME ASSIGNMENT 4 - COMPLETE STEP-BY-STEP INSTRUCTIONS
## Student: Lucas delvoie | ID: KC03FE1 | Date: Oct 25 2025

---

## ✅ WHAT I'VE ALREADY COMPLETED FOR YOU

All your code files have been updated with the correct values:
- ✅ Replaced all YYY with FE1 throughout all files
- ✅ Updated author name to "Lucas delvoie"
- ✅ Updated date to "Oct 25 2025"
- ✅ Added all required messages for choices 1, 2, 3, 4
- ✅ Added invalid input error message with your userid
- ✅ Fixed all map names, mapset names, transaction IDs, and program names

---

## 📋 WHAT YOU NEED TO DO TO GET 100%

### PHASE 1: UPLOAD FILES TO MAINFRAME (VISTA TN3270)

#### Step 1: Upload BMS File
1. Open **VISTA TN3270 emulator**
2. Login to the mainframe
3. Go to ISPF (option 3.4)
4. Navigate to dataset: `KC03FE1.DCMAFD02.A4.MNU.BMS`
5. Type `E` next to it and press ENTER to edit
6. Upload the file `MNUSYYY.bms` from your local folder:
   - From: `KC03FE1.DCMAFD02.A4.MNU.BMS\MNUSYYY.bms`
   - To member: `MNUSFE1`
7. Verify the file uploaded correctly

#### Step 2: Upload COBOL File
1. Navigate to dataset: `KC03FE1.DCMAFD02.A4.MNU.COBOL`
2. Type `E` next to it and press ENTER
3. Upload the file `UUMNUYYY.cbl` from your local folder:
   - From: `KC03FE1.DCMAFD02.A4.MNU.COBOL\UUMNUYYY.cbl`
   - To member: `UUMNUFE1`
4. Verify the file uploaded correctly

#### Step 3: Upload JCL Files
1. Navigate to dataset: `KC03FE1.DCMAFD02.A4.MNU.JCL`
2. Type `E` next to it and press ENTER
3. Upload TWO files:
   - Upload `MNUSBYYY.jcl` as member `MNUSBFE1`
   - Upload `UUMNUYYY.jcl` as member `UUMNUFE1`
4. Verify both files uploaded correctly

#### Step 4: Upload PROCLIB File
1. Navigate to dataset: `KC03FE1.DCMAFD02.A4.MNU.PROCLIB`
2. Type `E` next to it and press ENTER
3. Upload the file `DFHZITCL.jcl` as member `DFHZITCL`
4. Verify the file uploaded correctly

---

### PHASE 2: COMPILE BMS MAP

#### Step 5: Submit BMS JCL Job
1. In ISPF, go to option **3.4**
2. Navigate to: `KC03FE1.DCMAFD02.A4.MNU.JCL`
3. Type `E` next to it and press ENTER
4. Find member `MNUSBFE1` and type `S` next to it to SUBMIT
5. Press ENTER to submit the job
6. Check the job output:
   - Press **PF3** or type `=SD` to go to SDSF
   - Look for job `MNUSBFE1`
   - Type `S` next to it to view the output
7. **VERIFY RETURN CODE = 0** (no errors)
8. If there are errors, fix them and resubmit until RC=0

#### Step 6: Save BMS Job Summary as PDF
**Option A - Using XDC in ISPF:**
1. In SDSF, with job `MNUSBFE1` selected
2. Type `XDC` on command line
3. Save the dataset as: `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS`
4. Download this file to your PC

**Option B - Using Eclipse Developer:**
1. Open the job output in Developer
2. File → Print → Print to PDF
3. Save as: `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS.pdf`
4. Save to your submission folder

---

### PHASE 3: COMPILE COBOL PROGRAM

#### Step 7: Submit COBOL Compile JCL Job
1. In ISPF, go to option **3.4**
2. Navigate to: `KC03FE1.DCMAFD02.A4.MNU.JCL`
3. Type `E` next to it and press ENTER
4. Find member `UUMNUFE1` and type `S` next to it to SUBMIT
5. Press ENTER to submit the job
6. Check the job output in SDSF
7. **VERIFY RETURN CODE = 0** (no errors)
8. If there are errors, fix them and resubmit until RC=0

#### Step 8: Save COBOL Job Summary as PDF
**Option A - Using XDC in ISPF:**
1. In SDSF, with job `UUMNUFE1` selected
2. Type `XDC` on command line
3. Save the dataset as: `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU`
4. Download this file to your PC

**Option B - Using Eclipse Developer:**
1. Open the job output in Developer
2. File → Print → Print to PDF
3. Save as: `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU.pdf`
4. Save to your submission folder

---

### PHASE 4: SETUP CICS TRANSACTION

#### Step 9: Connect to CICS
1. On VISTA TN3270 main screen
2. Type: `CICS` and press ENTER
3. You should see the CICS region login screen
4. Press ENTER to connect

#### Step 10: Define MAPSET in CICS
1. Type: `CEDA DEFINE MAPSET(MNUSFE1) GROUP(DCMAFD02)` and press ENTER
2. Fill in the screen (most fields can stay default):
   - **MAPSET**: MNUSFE1
   - **Group**: DCMAFD02
3. Press **PF3** to save

#### Step 11: Define PROGRAM in CICS
1. Type: `CEDA DEFINE PROGRAM(UUMNUFE1) GROUP(DCMAFD02) TRANSID(9FE1)` and press ENTER
2. Fill in the screen:
   - **Program**: UUMNUFE1
   - **Group**: DCMAFD02
   - **Language**: COBOL
   - **Transid**: 9FE1
3. Press **PF3** to save

#### Step 12: Define TRANSACTION in CICS
1. Type: `CEDA DEFINE TRANSACTION(9FE1) GROUP(DCMAFD02) PROGRAM(UUMNUFE1)` and press ENTER
2. Fill in the screen:
   - **Transaction**: 9FE1
   - **Group**: DCMAFD02
   - **Program**: UUMNUFE1
3. Press **PF3** to save

#### Step 13: Display and Install Resources
1. Type: `CEDA DISPLAY GROUP DCMAFD02 ALL *FE1*` and press ENTER
2. You should see your MAPSET, PROGRAM, and TRANSACTION listed
3. Install each one by typing next to it:
   - Type `I` next to **MNUSFE1** (MAPSET) and press ENTER
   - Type `I` next to **UUMNUFE1** (PROGRAM) and press ENTER
   - Type `I` next to **9FE1** (TRANSACTION) and press ENTER

#### Step 14: Send Initial Map
1. Type: `CECI SEND MAP(MNUMFE1) MAPSET(MNUSFE1)` and press ENTER
2. The menu screen should display

#### Step 15: Refresh Program
1. Type: `CEMT SET PROG(UUMNUFE1) NEWCOPY` and press ENTER
2. This ensures CICS loads the latest version

---

### PHASE 5: TEST THE APPLICATION

#### Step 16: Test Transaction 9FE1
1. Clear the screen (press **CLEAR** key)
2. Type: `9FE1` and press ENTER
3. You should see your MAIN MENU screen

#### Step 17: Test Choice 1 (REQUIRED SCREENSHOT 1)
1. In the CHOICE field, type: `1` and press ENTER
2. You should see message: **"Choice 1 is not available"**
3. **TAKE SCREENSHOT** - Save as: `KC03FE1.DCMAFD02.A4.SCREENSHOT1.jpg`

#### Step 18: Test Choice 2 (REQUIRED SCREENSHOT 2)
1. Clear the message by typing `9FE1` and press ENTER
2. In the CHOICE field, type: `2` and press ENTER
3. You should see message: **"Choice 2 is not ready"**
4. **TAKE SCREENSHOT** - Save as: `KC03FE1.DCMAFD02.A4.SCREENSHOT2.jpg`

#### Step 19: Test Choice 3 (REQUIRED SCREENSHOT 3)
1. Clear the message by typing `9FE1` and press ENTER
2. In the CHOICE field, type: `3` and press ENTER
3. You should see message: **"Choice 3 is being tested"**
4. **TAKE SCREENSHOT** - Save as: `KC03FE1.DCMAFD02.A4.SCREENSHOT3.jpg`

#### Step 20: Test Choice 4 (REQUIRED SCREENSHOT 4)
1. Clear the message by typing `9FE1` and press ENTER
2. In the CHOICE field, type: `4` and press ENTER
3. You should see message: **"Choice 4 is not working"**
4. **TAKE SCREENSHOT** - Save as: `KC03FE1.DCMAFD02.A4.SCREENSHOT4.jpg`

#### Step 21: Test Invalid Input (REQUIRED SCREENSHOT 5)
1. Clear the message by typing `9FE1` and press ENTER
2. In the CHOICE field, type: `5` (or any invalid character) and press ENTER
3. You should see message: **"Invalid input - KC03FE1"**
4. **TAKE SCREENSHOT** - Save as: `KC03FE1.DCMAFD02.A4.SCREENSHOT5.jpg`

#### Step 22: Test Exit (Choice 9)
1. Clear the screen by typing `9FE1` and press ENTER
2. In the CHOICE field, type: `9` and press ENTER
3. You should see message: **"APPLICATION ENDING"**
4. The transaction should end

---

### PHASE 6: PREPARE SUBMISSION

#### Step 23: Gather All Required Files

You need to submit **12 files total**:

**1. Job Summaries (2 files):**
- `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS` (or .pdf)
- `KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU` (or .pdf)

**2. Source Files (5 files) - Already in submission folder:**
- `MNUSBFE1.bms` (from KC03FE1.DCMAFD02.A4.MNU.BMS folder)
- `UUMNUFE1.cbl` (from KC03FE1.DCMAFD02.A4.MNU.COBOL folder)
- `MNUSBFE1.jcl` (from KC03FE1.DCMAFD02.A4.MNU.JCL folder)
- `UUMNUFE1.jcl` (from KC03FE1.DCMAFD02.A4.MNU.JCL folder)
- `DFHZITCL.jcl` (from KC03FE1.DCMAFD02.A4.MNU.PROCLIB folder)

**3. Screenshots (5 files):**
- `KC03FE1.DCMAFD02.A4.SCREENSHOT1.jpg` (Choice 1 message)
- `KC03FE1.DCMAFD02.A4.SCREENSHOT2.jpg` (Choice 2 message)
- `KC03FE1.DCMAFD02.A4.SCREENSHOT3.jpg` (Choice 3 message)
- `KC03FE1.DCMAFD02.A4.SCREENSHOT4.jpg` (Choice 4 message)
- `KC03FE1.DCMAFD02.A4.SCREENSHOT5.jpg` (Invalid input message)

#### Step 24: Verify File Encoding (CRITICAL!)
**All files MUST be in ASCII format, NOT EBCDIC!**

1. When downloading files from mainframe, ensure they convert to ASCII
2. Open each text file in Notepad++ or VS Code
3. Check encoding in bottom right corner - should say "UTF-8" or "ASCII"
4. If it says "EBCDIC" or looks garbled, re-download with proper conversion settings

#### Step 25: Create Submission ZIP File
1. Create a new folder named: `KC03FE1_Assignment4`
2. Copy all 12 files into this folder
3. Right-click the folder → Send to → Compressed (zipped) folder
4. Name the zip file: `KC03FE1_DCMAFD02_A4.zip`

#### Step 26: Submit to DCConnect
1. Log into DCConnect
2. Go to the Assignment 4 submission folder
3. Upload your ZIP file: `KC03FE1_DCMAFD02_A4.zip`
4. Verify the upload was successful
5. **YOU'RE DONE!**

---

## 📊 GRADING BREAKDOWN (60/60 marks total)

Each file is worth **5 marks** (12 files × 5 = 60 marks):

1. KC03FE1.DCMAFD02.A4.JOB.SUMMARY.BMS - **5 marks**
2. KC03FE1.DCMAFD02.A4.JOB.SUMMARY.MNU - **5 marks**
3. MNUSBFE1.bms - **5 marks**
4. UUMNUFE1.cbl - **5 marks**
5. MNUSBFE1.jcl - **5 marks**
6. UUMNUFE1.jcl - **5 marks**
7. DFHZITCL.jcl - **5 marks**
8. SCREENSHOT1.jpg - **5 marks**
9. SCREENSHOT2.jpg - **5 marks**
10. SCREENSHOT3.jpg - **5 marks**
11. SCREENSHOT4.jpg - **5 marks**
12. SCREENSHOT5.jpg - **5 marks**

---

## ⚠️ CRITICAL REMINDERS

1. **File Encoding**: All files MUST be in ASCII, not EBCDIC
2. **Return Codes**: Both JCL jobs must have RC=0 (no errors)
3. **Screenshots**: Must clearly show each message on the screen
4. **File Names**: Must match exactly as specified
5. **ZIP File**: All 12 files must be in the ZIP

---

## 🔧 TROUBLESHOOTING

### If BMS Compile Fails:
- Check that MAPSET name is `MNUSFE1` in both BMS and JCL
- Verify dataset names are correct in JCL
- Ensure member name is `MNUSFE1` in the dataset

### If COBOL Compile Fails:
- Check that COPY statement uses `MNUMFE1` (matches the symbolic map)
- Verify all MAP and MAPSET names are `MNUMFE1` and `MNUSFE1`
- Check PROGLIB dataset exists and you have access

### If CICS Transaction Doesn't Work:
1. Verify all installations succeeded (MAPSET, PROGRAM, TRANSACTION)
2. Run `CEMT SET PROG(UUMNUFE1) NEWCOPY` again
3. Check that transaction ID is `9FE1` everywhere
4. Verify program name is `UUMNUFE1` everywhere

### If Messages Don't Appear Correctly:
- Check spacing in messages (they must be exactly as specified)
- Verify you're using the correct field name `MSGO` in COBOL
- Run NEWCOPY command again to reload the program

---

## ✅ QUICK CHECKLIST

Before submission, verify:
- [ ] Both JCL jobs submitted with RC=0
- [ ] Both job summaries saved as PDF or XDC files
- [ ] All 5 source files copied to submission folder
- [ ] All 5 screenshots taken and saved with correct names
- [ ] All files checked for ASCII encoding (not EBCDIC)
- [ ] All 12 files placed in one ZIP folder
- [ ] ZIP file uploaded to DCConnect

---

## 🎯 SUMMARY OF CHANGES MADE TO YOUR CODE

1. **MNUSYYY.bms (Now MNUSFE1.bms)**:
   - Changed MNUSYYY → MNUSFE1
   - Changed MNUMYYY → MNUMFE1

2. **UUMNUYYY.cbl (Now UUMNUFE1.cbl)**:
   - Changed PROGRAM-ID to UUMNUFE1
   - Changed AUTHOR to "Lucas delvoie"
   - Changed DATE-WRITTEN to "Oct 25 2025"
   - Changed COPY MENSYYY → COPY MNUMFE1
   - Changed all MENMYYY → MNUMFE1
   - Changed all MENSYYY → MNUSFE1
   - Changed TRANSID UYYY → TRANSID 9FE1
   - Added 400-CHOICE-TWO paragraph with message
   - Added 500-CHOICE-THREE paragraph with message
   - Added 600-CHOICE-FOUR paragraph with message
   - Added 800-INVALID-INPUT paragraph with error message
   - Updated 200-MAIN-LOGIC to handle all choices
   - Fixed message in 300-CHOICE-ONE (removed typo)

3. **MNUSBYYY.jcl (Now MNUSBFE1.jcl)**:
   - Changed job name to MNUSBFE1
   - Changed KC03YYY → KC03FE1
   - Changed MENSYYY → MNUSFE1
   - Changed MENU → MNU in dataset names

4. **UUMNUYYY.jcl (Now UUMNUFE1.jcl)**:
   - Changed job name to UUMNUFE1
   - Changed KC03YYY → KC03FE1
   - Changed MEMBER comment to UUMNUFE1
   - Changed PROGMBR to UUMNUFE1
   - Changed MENU → MNU in dataset names

5. **DFHZITCL.jcl**:
   - No changes needed (PROCLIB is generic)

---

**Good luck! Follow these steps carefully and you'll get 100%! 🎉**
