def stock_picker(array)
    bestprofit = 0
    bestbuyday = 0
    bestsellday = 0
  
    array.each_with_index do |buyprice, buyday|
      array.each_with_index do |sellprice, sellday|
        if buyday < sellday
          profit = sellprice- buyprice
          if profit > bestprofit
            bestprofit = profit
            bestbuyday = buyday
            bestsellday = sellday
          end
        end
      end
    end
    return [bestbuyday, bestsellday]  
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])