       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
      ***************************
      * �rea de coment�rios
      * Author Luan Magalh�es
      * OBJETIVO: TESTAR OPERADORES ARITM�TICOS
      * DATA = 21/01/2021
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77 WRK-RESULT PIC 9(04) VALUE ZEROS.
       77 WRK-RESULT-ED PIC ZZ VALUE ZEROS.
       77 WRK-MEDIA-ED PIC ZZ VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '==========================='.
           DISPLAY 'NUMERO 1: ' WRK-NUM1.
           DISPLAY 'NUMERO 2: ' WRK-NUM2.
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
           MOVE WRK-RESULT TO WRK-RESULT-ED
            DISPLAY 'O RESULTADO DA DIVISAO �: ' WRK-RESULT-ED.
      *COMPUTER SERVE PARA REALIZAR O CALCULO DE UMA EXPRESS�O, OU SEJA
      * SOMA E DIVIS�O NA MESMA LINHA
            MOVE WRK-RESULT TO WRK-MEDIA-ED.
            COMPUTE WRK-RESULT = (WRK-NUM1 + WRK-NUM2) / 2.
            DISPLAY 'M�DIA: ' WRK-RESULT-ED.
           STOP RUN.
