       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABUADA.
      ********************************
      * �REA DE COMENT�RIOS -REMARKS
      * AUTHOR = LUAN DE OLIVEIRA MAGALH�ES
      * OBJETIVO = RECEBER UM N�MERO E GERAR A TABUADA DE 1 A 10.
      * UTILIZANDO O PERFORM


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
           COPY 'BOOK.COB'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           ACCEPT WRK-VENDAS FROM CONSOLE.

       IF WRK-VENDAS > 0
           PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
       END-IF.
           PERFORM 0300-FINALIZAR.

       STOP RUN.








       0200-PROCESSAR.

           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-ACUM.
           ACCEPT WRK-VENDAS.
       0300-FINALIZAR.
           DISPLAY '-----------'.
           DISPLAY 'ACUMULADO... ' WRK-ACUM.
           DISPLAY 'QUANTIDADE DE VENDAS ' WRK-QT.
           DISPLAY 'FINAL DE PROCESSSAMENTO'.
