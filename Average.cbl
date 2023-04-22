      ****************************************************************** 
      * Author: Jeremiah
      * Date: 20/04/2023
      * Purpose: "Create a school report card that calculates the 
      *           grade point average and displays the result, 
      *           indicating whether the student passed or failed."
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AVERAGE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STUDENT-NAME PIC X(50).
       01 SUBJECT PIC X(50).
       01 SCORE1 PIC 9(1)V9(2).
       01 SCORE2 PIC 9(1)V9(2).
       01 SCORE3 PIC 9(1)V9(2).
       01 SCORE4 PIC 9(1)V9(2).
       01 AVERAGE PIC 9(1)V9(2).
       01 OPTION PIC X.
       

       PROCEDURE DIVISION.
       WELCOME.
           DISPLAY "     "
                   "     "
                   "     "
                   "     "
                   "Welcome to my app.".

           DISPLAY "     ".
           DISPLAY "     ".
           
       SNAME.
           DISPLAY "Enter the student's name:".
           ACCEPT STUDENT-NAME.

       SUBJECT-NAME.
           DISPLAY "     ".
           DISPLAY "Enter the course subject: ".
           ACCEPT SUBJECT.

           PERFORM CALCULATE-AVERAGE

           PERFORM QUESTION
           STOP RUN.

       CALCULATE-AVERAGE.
           DISPLAY "     ".
           DISPLAY "Enter the first grade: ".
           ACCEPT SCORE1.
           IF SCORE1 <= 0
           DISPLAY "Invalid input for the first grade."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "     ".
           DISPLAY "Enter the second grade: ".
           ACCEPT SCORE2.
           IF SCORE2 <= 0
           DISPLAY "Invalid input for the second grade."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "     ".
           DISPLAY "Enter the third grade: ".
           ACCEPT SCORE3.
           IF SCORE3 <= 0
           DISPLAY "Invalid input for the third grade."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "     ".
           DISPLAY "Enter the fourth grade: ".
           ACCEPT SCORE4.
           IF SCORE4 <= 0
           DISPLAY "Invalid input for the fourth grade."
           GO TO CALCULATE-AVERAGE.

           COMPUTE AVERAGE = (SCORE1 + SCORE2 + SCORE3 + SCORE4) / 4.

           IF AVERAGE > 7
           DISPLAY "     "
           DISPLAY   "Student: ",                          STUDENT-NAME, 
           DISPLAY   "Subject: ",                          SUBJECT,
           DISPLAY   "Average: ",                          AVERAGE.
           DISPLAY   "Status: APPROVED ".
           
           IF AVERAGE < 7
           DISPLAY "     "
           DISPLAY   "Student: ",                          STUDENT-NAME,
           DISPLAY   "Subject: ",                          SUBJECT,
           DISPLAY   "Average: ",                          AVERAGE.
           DISPLAY   "Status: REPPROVED" .

       QUESTION.
           DISPLAY "     "
           DISPLAY "Would you like to continue (Y/N)"
           ACCEPT OPTION.
           IF OPTION = "Y"
           DISPLAY "     "
           DISPLAY "Let's Go again!"
           PERFORM SUBJECT-NAME
           PERFORM QUESTION
           ELSE IF OPTION = "N"
           DISPLAY "Thank you for using my app. Goodbye!"
           DISPLAY "     "
           ELSE
           DISPLAY "Invalid option. Please enter Y or N."
           DISPLAY "     "
           PERFORM QUESTION
           END-IF.
       END PROGRAM AVERAGE.