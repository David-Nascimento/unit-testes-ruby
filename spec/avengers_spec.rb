class Vingador
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

describe Vingador do
    it 'Adicionar um Vingador' do
        hq = Vingador.new

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end

    it 'Deve adicionar uma lisa de vingador' do
        hq = Vingador.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')
        
        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = Vingador.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman deve ser o último da lista' do
        hq = Vingador.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')

    end

    it 'Dever conter o nome e sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
    end
end