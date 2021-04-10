require_relative '../../app/bank'

describe ContaCorrente do
  describe 'saque' do
    context 'Quando o valor for Truthy' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(200.00)
      end

      it 'Atualiza Saldo' do
        expect(@cc.saldo).to eql 795.00
      end
    end

    context 'Sem saldo para saque' do
      before(:all) do
        @cc = ContaCorrente.new(0.00)
        @cc.saca(200.00)
      end

      it 'Retorna Mensagem' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'Meu saldo permanece o mesmo' do
        expect(@cc.saldo).to eql 0.00
      end
    end

    context 'Tenho Saldo Mas não o suficiente' do
      before(:all) do
        @cc = ContaCorrente.new(500.00)
        @cc.saca(501.00)
      end

      it 'Retorna Mensagem' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it 'Meu saldo permanece o mesmo' do
        expect(@cc.saldo).to eql 500.00
      end
    end

    context 'Limite para saque' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(701.00)
      end

      it 'Retorna Mensagem' do
        expect(@cc.mensagem).to eql 'Limite máximo para saque é de R$ 700'
      end

      it 'Valor permanece o mesmo' do
        expect(@cc.saldo).to eql 1000.00
      end
    end
  end
end
