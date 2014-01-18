#!/usr/bin/env ruby

puts "ListPicker v1.0.0 by Cysioland"
puts "---------------------------------"
items = []

if ARGV.empty?
	begin
		puts 'Podaj kolejny element listy, lub naciśnij [ENTER] aby zakończyć'
		current_item = gets.chomp
		items << current_item
	end while !current_item.empty?

	items.pop
else
	unless File.exist?(ARGV[0])
		puts 'Błąd: podany plik nie został znaleziony'
		exit 1
	end

	File.open(ARGV[0], "r").each_line do |line|
		items << line
	end
end

begin
	puts "Maszyna losująca wybrała: #{items.sample}"
	puts "Czy wybór Cię satysfakcjonuje? (T/N)"
end while STDIN.gets.chomp.downcase != "t"
