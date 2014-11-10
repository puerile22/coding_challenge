class Mtrx<Array
  attr_reader :row,:col,:array
  def initialize(*others)
    others.each do |arr|
      raise "Arrays length should be the same!" if arr.length!=others[0].length
    end
    @array=others
    @row= @array.length
    @col= @array[0].length
  end 

  def matrix_multi(arr2)
    return "Matrices dimensions don't match!" if @col!=arr2.row
    ans=[]
    (0...@row).each do |i|
      ans[i]=[]
      (0...arr2.col).each do |k|
        row=0
        (0...arr2.row).each do |j|
          row += @array[i][j]*arr2.array[j][k]
        end
          ans[i]<<row
      end
    end
    return ans
  end
end