       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVEIS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *** PRATICA DE MERCADO PREFIXAR A VARIAVEL COM A SUA SE��O
      *** VARIAVEL DO TIPO A, DEFINE QUE AS VARIAVEIS S� PODEM SER
      **  ALFABETICAS
       77 WRK-NOME PIC A(06) VALUE SPACES.
      *** VARIAVEIS DO TIPO ALFANUMERICO, OU SEJA ACEITA CARACTERES
      **  NUMEROS, SIMBOLOS E TRA�OS
       77 WRK-EX1  PIC X(04) VALUE SPACES.
     ** VARIAVEIS SOMENTE DE USO NUMERICO.
       77 WRK-EX2  PIC 9(04) VALUE ZEROS.
     ** PODEMOS DEFINIR VALORES FIXOS AS VARIAVEIS
       77 WRK-CARRO PIC X(04) VALUE "ONIX".
       PROCEDURE DIVISION.
     ** RECEBENDO VALORES DO CONSOLE.
           ACCEPT WRK-NOME FROM CONSOLE.
     ** MOSTRANDO NOME PELO CONSOLE.
     ** MOSTRAR APENAS NOME DA VARIAVEL.
     ** FAZENDO UM SPLIT DA VARIAVEL
       DISPLAY 'NOME... ' WRK-NOME(1:3).
       STOP RUN.
