# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
    five_dollar = 0
    ten_dollar = 0
    
    bills.each do |change|
        if change == 5
            five_dollar = five_dollar + 1
        elsif change == 10
            if five_dollar == 0
                return false
            end
            ten_dollar += 1
            five_dollar -= 1
            
        else
            if (ten_dollar == 0 and five_dollar < 3) or (five_dollar == 0) 
                return false
            end
            if ten_dollar > 0
                ten_dollar-=1
                five_dollar-=1
            else
                five_dollar -= 3
            end
        end
    end    
    true
end
