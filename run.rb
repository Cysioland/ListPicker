#!/usr/bin/env ruby

puts "ListPicker v1.0.0dev by Cysioland"
puts "---------------------------------"
items = []
begin
	puts 'Podaj kolejny element listy, lub naciśnij [ENTER] aby zakończyć'
	current_item = gets.chomp
	items << current_item
end while !current_item.empty?

items.pop

begin
	puts "Maszyna losująca wybrała: #{items.sample}"
	puts "Czy wybór Cię satysfakcjonuje? (T/N)"
end while gets.chomp.downcase != "t"