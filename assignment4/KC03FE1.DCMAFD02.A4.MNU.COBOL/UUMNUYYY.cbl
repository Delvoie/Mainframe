       IDENTIFICATION DIVISION.
       PROGRAM-ID. UUMENYYY.
       AUTHOR. YOUR NAME.
       DATE-WRITTEN. DATE.
      *PROGRAM DESCRIPTION:
      *
      *
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *
       COPY MENSYYY.
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
               RECEIVE MAP   ('MENMYYY')
                       MAPSET('MENSYYY')
           END-EXEC.
      *
           GO TO 200-MAIN-LOGIC.
      *
       100-FIRST-TIME.
      * SEND MAP AND RETURN CONTROL TO USER
           MOVE LOW-VALUES                  TO MENMYYYO.
      *
           EXEC CICS
               SEND MAP   ('MENMYYY')
                    MAPSET('MENSYYY')
                    ERASE
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('UYYY')
           END-EXEC.
      *
       200-MAIN-LOGIC.
      *
           IF CHOICEI = '1'
      * EXECUTE PARAGRAPH FOR OPTION 1
                GO TO 300-CHOICE-ONE
           ELSE IF CHOICEI = '9'
      * EXIT APPLICATION
                    GO TO 900-EXIT
                ELSE
      * INVALID CHOICE
                    GO TO 900-EXIT
                END-IF
           END-IF.
      *
       300-CHOICE-ONE.
      *
           MOVE LOW-VALUES                  TO MENMYYYO.
      *
           MOVE 'CHOICE 1 IS NOT AVAIALABLE'
             TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MENMYYY')
                    MAPSET('MENSYYY')
           END-EXEC.
      *
           EXEC CICS
               RETURN TRANSID('UYYY')
           END-EXEC.
      *
       900-EXIT.
      *
           MOVE LOW-VALUES                  TO MENMYYYO.
      *
           MOVE 'APPLICATION ENDING'        TO MSGO.
      *
           EXEC CICS
               SEND MAP   ('MENMYYY')
                    MAPSET('MENSYYY')
           END-EXEC.
      *
           EXEC CICS
               RETURN
           END-EXEC.
      *
       END PROGRAM UUMENYYY.
