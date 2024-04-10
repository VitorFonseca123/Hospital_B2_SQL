import random
id_procedimento = [301]
medicos = [9,20,26,40,46,60,66,79,84,97]
qtdProc = len(id_procedimento)
qtdMed = len(medicos)
for id_proc in range(0, qtdProc):
    id_medico = random.randint(0, qtdMed-1)
    print(f"INSERT INTO ministra (Id_Procedimento, Id_Medico) VALUES ({id_procedimento[id_proc]}, {medicos[id_medico]});")
