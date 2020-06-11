def nota_mas_alta(data)
cont = []
data.map do |i|
  contiene_letra = i.count ('a-zA-Z')
  if (contiene_letra < 1)
    cont.push i.to_i
  end
end
puts cont.max
end



data = []
File.open("notas.data", "r") do |f|
  f.each_line do |line|
      data.push line.gsub("\n","").split(',')

    end
  end

  nota_mas_alta(data[0])
