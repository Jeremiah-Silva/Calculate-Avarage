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
       01 STUDENT-NAME           PIC X(50).
       01 SUBJECT                PIC X(50).
       01 SCORE1                 PIC 9(1)V9(2).
       01 SCORE2                 PIC 9(1)V9(2).
       01 SCORE3                 PIC 9(1)V9(2).
       01 SCORE4                 PIC 9(1)V9(2).
       01 AVERAGE                PIC 9(1)V9(2).
       01 OPTION                 PIC X.
       01 RESULT                 PIC X(10).

       PROCEDURE DIVISION.
       WELCOME.
           DISPLAY "     ".
           DISPLAY "**************************************************".
           DISPLAY "WELCOME TO JEREMIAH COLLEGE'S APP.".
           DISPLAY "**************************************************".
           DISPLAY "     ".
       SNAME.
           DISPLAY "ENTER THE STUDENT'S NAME:".
           ACCEPT               STUDENT-NAME.
           DISPLAY "     ".

       SUBJECT-NAME.
           DISPLAY "ENTER THE COURSE SUBJECT:".
           ACCEPT               SUBJECT.
           DISPLAY "     ".
           
           PERFORM CALCULATE-AVERAGE

           PERFORM QUESTION
           STOP RUN.

       CALCULATE-AVERAGE.
           DISPLAY "ENTER THE FIRST GRADE: ".
           ACCEPT                SCORE1.
           DISPLAY "     "
           IF SCORE1 <= 0
           DISPLAY "INVALID INPUT FOR THE FIRST GRADE."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "ENTER THE SECOND GRADE: ".
           ACCEPT                SCORE2.
           DISPLAY "     "
           IF SCORE2 <= 0
           DISPLAY "INVALID INPUT FOR THE SECOND GRADE."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "ENTER THE THIRD GRADE: ".
           ACCEPT                SCORE3.
           DISPLAY "     "
           IF SCORE3 <= 0
           DISPLAY "INVALID INPUT FOR THE THIRD GRADE."
           GO TO CALCULATE-AVERAGE.

           DISPLAY "ENTER THE FOURTH GRADE: ".
           ACCEPT                SCORE4.
           DISPLAY "     "
           IF SCORE4 <= 0
           DISPLAY "INVALID INPUT FOR THE FOURTH GRADE."
           GO TO CALCULATE-AVERAGE.

           COMPUTE AVERAGE = (SCORE1 + SCORE2 + SCORE3 + SCORE4) / 4.

           IF AVERAGE >= 7
           MOVE "PASSED"           TO RESULT
           ELSE
           MOVE "FAILL"            TO RESULT
           END-IF
           DISPLAY "*************** RESULT PROCESSING ****************",
           DISPLAY "     "
           DISPLAY "STUDENT NAME    : ",           STUDENT-NAME
           DISPLAY "SUBJECT         : ",           SUBJECT
           DISPLAY "AVERAGE         : ",           AVERAGE
           DISPLAY "STATUS          : ",           RESULT
           DISPLAY "     "
           DISPLAY "**************************************************".
       
       QUESTION.
           DISPLAY "     "
           DISPLAY "WOULD YOU LIKE TO CONTINUE? (Y/N)"
           ACCEPT OPTION.
           IF OPTION = "Y" OR "y"
           DISPLAY "     "
           DISPLAY "**************************************************",
           DISPLAY "START A NEW SEARCH!"
           DISPLAY "**************************************************",
           DISPLAY "     "
           PERFORM SUBJECT-NAME
           PERFORM QUESTION
           ELSE IF OPTION = "N" OR "n"
           DISPLAY "     "
           DISPLAY "**************************************************",
           DISPLAY "THANK YOU FOR USING THE JEREMIAH COLLEGE'S APP."
           DISPLAY "**************************************************",
           DISPLAY "     "
           ELSE
           DISPLAY "INVALID OPTION. PLEASE ENTER Y OR N."
           PERFORM QUESTION
           END-IF.
       END PROGRAM AVERAGE.