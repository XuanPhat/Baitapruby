# bai 1
    print "Enter Password: "
   $Password = gets.chop
    # SplitPass= Password.split(",");
    if !($Password.match("[0-9]"))
       puts 'It nhat mot so trong tu 0 den 9'
    elsif !($Password.match("[a-z]"))
       puts 'Ít nhất 1 chữ cái nằm trong [a-z]'
    elsif !($Password.match("[A-Z]"))
        puts 'Ít nhất 1 chữ cái nằm trong [A-Z]'
    elsif !($Password.match("[$#@]"))
        puts 'Ít nhất 1 ký tự nằm trong [$ # @]'
        elsif ($Password.length < 6)
            puts 'Độ dài mật khẩu tối thiểu: 6'
            elsif ($Password.length > 12)
                puts 'Độ dài mật khẩu tối đa: 12'
    else
        puts $Password 
    end
# bai 2
marks = [
    { :name => "Phat", :age => 21, :score => 90 },
    { :name => "Tram", :age => 20, :score => 75 },
    { :name => "Tram", :age => 20, :score => 23 },
    { :name => "My", :age => 23, :score => 45 },
    { :name => "My", :age => 23, :score => 11 },
    { :name => "Khanh", :age => 33, :score => 21 }
]
puts marks.sort_by{|a|
     [a[:name],a[:age],a[:score]]
}
# bai 4
$netAmount = 0
while true
print "Enter Amout: "
Amount = gets.chop
if(Amount)
values=Amount.split(" ")
 operation = values[0]
 amount = (values[1]).to_i
 if(operation == 'D')
    $netAmount += amount
 elsif (operation == 'W')
    $netAmount -= amount
 else
    $netAmount = 0
 end
end
end
puts $netAmount 


# bai 5
print "Nhap ten: "
ten = gets.chop;
print "Nhao tuoi: "
tuoi = (gets.chop).to_i
year = ((2021-tuoi)+ 100)
puts "#{ten} sẽ tròn 100 tuổi trong nam: #{year}"

# bai 6
def compare_numbers(number, user_guess)
    cow = 0
    bull = 0
    1.upto number.length do |i|
        if(user_guess[i] == number[i]) 
            cow += 1
        elsif(user_guess[i] != number[i])
            bull += 1 
        end
      end
     return cow,bull
end
  playing = true;
  $numberRandom= 4.times.map{ rand(4) }.join
  p $numberRandom
  guesses = 0
  while playing
    print "Nguoi dung nhap 4 chu so de du doan: "
    user_guess = gets.chop;
  if(user_guess == "exit")
    puts "Tro choi ket thuc"
    break;
  end
  if(user_guess.length != 4)
       puts "Khong duoc nhap qua 4 chu so Yeu cau nhap lai: "
       next;
end
 cow = compare_numbers($numberRandom,user_guess)[0]
  row = compare_numbers($numberRandom,user_guess)[1]
  guesses+=1
 puts "Ban da doan dc #{cow} cow va #{row} row"
 if(user_guess == $numberRandom)
    puts "Ban da doan duoc #{guesses} lan! con so doan dung la #{$numberRandom}"
    break;
 end
  end
  # bai 7
  array = []
  2000.upto 3200 do |i|
     if (i % 7 == 0 && i % 5 != 0)
      array.append(i)
     end
  end
  puts array

 # bai 8
  C = 50
  H = 30
    print "Nhap D= "
    D= gets.chop
    SplitD= D.split(",")
   0.upto 2 do |i|
      puts (Math.sqrt((2*C*(SplitD[i]).to_i)/H)).to_i
   end
  
# bai 9
def numeric?(lookAhead)
  lookAhead =~ /[0-9]/
end
def letter?(lookAhead)
  lookAhead =~ /[A-Za-z]/
end
print "Nhap chu cai: "
Chucai= gets.chop;
so = 0
chu = 0
0.upto Chucai.length-1 do |i|
  if(numeric?(Chucai[i]))
     so += 1
  end
  if(letter?(Chucai[i]))
    chu += 1
  end
end
puts "Chu so la: #{so}"
puts "Số chữ cái là: #{chu-1}"

# bai 10
print "Nhap email: "
Emailinput = gets.chop;
if !(Emailinput.match("(\w+)@((\w+\.)+(com))"))
   puts "Sai dinh dang"
else
  puts "Dung dinh dang"
end