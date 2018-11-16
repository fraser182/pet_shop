#1
def pet_shop_name(shop)
return shop[:name]
end

#2
def total_cash(shop)
return shop[:admin][:total_cash]
end

#3
def add_or_remove_cash(shop, cash_amount)
shop[:admin][:total_cash] += cash_amount
end

#4
def pets_sold (shop)
return shop[:admin][:pets_sold]
end

#5
def increase_pets_sold(shop, sold)
shop[:admin][:pets_sold] += sold
end

#6
def stock_count(shop)
return shop[:pets].count()
end

#7
def pets_by_breed(shop, breed)
  breed_of_pet =[]
  for pets in shop[:pets]
    if pets[:breed] == breed
      breed_of_pet.push(pets)
    end
  end
  return breed_of_pet
end

# def find_tem(array, item)
#   for item_to_find in array
#     if item_to_find == item
#       return true
#     end
#   end
# end


#8
def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name]== pet_name
      return pet
    end
  end
  return nil
end

#9
def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      shop[:pets].delete(pet)
    end
  end
end

#10
def add_pet_to_stock(shop, pet)
  shop[:pets].push(pet)
end
