       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM01.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.
       77 WRK-ANO-ENTRADA PIC 9(04) VALUE ZEROS.
       77 WRK-SALARIO-FUNCIONARIO PIC 9(05) VALUE ZEROS.
       77 WRK-CALCULA PIC 9(06)V99 VALUE ZEROS.
       PROCEDURE DIVISION.

       0100-INICIAR.
       PERFORM 0200-ENTRADA.
       PERFORM 0300-PROCESSAR.
       STOP RUN.

       0200-ENTRADA.
       DISPLAY 'INFORME O NOME'
       ACCEPT WRK-NOME FROM CONSOLE.

       DISPLAY 'INFORME ANO DE ENTRADA'
       ACCEPT WRK-ANO-ENTRADA FROM CONSOLE.


       DISPLAY 'INFORME O SALARIO DO FUNCIONARIO'
       ACCEPT WRK-SALARIO-FUNCIONARIO FROM CONSOLE.




       0300-PROCESSAR.


       IF WRK-ANO-ENTRADA >=0 AND WRK-ANO-ENTRADA <= 1
           DISPLAY 'NAO VAI TER AUMENTO'
       ELSE
       IF WRK-ANO-ENTRADA >=2 AND WRK-ANO-ENTRADA <=5
       COMPUTE WRK-CALCULA = (0,05 * WRK-SALARIO-FUNCIONARIO)
                              + WRK-SALARIO-FUNCIONARIO
               DISPLAY '5%'
               DISPLAY 'SALARIO ANTIGO... ' WRK-SALARIO-FUNCIONARIO
               DISPLAY 'SALARIO NOVO ' WRK-CALCULA
       ELSE
       IF WRK-ANO-ENTRADA >= 6 AND WRK-ANO-ENTRADA <=15
       COMPUTE WRK-CALCULA = (0,1 * WRK-SALARIO-FUNCIONARIO)
                           + WRK-SALARIO-FUNCIONARIO
              DISPLAY '10%'
              DISPLAY 'SALARIO ANTIGO..... ' WRK-SALARIO-FUNCIONARIO
              DISPLAY 'SALARIO NOVO.... ' WRK-CALCULA
       ELSE IF WRK-ANO-ENTRADA >=16
       COMPUTE WRK-CALCULA = (0,15 * WRK-SALARIO-FUNCIONARIO)
                           + WRK-SALARIO-FUNCIONARIO
              DISPLAY '15%'
              DISPLAY 'SALARIO ANTIGO..... ' WRK-SALARIO-FUNCIONARIO
              DISPLAY 'SALARIO NOVO.... ' WRK-CALCULA
       END-IF.