@count = 0
def hanio(num, towers, start=0, fin=2,mid=1)
  if num == 1
    @count+=1
    towers[fin] << towers[start].pop
    puts "move disk from #{start} to #{fin}, #{towers}"
    puts "#{@count}"
  else
    hanio(num-1,towers,start,mid,fin)
    hanio(1,towers,start,fin,mid)
    hanio(num-1,towers,mid,fin,start)
  end
end

towers=[[10,9,8,7,6,5,4,3,2,1],[],[]]
num = 10
hanio(num,towers)