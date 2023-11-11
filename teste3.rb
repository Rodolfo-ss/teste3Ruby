#Questao 1 - O objetivo desta questao é escrever um metodo que receba uma lista de hashes e retorne uma string.



input = [
  { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' },
  { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567' }
]

def solucao(input)
    input.each do |item|
       name, cpf, state, value = item.values_at(:name, :cpf, :state, :value)
       puts "Name: #{name}, CPF: #{cpf}, State: #{state}, Value: #{value}"
  end
end

puts solucao(input)

#Questao 2 - O objetivo é entender a solucao quando a string é retornada. 

require 'yaml'

def soluction(input, config_file)
    config = YAML.load_file(config_file)

input.each do |item|
    formatted_values = format_values(item, config)
    puts formatted_values.join(', ')
end
end


def format_values(item, config)
    formatted_values = []

    config.each do |key, settings|
        value = item[key.to_sym].to_s
        length = settings['length']
        aligh = settings['align']
        padding = settings['padding']

        formatted_values = format_string(value, length. align, padding)
        formatted_values << formatted_values
    end

    formatted_values
end

def format_string(value, length, align, padding)
    formatted_values = 
    if align == 'left'
        value.ljust(length, padding)
    else
        value.rjust(length, padding)
    end

    formatted_values[0, length]
end

input = [
  { name: 'Mickey Tyson Oliveira', cpf: '743485796633', state: 'California', value: '2224' },
  { name: 'Micael da Silva', cpf: '12876562900', state: 'Carolina do norte', value: '9889' }
]

config_file = 'config.yml'

solucao(input)












































