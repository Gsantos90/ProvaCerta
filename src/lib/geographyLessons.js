const format = value => value.toLocaleString('pt-BR', { maximumFractionDigits: 2 })

export const geographyLessons = {
  urbanizacao: {
    sections: [
      ['Urbanização e crescimento urbano', 'A urbanização é medida pela proporção de moradores em áreas urbanas. Uma cidade pode ganhar habitantes enquanto essa proporção fica estável no país. Já a expansão da mancha urbana descreve o avanço da área construída, que pode ocorrer mesmo com pouco crescimento populacional.'],
      ['O que o tempo de viagem revela', 'Duas pessoas podem morar à mesma distância do centro e ter tempos de viagem diferentes. Frequência dos ônibus, baldeações, congestionamento e qualidade das calçadas afetam o acesso a empregos e serviços. Em prova, compare a infraestrutura e o tempo de acesso além da distância.'],
    ],
    activity: {
      title: 'Quanto tempo o deslocamento ocupa?',
      prompt: 'Em um cenário hipotético, uma pessoa faz uma viagem de ida e outra de volta por dia, cinco dias por semana. Ajuste a duração de um trecho.',
      label: 'Duração de um trecho', unit: 'min', min: 15, max: 90, step: 5, initial: 45,
      result: value => [`${format(value * 10 / 60)} h por semana`, `${value} min × 2 trechos × 5 dias = ${value * 10} min. Compare 30 e 60 minutos para ver o efeito de dobrar o tempo de viagem.`],
    },
  },
  'clima-energia': {
    sections: [
      ['Como ler um climograma', 'Leia a temperatura na linha e a precipitação nas barras, conferindo os eixos. A diferença entre o mês mais quente e o mais frio dá a amplitude térmica anual. Compare também a distribuição das chuvas, pois dois lugares com o mesmo total anual podem ter estações secas muito diferentes.'],
      ['Potência e energia', 'Potência indica a taxa de geração ou consumo. Energia é o que se acumula ao longo do tempo. Uma instalação de 2 kW que opera nessa potência por 3 horas gera 6 kWh. Em redes elétricas, disponibilidade da fonte, demanda e armazenamento ajudam a explicar quando a energia pode ser usada.'],
    ],
    activity: {
      title: 'Simule a geração de energia',
      prompt: 'Imagine uma instalação solar operando a 2 kW constantes durante as horas escolhidas. O exercício simplifica as variações de insolação.',
      label: 'Horas de operação', unit: 'h', min: 1, max: 8, step: 1, initial: 3,
      result: value => [`${2 * value} kWh gerados`, `Energia = potência × tempo. São 2 kW × ${value} h. Ao mudar o tempo, a energia muda e a potência do modelo continua em 2 kW.`],
    },
  },
  cartografia: {
    sections: [
      ['Da régua para o terreno', 'Na escala 1:n, multiplique o comprimento medido por n para chegar à medida real na mesma unidade. Converta centímetros em quilômetros dividindo por 100.000. A distância em linha reta pode ser menor que o caminho percorrido em uma estrada.'],
      ['Distâncias, áreas e projeções', 'Se cada lado de um quadrado no mapa equivale a 2 km no terreno, ele representa 4 km². Em mapas-múndi, a escolha da projeção também importa. Para comparar a extensão de países, procure uma projeção equivalente e confira a legenda e a finalidade do mapa.'],
    ],
    activity: {
      title: 'Teste o efeito da escala',
      prompt: 'Mantenha dois pontos separados por 4 cm no mapa e altere o denominador da escala.',
      label: 'Denominador da escala', unit: '', min: 25000, max: 250000, step: 25000, initial: 50000,
      result: value => [`${format(value * 4 / 100000)} km no terreno`, `Em 1:${format(value)}, multiplique 4 cm por ${format(value)} e divida por 100.000 para converter o resultado em quilômetros.`],
    },
  },
  'populacao-migracoes': {
    sections: [
      ['Compare indicadores com a mesma referência', 'Para comparar densidades, confira se a população e a área se referem ao mesmo território. Para comparar natalidade, use taxas com a mesma base e período. Uma cidade populosa pode registrar mais nascimentos em números absolutos e ainda ter uma taxa menor.'],
      ['Interprete a pirâmide por faixas', 'A base representa os grupos mais jovens. Uma base estreita pode acompanhar a queda da fecundidade. Uma saliência entre adultos pode refletir gerações numerosas ou migração. Use os demais dados para distinguir essas hipóteses.'],
    ],
    activity: {
      title: 'Quando a população começa a diminuir?',
      prompt: 'Um município registra 900 nascimentos, 600 mortes e 400 chegadas em um ano. Ajuste o número de saídas.',
      label: 'Saídas no ano', unit: 'pessoas', min: 200, max: 1000, step: 100, initial: 600,
      result: value => {
        const change = 700 - value
        return [change === 0 ? 'População estável' : `${change > 0 ? '+' : '−'}${Math.abs(change)} habitantes`, `Crescimento natural: +300. Saldo migratório: 400 − ${value} = ${400 - value}. A soma dos dois é ${change}.`]
      },
    },
  },
  'relevo-hidrografia': {
    sections: [
      ['Leia o relevo pelas curvas de nível', 'Cada curva liga pontos de mesma altitude. Quando a diferença de altitude entre curvas é constante, curvas próximas indicam uma encosta mais íngreme. Identifique as partes altas que separam os caminhos da água para localizar divisores de bacias.'],
      ['Do solo ao rio', 'A água da chuva pode infiltrar, ficar retida ou escoar. O escoamento pode carregar partículas de encostas e depositá-las onde perde capacidade de transporte. Por isso, o assoreamento em um ponto do rio pode estar ligado a mudanças no uso do solo a montante.'],
    ],
    activity: {
      title: 'Acompanhe o escoamento da chuva',
      prompt: 'Em um modelo simplificado, caem 50 mm de chuva. A água que não infiltra escoa. O modelo desconsidera retenção e evaporação.',
      label: 'Parcela que infiltra', unit: '%', min: 0, max: 100, step: 10, initial: 60,
      result: value => [`${format(50 - value / 2)} mm escoam`, `Dos 50 mm de chuva, ${format(value / 2)} mm infiltram. Subtraia essa parcela para obter o escoamento. Na prática, o resultado também depende do solo, do relevo e da chuva.`],
    },
  },
  'espaco-agrario': {
    sections: [
      ['Compare área, rendimento e produção', 'A produção total pode aumentar com maior área cultivada, maior rendimento por hectare ou ambos. Para comparar duas safras, divida a produção pela área em cada uma e só então interprete a mudança.'],
      ['Relacione campo, cidade e ambiente', 'O preço na propriedade depende também de armazenamento, transporte, processamento e demanda. Os impactos ambientais variam com a localização e o manejo. Rotação e cobertura do solo podem reduzir perdas por erosão, enquanto expandir a área cultivada pode pressionar habitats.'],
    ],
    activity: {
      title: 'Separe produção de produtividade',
      prompt: 'Uma fazenda produz 500 toneladas. Altere a área usada e observe quanto precisa produzir por hectare para manter essa colheita.',
      label: 'Área cultivada', unit: 'ha', min: 50, max: 200, step: 25, initial: 100,
      result: value => [`${format(500 / value)} t/ha`, `Divida 500 toneladas por ${value} hectares. Para a mesma colheita, reduzir a área exige maior produtividade por hectare.`],
    },
  },
}
