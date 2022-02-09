class ContaBancaria
  def initialize proprietario, valor_inicial
    @proprietario = proprietario
    @valor = valor_inicial
  end

  def transferir outra_conta, valor
    if saldo >= valor
      debitar valor
      outra_conta.depositar valor
    else
      raise "Saldo insuficiente!"
    end
  end

  def saldo
    @valor
  end

  private
  def debitar valor_debitar
    @valor -= valor_debitar
  end

  protected
  def depositar valor_deposito
    if @valor >= valor_deposito
      @valor += valor_deposito
    end
  end

end