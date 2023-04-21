       IDENTIFICATION DIVISION.
       PROGRAM-ID. AVERAGE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STUDENT-NAME PIC X(50).
       01 SUBJECT PIC X(50).
       01 SCORE1 PIC 999.
       01 SCORE2 PIC 999.
       01 SCORE3 PIC 999.
       01 SCORE4 PIC 999.
       01 AVERAGE PIC 999.
       01 OPTION PIC X.

       PROCEDURE DIVISION.
       MAIN-PARAGRAPH.
           DISPLAY "Enter the student's name:".
           ACCEPT STUDENT-NAME.

           DISPLAY "Enter the course subject: ".
           ACCEPT SUBJECT.

           PERFORM CALCULATE-AVERAGE

           PERFORM QUESTION
           STOP RUN.

       CALCULATE-AVERAGE.
           DISPLAY "Enter the first grade: ".
           ACCEPT SCORE1.
           IF SCORE1 <= 0
           DISPLAY "Invalid input for the first grade."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "Enter the second grade:".
           ACCEPT SCORE2.
           IF SCORE2 <= 0
           DISPLAY "Invalid input for the second grade."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "Enter the third grade:".
           ACCEPT SCORE3.
           IF SCORE3 <= 0
           DISPLAY "Invalid input for the third grade."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "Enter the fourth grade:".
           ACCEPT SCORE4.
           IF SCORE4 <= 0
           DISPLAY "Invalid input for the fourth grade."
           GO TO CALCULATE-AVERAGE.

           COMPUTE AVERAGE = (SCORE1 + SCORE2 + SCORE3 + SCORE4) / 4.

           IF AVERAGE >= 7
           DISPLAY "The student ",
                             STUDENT-NAME, " was approved in ",
                             SUBJECT," with an average of ",    AVERAGE.
           IF AVERAGE <= 7
           DISPLAY "The student ",
                             STUDENT-NAME, " was approved in ",
                             SUBJECT, " with an average of ",   AVERAGE.

       QUESTION.
           DISPLAY "Would you like to continue (Y/N)"
           ACCEPT OPTION.
           IF OPTION = "Y"
           DISPLAY "Let's Go again!"
           PERFORM CALCULATE-AVERAGE
           PERFORM QUESTION
           ELSE IF OPTION = "N"
           DISPLAY "Thank you for using our app. Goodbye!"
           ELSE
           DISPLAY "Invalid option. Please enter Y or N."
           PERFORM QUESTION
           END-IF.
       END PROGRAM AVERAGE.