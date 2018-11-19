#1
def pet_shop_name(shop)
  return shop[:name]
end

#2
def total_cash(shop)
  return shop[:admin][:total_cash]
end

#3
def add_or_remove_cash(shop, cash)
   shop[:admin][:total_cash] += cash
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

# Class answer
# def pets_by_breed(pet_shop, breed)
#   matches = []
#   for pet in pet_shop[:pets]
#     matches << pet if(pet[:breed] == breed)
#   end
#   return matches
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

# def find_pet_by_name(pet_shop, pet_name)
#   match = nil
#   for pet in pet_shop[:pets]
#     match = pet if(pet[:name] == pet_name)
#   end
#   return match
# end

#9
def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      shop[:pets].delete(pet)
    end
  end
end

# def remove_pet_by_name(pet_shop, pet_name)
#   pet_to_delete = find_pet_by_name(pet_shop, pet_name)
#   pet_shop[:pets].delete(pet_to_delete)
# end

#10
def add_pet_to_stock(shop, pet)
  shop[:pets].push(pet)
end

#11

def customer_cash(cash)
  return cash[:cash]
end

#12
def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

#13
def customer_pet_count(customer)
  return customer[:pets].count()
end

#14
def add_pet_to_customer(customer, pet)
  return customer[:pets].push(pet)
end

# Solution
# def add_pet_to_customer(customer, pet)
#   customer[:pets] << pet
# end

#### OPTIONAL ####
#15
def customer_can_afford_pet(customer, pet)
  if customer[:cash] < pet[:price]
    return false
  else
    return true
  end
end

#16 Not quite got this yet!

def sell_pet_to_customer(shop, pet, customer)
  if pet == nil
    return
  elsif !(customer_can_afford_pet(customer, pet))
    return
  else 
    add_pet_to_customer(customer,pet)
    increase_pets_sold(shop, 1)
    remove_customer_cash(customer, customer[:cash])
    remove_pet_by_name(shop, pet[:name])
    add_or_remove_cash(shop, pet[:price])
  end
end
# ANSWER
# def sell_pet_to_customer(shop, pet, customer)
#   return if (pet == nil)
#   return if !(customer_can_afford_pet(customer, pet))
#
#   add_pet_to_customer(customer,pet)
#   increase_pets_sold(shop, 1)
#   remove_customer_cash(customer, customer[:cash])
#   remove_pet_by_name(shop, pet[:name])
#   add_or_remove_cash(shop, pet[:price])
# end
