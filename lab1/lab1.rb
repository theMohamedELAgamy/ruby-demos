#!/usr/bin/env ruby
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def char_repeate(n,ch)
    for i in 1..n
        puts ch*i
    end
end

char_repeate(6,'a')

def str_check(str)
    if str[0,2]=='if'

        return true
    end
    return false
end

puts   str_check('ifgjgh')

def str_exchanged(str)
    temp=str[0]
    str[0]=str[(str.length)-1]
    str[(str.length)-1]=temp
    return str
end
puts str_exchanged('python')

def str_char_repate(str)
    return" #{str[str.length-1]}#{str}#{str[str.length-1]}"
end
puts str_char_repate('abcd')

def is_leap(year)
    if((year%4)==0)
        if((year%100 !=0))
            return "#{year} is leap year"
        elsif( (year%400) ==0)
            return "#{year} is leap year"
        end
    end
    return "#{year} is not leap year" 
    
end

 puts is_leap(2020) 

 def concat_arr(arr)
    sum=0
    temp=nil
    for i in 0..arr.length
        if arr[i]==17 
            arr=arr-arr[i,i+1]
        end
        
    end
    return arr.sum 
 end
 puts concat_arr([3, 17, 1, 7])

 def two_sum(nums, target)
    for i in 0..nums.length-1
      for j in 0..nums.length-1
          if (i!=j and nums[i]+nums[j]==target )
              return [i,j]
          end
      end
  end
end
p two_sum([2,7,11,15],9)