module PersonModule
    class Person
        def initialize(fname='no-fname', lname='no-lname', birth_date=Time.now() , age =0)
            @fname,@lname,@birth_date,@age=fname,lname,birth_date,age
        end
        def setName=(fname)
            @fname=fname
        end
        def setLname=(lname)
            @lname=lname
        end
        def setBirthDate=(birth_date)
            @birth_date=birth_date
        end
        def calcAge()
            @age=Time.now()-@birth_date
            return (@age/(60*60*24*((30*6)+(31*6)))).round
        end
        def welcome()
            year=self.calcAge()
            month=(@age/(60*60*24*30)).round
            dayes=(@age/(60*60*24)).round
            return "Welcome #@fname #@lname your age in years = #{year} and in month = #{month} and in dayes=#{dayes}"
        end 
    end
end

p1=Person.new()
p1.setBirthDate=Time.new(2022, 10, 15)
p p1.welcome