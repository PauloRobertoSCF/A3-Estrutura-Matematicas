function simular_markov()
    # 1. Definição dos nomes dos estados
    estados = ["Estudando", "Relaxando", "Dormindo"]

    # 2. Matriz de transição P (3x3) — cada linha representa as probabilidades de ir para outros estados
    P = [
        0.6  0.3  0.1;  # De Estudando
        0.4  0.4  0.2;  # De Relaxando
        0.2  0.3  0.5   # De Dormindo
    ]

    # 3. Vetor de estado inicial: 100% no estado "Estudando"
    estado_atual = transpose([1.0, 0.0, 0.0])

    # 4. Número de passos (iterações no tempo)
    n_passos = 10

    # 5. Mostrar o passo 0 (estado inicial)
    println("Passo 0:")
    for i in 1:length(estados)
        println("  ", estados[i], ": ", round(estado_atual[i], digits=4))
    end

    # 6. Loop principal: para cada passo de tempo, atualizar e imprimir as probabilidades
    for passo in 1:n_passos
        # Multiplicação do vetor de estado pela matriz de transição
        estado_atual = estado_atual * P

        # Mostrar as probabilidades após o passo
        println("Passo $passo:")
        for i in 1:length(estados)
            println("  ", estados[i], ": ", round(estado_atual[i], digits=4))
        end
    end
end

# 7. Chamada da função
simular_markov()
