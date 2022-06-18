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

#  def two_sum(nums, target)
#     for i in 0..nums.length-1
#       for j in 0..nums.length-1
#           if (i!=j and nums[i]+nums[j]==target )
#               return [i,j]
#           end
#       end
#   end
# end
def two_sum(nums, target)
    hash=Hash.new
    for i in 0..nums.length-1
        complement=target-nums[i]
         if hash.has_key?(complement)
            return [i,hash[complement]]
        end
        hash[nums[i]]=i
    end
end

p two_sum([3,2,4],6)

# def isBalanced(s)
#     first_half=s[0,s.length/2]
#     expected_second_half=[]
#     for i in 0..first_half.length-1
#         case first_half[i]
#         when "("
#             expected_second_half[i] = ")"
#         when "["
#             expected_second_half[i] = "]"
#         when "{"
#             expected_second_half[i] = "}"
#         end
#     end
#     p expected_second_half.reverse.join
#     if (expected_second_half.reverse.join==s[s.length/2,s.length])
#         return 'YES'
#     else
#         return 'NO'
#     end
    

# end

# def isBalanced(s)
#     # first_half=s[0,s.length/2]
#     # expected_second_half=[]
#     s=s.split('')
#     for i in 0..s.length
#         case s[i]
#         when "("
#             for j in i..s.length
#                 if s[j]==')'
#                     s.delete_at(j)
#                     flag='YES'
#                     break
#                 else
#                     flag='NO'
#                 end
#             end
#         when "["
#             for j in i..s.length
#                 if s[j]==']'
#                     s.delete_at(j)
#                     flag='YES'
#                     break
#                 else
#                     flag='NO'
#                 end
#             end
#         when "{"
#             for j in i..s.length
#                 if s[j]=='}'
#                     s.delete_at(j)
#                     flag='YES'
#                     break
#                 else
#                     flag='NO'
#                 end
#             end
#         end
#     end
#    return flag
    

#  end
def isBalanced(s)
    n=-1
    while s.length != n
        n=s.length
        s=s.sub('()','')
        s=s.sub('[]','')
        s=s.sub('{}','')
    end
    if s.length==0
        return 'Yes'
    else
        return 'NO'
    end
end

# p isBalanced('{(([])[])[]]}')


def hash(word)
    hashed={}
    for i in 0..word.length-1
        if hashed.has_key?(word[i])
            hashed[word[i]]=hashed[word[i]]+1
        else
            hashed[word[i]]=1
        end
    end
    for i,k in hashed
        if k!=1 
            hashed.delete(i) 
        end
        
    end
    return  hashed
end
def count_words(words1, words2)
    x=0
    hash1=hash(words1)
    hash2=hash(words2)
    for i,k in hash1
        if hash2.has_key?(i)
           x=x+1 
        end
        
    end
    return x
end
p count_words(["leetcode","is","amazing","as","is"],["amazing","leetcode","is"])