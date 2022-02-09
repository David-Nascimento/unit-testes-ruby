class ContaComTaxa < ContaBancaria

  def transferir(outra_conta, valor)
    super
    taxa_de_saque = 2
    debitar taxa_de_saque
  end

end