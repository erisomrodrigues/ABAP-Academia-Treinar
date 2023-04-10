*&---------------------------------------------------------------------*
*& Report Z635_ERI_P02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z635_ERI_P02.

SELECTION-SCREEN BEGIN OF BLOCK BLOCO1 WITH FRAME TITLE TEXT-001.

PARAMETERS: P_VALOR1    TYPE I OBLIGATORY,
            P_VALOR2    TYPE I OBLIGATORY.

DATA        V_RESULTADO TYPE I.

v_resultado = p_valor1 + p_valor2.

WRITE: 'A soma de:'.
WRITE: / p_valor1.
WRITE: / p_valor2, 'É',v_resultado.

SELECTION-SCREEN END OF BLOCK BLOCO1.
