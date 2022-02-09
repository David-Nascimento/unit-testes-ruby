require 'conta_bancaria.rb'
require 'conta_com_taxa'

conta1 = ContaComTaxa.new("david", 100)
conta2 = ContaBancaria.new("Carol", 250)

conta1.transferir(conta2, 50)

p "Conta David"
p conta1.saldo

p "Conta Carol"
p conta2.saldo

begin
  conta1.transferir(conta2, 50)
rescue StandardError => meu_erro
  p "Não foi possivel transferir: #{meu_erro}"
end