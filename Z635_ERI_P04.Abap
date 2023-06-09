REPORT z635_eri_p04.

* Criar tipo de dados
TYPES: BEGIN OF ty_notas,
         aluno      TYPE c LENGTH 50,
         disciplina TYPE c LENGTH 30,
         nota       TYPE p DECIMALS 2,
       END OF ty_notas.

* Criando tabela interna e sua estrutura(work Area)
DATA: it_notas TYPE TABLE OF ty_notas,
      st_notas TYPE ty_notas.

* Criar compo de inserir nota
parameters p_notam type p decimals 2.

* Inserindo dados na tabela
st_notas-aluno = 'Erisom'.
st_notas-disciplina = 'Matematica'.
st_notas-nota = '9'.
append st_notas to it_notas.

st_notas-aluno = 'Lucas'.
st_notas-disciplina = 'Geografia'.
st_notas-nota = '7'.
append st_notas to it_notas.

st_notas-aluno = 'Leandro'.
st_notas-disciplina = 'Inglês'.
st_notas-nota = '9'.
append st_notas to it_notas.

st_notas-aluno = 'Maria'.
st_notas-disciplina = 'Biologia'.
st_notas-nota = '5'.
append st_notas to it_notas.

st_notas-aluno = 'Davi'.
st_notas-disciplina = 'Portugues'.
st_notas-nota = '8'.
append st_notas to it_notas.

st_notas-aluno = 'Leticia'.
st_notas-disciplina = 'Matematica'.
st_notas-nota = '10'.
append st_notas to it_notas.

* Lendo valores
loop at it_notas into st_notas
  where nota >= p_notam.

  write / st_notas-aluno.
  write / st_notas-disciplina.
  write / st_notas-nota.

endloop.
