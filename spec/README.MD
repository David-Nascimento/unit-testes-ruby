### Comando para executar o rspec

Execução normal dos testes
```
rspec spec/bank/saque_cc_spec.rb
```

Execução com os cenários na saida do console
```
rspec spec/bank/saque_cc_spec.rb -fd
```

Execução com relatorio
```
rspec --format html --out report.html
```
Execução com saida xml 
```
rspec --format RspecJunitFormatter --out report.xml
```

Execução com saida xml e na saida do console
```
rspec --format RspecJunitFormatter --out report.xml -fd
```