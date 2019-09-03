require_relative '../../app/bank'

describe ContaPoupanca do
    describe 'saque' do
        context 'Quando o valor for Truthy' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end

            it 'Atualiza Saldo' do
                expect(@cp.saldo).to eql 798.00
            end
        end

        context 'Sem saldo para saque' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(200.00)
            end

            it 'Retorna Mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'Meu saldo permanece o mesmo' do
                expect(@cp.saldo).to eql 0.00
            end
        end

        context 'Tenho Saldo Mas não o suficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(500.00)
                @cp.saca(501.00)
            end

            it 'Retorna Mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'Meu saldo permanece o mesmo' do
                expect(@cp.saldo).to eql 500.00
            end
        end

        context 'Limite de saque' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(701.00)
            end

            it 'Retorna Mensagem' do
                expect(@cp.mensagem).to eql 'Limite máximo para saque é de R$ 500'
            end

            it 'Valor permanece o mesmo' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end