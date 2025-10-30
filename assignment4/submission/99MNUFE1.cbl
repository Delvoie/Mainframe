       IDENTIFICATION DIVISION.
       PROGRAM-ID. 99MNUFE1.
       AUTHOR. YOUR NAME.
       DATE-WRITTEN. OCTOBER 26 2025.
      *PROGRAM DESCRIPTION:
      * THIS PROGRAM DISPLAYS A MAIN MENU FOR A STUDENT SYSTEM
      * AND HANDLES USER CHOICES 1-4 AND 9 (EXIT)
      * INCLUDES ERROR HANDLING FOR INVALID INPUT
      *
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *
       COPY MNUSFE1.
      *
       LINKAGE SECTION.
      *
       01 DFHCOMMAREA                       PIC X.
      *
       PROCEDURE DIVISION.
      *
       000-MAIN.
      *
           EXEC CICS
               HANDLE CONDITION
                   MAPFAIL(100-FIRST-TIME)
           END-EXEC.
      *
           EXEC CICS
               RECEIVE MAP   ('MNUMFE1')
                       MAPSET('MNUSFE1')
           END-EXEC.
      *
           GO TO 200-MAIN-LOGIC.
      *
       100-FIRST-TIME.
      * SEND MAP AND RETURN CONTROL TO USER
           MOVE LOW-VALUES                  TO MNUMFE1O.
      *
           EXEC CICS
               SEND MAP   ('MNUMFE1')
                    MAPSET('MNUSFE1')
                    ERASE
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('9FE1')
           END-EXEC.
      *
       200-MAIN-LOGIC.
      *
           IF CHOICEI = '1'
      * EXECUTE PARAGRAPH FOR OPTION 1
                GO TO 300-CHOICE-ONE
           ELSE IF CHOICEI = '2'
      * EXECUTE PARAGRAPH FOR OPTION 2
                    GO TO 400-CHOICE-TWO
                ELSE IF CHOICEI = '3'
      * EXECUTE PARAGRAPH FOR OPTION 3
                         GO TO 500-CHOICE-THREE
                     ELSE IF CHOICEI = '4'
      * EXECUTE PARAGRAPH FOR OPTION 4
                              GO TO 600-CHOICE-FOUR
                          ELSE IF CHOICEI = '9'
      * EXIT APPLICATION
                                   GO TO 900-EXIT
                               ELSE
      * INVALID CHOICE - DISPLAY ERROR MESSAGE
                                   GO TO 800-INVALID-INPUT
                               END-IF
                          END-IF
                     END-IF
                END-IF
           END-IF.
      *
       300-CHOICE-ONE.
      *
           MOVE LOW-VALUES                  TO MNUMFE1O.
      *
           MOVE 'Choice 1 is not available'
             TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MNUMFE1')
                    MAPSET('MNUSFE1')
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('9FE1')
           END-EXEC.
      *
       400-CHOICE-TWO.
      *
           MOVE LOW-VALUES                  TO MNUMFE1O.
      *
           MOVE 'Choice 2 is not ready    '
             TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MNUMFE1')
                    MAPSET('MNUSFE1')
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('9FE1')
           END-EXEC.
      *
       500-CHOICE-THREE.
      *
           MOVE LOW-VALUES                  TO MNUMFE1O.
      *
           MOVE 'Choice 3 is being tested '
             TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MNUMFE1')
                    MAPSET('MNUSFE1')
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('9FE1')
           END-EXEC.
      *
       600-CHOICE-FOUR.
      *
           MOVE LOW-VALUES                  TO MNUMFE1O.
      *
           MOVE 'Choice 4 is not working  '
             TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MNUMFE1')
                    MAPSET('MNUSFE1')
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('9FE1')
           END-EXEC.
      *
       800-INVALID-INPUT.
      *
           MOVE LOW-VALUES                  TO MNUMFE1O.
      *
           MOVE 'Invalid input - KC03FE1  '
             TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MNUMFE1')
                    MAPSET('MNUSFE1')
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('9FE1')
           END-EXEC.
      *
       900-EXIT.
      *
           MOVE LOW-VALUES                  TO MNUMFE1O.
      *
           MOVE 'APPLICATION ENDING'        TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MNUMFE1')
                    MAPSET('MNUSFE1')
           END-EXEC.
      *
           EXEC CICS
               RETURN
           END-EXEC.
      *
       END PROGRAM 99MNUFE1.
