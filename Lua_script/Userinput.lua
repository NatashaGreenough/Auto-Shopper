local UserInputService = game:GetService("UserInputService")

--local item_list = {
--	Apple = 0,
--}

---Crops-------------------------------------------------------
--Apple--------------------------------------------------------
local AppleAdd1 = script.Parent.ScrollingFrame.All_frame.AppleBox.Add
local AppleAdd2 = script.Parent.ScrollingFrame.Crops_frame.AppleBox.Add
local AppleRemove1 = script.Parent.ScrollingFrame.All_frame.AppleBox.Minus
local AppleRemove2 = script.Parent.ScrollingFrame.Crops_frame.AppleBox.Minus
local Apple_num1 = script.Parent.ScrollingFrame.All_frame.AppleBox.Number
local Apple_num2 = script.Parent.ScrollingFrame.Crops_frame.AppleBox.Number
local Apple = {"v3", 0, 5}

--Banana--------------------------------------------------------

local BananaAdd1 = script.Parent.ScrollingFrame.All_frame.BananaBox.Add
local BananaAdd2 = script.Parent.ScrollingFrame.Crops_frame.BananaBox.Add
local BananaRemove1 = script.Parent.ScrollingFrame.All_frame.BananaBox.Minus
local BananaRemove2 = script.Parent.ScrollingFrame.Crops_frame.BananaBox.Minus
local Banana_num1 = script.Parent.ScrollingFrame.All_frame.BananaBox.Number
local Banana_num2 = script.Parent.ScrollingFrame.Crops_frame.BananaBox.Number
local Banana = {"v4", 0, 5}

--Tomato--------------------------------------------------------

local TomatoAdd1 = script.Parent.ScrollingFrame.All_frame.TomatoBox.Add
local TomatoAdd2 = script.Parent.ScrollingFrame.Crops_frame.TomatoBox.Add
local TomatoRemove1 = script.Parent.ScrollingFrame.All_frame.TomatoBox.Minus
local TomatoRemove2 = script.Parent.ScrollingFrame.Crops_frame.TomatoBox.Minus
local Tomato_num1 = script.Parent.ScrollingFrame.All_frame.TomatoBox.Number
local Tomato_num2 = script.Parent.ScrollingFrame.Crops_frame.TomatoBox.Number
local Tomato = {"v2", 0, 5}

--Carrot--------------------------------------------------------

local CarrotAdd1 = script.Parent.ScrollingFrame.All_frame.CarrotBox.Add
local CarrotAdd2 = script.Parent.ScrollingFrame.Crops_frame.CarrotBox.Add
local CarrotRemove1 = script.Parent.ScrollingFrame.All_frame.CarrotBox.Minus
local CarrotRemove2 = script.Parent.ScrollingFrame.Crops_frame.CarrotBox.Minus
local Carrot_num1 = script.Parent.ScrollingFrame.All_frame.CarrotBox.Number
local Carrot_num2 = script.Parent.ScrollingFrame.Crops_frame.CarrotBox.Number
local Carrot = {"v1", 0, 7}

---Bakery-------------------------------------------------------
--Croissant--------------------------------------------------------

local CroissantAdd1 = script.Parent.ScrollingFrame.All_frame.CroissantBox.Add
local CroissantAdd2 = script.Parent.ScrollingFrame.Bakery_frame.CroissantBox.Add
local CroissantRemove1 = script.Parent.ScrollingFrame.All_frame.CroissantBox.Minus
local CroissantRemove2 = script.Parent.ScrollingFrame.Bakery_frame.CroissantBox.Minus
local Croissant_num1 = script.Parent.ScrollingFrame.All_frame.CroissantBox.Number
local Croissant_num2 = script.Parent.ScrollingFrame.Bakery_frame.CroissantBox.Number
local Croissant = {"b1", 0, 12}

--Pretzel--------------------------------------------------------

local PretzelAdd1 = script.Parent.ScrollingFrame.All_frame.PretzelBox.Add
local PretzelAdd2 = script.Parent.ScrollingFrame.Bakery_frame.PretzelBox.Add
local PretzelRemove1 = script.Parent.ScrollingFrame.All_frame.PretzelBox.Minus
local PretzelRemove2 = script.Parent.ScrollingFrame.Bakery_frame.PretzelBox.Minus
local Pretzel_num1 = script.Parent.ScrollingFrame.All_frame.PretzelBox.Number
local Pretzel_num2 = script.Parent.ScrollingFrame.Bakery_frame.PretzelBox.Number
local Pretzel = {"b2", 0, 10}

--Cake--------------------------------------------------------

local CakeAdd1 = script.Parent.ScrollingFrame.All_frame.CakeBox.Add
local CakeAdd2 = script.Parent.ScrollingFrame.Bakery_frame.CakeBox.Add
local CakeRemove1 = script.Parent.ScrollingFrame.All_frame.CakeBox.Minus
local CakeRemove2 = script.Parent.ScrollingFrame.Bakery_frame.CakeBox.Minus
local Cake_num1 = script.Parent.ScrollingFrame.All_frame.CakeBox.Number
local Cake_num2 = script.Parent.ScrollingFrame.Bakery_frame.CakeBox.Number
local Cake = {"b3", 0, 25}

--Donut--------------------------------------------------------

local DonutAdd1 = script.Parent.ScrollingFrame.All_frame.DonutBox.Add
local DonutAdd2 = script.Parent.ScrollingFrame.Bakery_frame.DonutBox.Add
local DonutRemove1 = script.Parent.ScrollingFrame.All_frame.DonutBox.Minus
local DonutRemove2 = script.Parent.ScrollingFrame.Bakery_frame.DonutBox.Minus
local Donut_num1 = script.Parent.ScrollingFrame.All_frame.DonutBox.Number
local Donut_num2 = script.Parent.ScrollingFrame.Bakery_frame.DonutBox.Number
local Donut = {"b4", 0, 15}


---Meats-------------------------------------------------------
--Pork--------------------------------------------------------

local PorkAdd1 = script.Parent.ScrollingFrame.All_frame.PorkBox.Add
local PorkAdd2 = script.Parent.ScrollingFrame.Meats_frame.PorkBox.Add
local PorkRemove1 = script.Parent.ScrollingFrame.All_frame.PorkBox.Minus
local PorkRemove2 = script.Parent.ScrollingFrame.Meats_frame.PorkBox.Minus
local Pork_num1 = script.Parent.ScrollingFrame.All_frame.PorkBox.Number
local Pork_num2 = script.Parent.ScrollingFrame.Meats_frame.PorkBox.Number
local Pork = {"m1", 0, 30}

--Chicken--------------------------------------------------------

local ChickenAdd1 = script.Parent.ScrollingFrame.All_frame.ChickenBox.Add
local ChickenAdd2 = script.Parent.ScrollingFrame.Meats_frame.ChickenBox.Add
local ChickenRemove1 = script.Parent.ScrollingFrame.All_frame.ChickenBox.Minus
local ChickenRemove2 = script.Parent.ScrollingFrame.Meats_frame.ChickenBox.Minus
local Chicken_num1 = script.Parent.ScrollingFrame.All_frame.ChickenBox.Number
local Chicken_num2 = script.Parent.ScrollingFrame.Meats_frame.ChickenBox.Number
local Chicken = {"m2", 0, 22}

--Beef--------------------------------------------------------

local BeefAdd1 = script.Parent.ScrollingFrame.All_frame.BeefBox.Add
local BeefAdd2 = script.Parent.ScrollingFrame.Meats_frame.BeefBox.Add
local BeefRemove1 = script.Parent.ScrollingFrame.All_frame.BeefBox.Minus
local BeefRemove2 = script.Parent.ScrollingFrame.Meats_frame.BeefBox.Minus
local Beef_num1 = script.Parent.ScrollingFrame.All_frame.BeefBox.Number
local Beef_num2 = script.Parent.ScrollingFrame.Meats_frame.BeefBox.Number
local Beef = {"m3", 0, 50}

---Dairy-------------------------------------------------------
--Egg--------------------------------------------------------

local EggAdd1 = script.Parent.ScrollingFrame.All_frame.EggBox.Add
local EggAdd2 = script.Parent.ScrollingFrame.Dairy_frame.EggBox.Add
local EggRemove1 = script.Parent.ScrollingFrame.All_frame.EggBox.Minus
local EggRemove2 = script.Parent.ScrollingFrame.Dairy_frame.EggBox.Minus
local Egg_num1 = script.Parent.ScrollingFrame.All_frame.EggBox.Number
local Egg_num2 = script.Parent.ScrollingFrame.Dairy_frame.EggBox.Number
local Egg = {"d1", 0, 26}

--Cheese--------------------------------------------------------

local CheeseAdd1 = script.Parent.ScrollingFrame.All_frame.CheeseBox.Add
local CheeseAdd2 = script.Parent.ScrollingFrame.Dairy_frame.CheeseBox.Add
local CheeseRemove1 = script.Parent.ScrollingFrame.All_frame.CheeseBox.Minus
local CheeseRemove2 = script.Parent.ScrollingFrame.Dairy_frame.CheeseBox.Minus
local Cheese_num1 = script.Parent.ScrollingFrame.All_frame.CheeseBox.Number
local Cheese_num2 = script.Parent.ScrollingFrame.Dairy_frame.CheeseBox.Number
local Cheese = {"d2", 0, 37}

--Milk--------------------------------------------------------

local MilkAdd1 = script.Parent.ScrollingFrame.All_frame.MilkBox.Add
local MilkAdd2 = script.Parent.ScrollingFrame.Dairy_frame.MilkBox.Add
local MilkRemove1 = script.Parent.ScrollingFrame.All_frame.MilkBox.Minus
local MilkRemove2 = script.Parent.ScrollingFrame.Dairy_frame.MilkBox.Minus
local Milk_num1 = script.Parent.ScrollingFrame.All_frame.MilkBox.Number
local Milk_num2 = script.Parent.ScrollingFrame.Dairy_frame.MilkBox.Number
local Milk = {"d3", 0, 15}

---Freeze-------------------------------------------------------
--Pizza--------------------------------------------------------

local PizzaAdd1 = script.Parent.ScrollingFrame.All_frame.PizzaBox.Add
local PizzaAdd2 = script.Parent.ScrollingFrame.Freeze_frame.PizzaBox.Add
local PizzaRemove1 = script.Parent.ScrollingFrame.All_frame.PizzaBox.Minus
local PizzaRemove2 = script.Parent.ScrollingFrame.Freeze_frame.PizzaBox.Minus
local Pizza_num1 = script.Parent.ScrollingFrame.All_frame.PizzaBox.Number
local Pizza_num2 = script.Parent.ScrollingFrame.Freeze_frame.PizzaBox.Number
local Pizza = {"f1", 0, 72}

--Ice cream--------------------------------------------------------

local IcecreamAdd1 = script.Parent.ScrollingFrame.All_frame.IcecreamBox.Add
local IcecreamAdd2 = script.Parent.ScrollingFrame.Freeze_frame.IcecreamBox.Add
local IcecreamRemove1 = script.Parent.ScrollingFrame.All_frame.IcecreamBox.Minus
local IcecreamRemove2 = script.Parent.ScrollingFrame.Freeze_frame.IcecreamBox.Minus
local Icecream_num1 = script.Parent.ScrollingFrame.All_frame.IcecreamBox.Number
local Icecream_num2 = script.Parent.ScrollingFrame.Freeze_frame.IcecreamBox.Number
local Icecream = {"f2", 0, 80}

--French fries--------------------------------------------------------

local FrenchfriesAdd1 = script.Parent.ScrollingFrame.All_frame.FrenchfriesBox.Add
local FrenchfriesAdd2 = script.Parent.ScrollingFrame.Freeze_frame.FrenchfriesBox.Add
local FrenchfriesRemove1 = script.Parent.ScrollingFrame.All_frame.FrenchfriesBox.Minus
local FrenchfriesRemove2 = script.Parent.ScrollingFrame.Freeze_frame.FrenchfriesBox.Minus
local Frenchfries_num1 = script.Parent.ScrollingFrame.All_frame.FrenchfriesBox.Number
local Frenchfries_num2 = script.Parent.ScrollingFrame.Freeze_frame.FrenchfriesBox.Number
local Frenchfries = {"f3", 0, 56}

--Seafood--------------------------------------------------------

local SeafoodAdd1 = script.Parent.ScrollingFrame.All_frame.SeafoodBox.Add
local SeafoodAdd2 = script.Parent.ScrollingFrame.Freeze_frame.SeafoodBox.Add
local SeafoodRemove1 = script.Parent.ScrollingFrame.All_frame.SeafoodBox.Minus
local SeafoodRemove2 = script.Parent.ScrollingFrame.Freeze_frame.SeafoodBox.Minus
local Seafood_num1 = script.Parent.ScrollingFrame.All_frame.SeafoodBox.Number
local Seafood_num2 = script.Parent.ScrollingFrame.Freeze_frame.SeafoodBox.Number
local Seafood = {"f4", 0, 100}

---Other-------------------------------------------------------
--pen--------------------------------------------------------

local PenAdd1 = script.Parent.ScrollingFrame.All_frame.PenBox.Add
local PenAdd2 = script.Parent.ScrollingFrame.Other_frame.PenBox.Add
local PenRemove1 = script.Parent.ScrollingFrame.All_frame.PenBox.Minus
local PenRemove2 = script.Parent.ScrollingFrame.Other_frame.PenBox.Minus
local Pen_num1 = script.Parent.ScrollingFrame.All_frame.PenBox.Number
local Pen_num2 = script.Parent.ScrollingFrame.Other_frame.PenBox.Number
local Pen = {"t2", 0, 10}

--Toothbrush--------------------------------------------------------

local ToothbrushAdd1 = script.Parent.ScrollingFrame.All_frame.ToothbrushBox.Add
local ToothbrushAdd2 = script.Parent.ScrollingFrame.Other_frame.ToothbrushBox.Add
local ToothbrushRemove1 = script.Parent.ScrollingFrame.All_frame.ToothbrushBox.Minus
local ToothbrushRemove2 = script.Parent.ScrollingFrame.Other_frame.ToothbrushBox.Minus
local Toothbrush_num1 = script.Parent.ScrollingFrame.All_frame.ToothbrushBox.Number
local Toothbrush_num2 = script.Parent.ScrollingFrame.Other_frame.ToothbrushBox.Number
local Toothbrush = {"t6", 0, 12}

--Chocolate--------------------------------------------------------

local ChocolateAdd1 = script.Parent.ScrollingFrame.All_frame.ChocolateBox.Add
local ChocolateAdd2 = script.Parent.ScrollingFrame.Other_frame.ChocolateBox.Add
local ChocolateRemove1 = script.Parent.ScrollingFrame.All_frame.ChocolateBox.Minus
local ChocolateRemove2 = script.Parent.ScrollingFrame.Other_frame.ChocolateBox.Minus
local Chocolate_num1 = script.Parent.ScrollingFrame.All_frame.ChocolateBox.Number
local Chocolate_num2 = script.Parent.ScrollingFrame.Other_frame.ChocolateBox.Number
local Chocolate = {"t1", 0, 20}

--Chips--------------------------------------------------------

local ChipsAdd1 = script.Parent.ScrollingFrame.All_frame.ChipsBox.Add
local ChipsAdd2 = script.Parent.ScrollingFrame.Other_frame.ChipsBox.Add
local ChipsRemove1 = script.Parent.ScrollingFrame.All_frame.ChipsBox.Minus
local ChipsRemove2 = script.Parent.ScrollingFrame.Other_frame.ChipsBox.Minus
local Chips_num1 = script.Parent.ScrollingFrame.All_frame.ChipsBox.Number
local Chips_num2 = script.Parent.ScrollingFrame.Other_frame.ChipsBox.Number
local Chips = {"t3", 0, 20}

--Soap--------------------------------------------------------

local SoapAdd1 = script.Parent.ScrollingFrame.All_frame.SoapBox.Add
local SoapAdd2 = script.Parent.ScrollingFrame.Other_frame.SoapBox.Add
local SoapRemove1 = script.Parent.ScrollingFrame.All_frame.SoapBox.Minus
local SoapRemove2 = script.Parent.ScrollingFrame.Other_frame.SoapBox.Minus
local Soap_num1 = script.Parent.ScrollingFrame.All_frame.SoapBox.Number
local Soap_num2 = script.Parent.ScrollingFrame.Other_frame.SoapBox.Number
local Soap = {"t8", 0, 49}

--Shampoo--------------------------------------------------------

local ShampooAdd1 = script.Parent.ScrollingFrame.All_frame.ShampooBox.Add
local ShampooAdd2 = script.Parent.ScrollingFrame.Other_frame.ShampooBox.Add
local ShampooRemove1 = script.Parent.ScrollingFrame.All_frame.ShampooBox.Minus
local ShampooRemove2 = script.Parent.ScrollingFrame.Other_frame.ShampooBox.Minus
local Shampoo_num1 = script.Parent.ScrollingFrame.All_frame.ShampooBox.Number
local Shampoo_num2 = script.Parent.ScrollingFrame.Other_frame.ShampooBox.Number
local Shampoo = {"t7", 0, 64}

--Pill--------------------------------------------------------

local PillAdd1 = script.Parent.ScrollingFrame.All_frame.PillBox.Add
local PillAdd2 = script.Parent.ScrollingFrame.Other_frame.PillBox.Add
local PillhRemove1 = script.Parent.ScrollingFrame.All_frame.PillBox.Minus
local PillRemove2 = script.Parent.ScrollingFrame.Other_frame.PillBox.Minus
local Pill_num1 = script.Parent.ScrollingFrame.All_frame.PillBox.Number
local Pill_num2 = script.Parent.ScrollingFrame.Other_frame.PillBox.Number
local Pill = {"t5", 0, 75}

--Toilet Paper--------------------------------------------------------

local ToiletPaperAdd1 = script.Parent.ScrollingFrame.All_frame.ToiletPaperBox.Add
local ToiletPaperAdd2 = script.Parent.ScrollingFrame.Other_frame.ToiletPaperBox.Add
local ToiletPaperRemove1 = script.Parent.ScrollingFrame.All_frame.ToiletPaperBox.Minus
local ToiletPaperRemove2 = script.Parent.ScrollingFrame.Other_frame.ToiletPaperBox.Minus
local ToiletPaper_num1 = script.Parent.ScrollingFrame.All_frame.ToiletPaperBox.Number
local ToiletPaper_num2 = script.Parent.ScrollingFrame.Other_frame.ToiletPaperBox.Number
local ToiletPaper = {"t4", 0, 80}

--Teddy Bear--------------------------------------------------------

local TeddyBearAdd1 = script.Parent.ScrollingFrame.All_frame.TeddyBearBox.Add
local TeddyBearAdd2 = script.Parent.ScrollingFrame.Other_frame.TeddyBearBox.Add
local TeddyBearRemove1 = script.Parent.ScrollingFrame.All_frame.TeddyBearBox.Minus
local TeddyBearRemove2 = script.Parent.ScrollingFrame.Other_frame.TeddyBearBox.Minus
local TeddyBear_num1 = script.Parent.ScrollingFrame.All_frame.TeddyBearBox.Number
local TeddyBear_num2 = script.Parent.ScrollingFrame.Other_frame.TeddyBearBox.Number
local TeddyBear = {"t9", 0, 120}

---=============================================================

local Total = script.Parent.ScrollingFrame.Totalbox.CalCost

local item_list = {}
local totalcost = 0
local Enable = true

-- Basic functions------------------------------------------------



local function Display_num(place1, place2, item)
	
	if Enable then
	
		local index = table.find(item_list, item)
		
		if not (index == nil) then
			place1.Text = item_list[index][2]
			place2.Text = item_list[index][2]
		else
			place1.Text = 0
			place2.Text = 0
		end
		
		Total.Text = totalcost
	end
end

local function Click_add(item)
	
	if Enable then

		local index = table.find(item_list, item)

		if index == nil then
			table.insert(item_list, item)
			index = table.find(item_list, item)
			item_list[index][2] += 1
		else
			item_list[index][2] += 1
		end
		
			totalcost += item_list[index][3]
	end
	
end

local function Click_remove(item)
	
	if Enable then

		local index = table.find(item_list, item)

		if not (index == nil) then
			if not (item_list[index][2] <= 0) then
				item_list[index][2] -= 1
				totalcost -= item_list[index][3]
			end		
		end
	end

end



--Apple functions----------------------------------------------------

AppleAdd1.MouseButton1Up:Connect(function()
	Click_add(Apple)
	Display_num(Apple_num1, Apple_num2, Apple)
	--print(num_apple)
	
end)
AppleAdd2.MouseButton1Up:Connect(function()
	Click_add(Apple)
	Display_num(Apple_num1, Apple_num2, Apple)
	--print(num_apple)

end)
AppleRemove1.MouseButton1Up:Connect(function()
	Click_remove(Apple)
	Display_num(Apple_num1, Apple_num2, Apple)
	--print(num_apple)

end)
AppleRemove2.MouseButton1Up:Connect(function()
	Click_remove(Apple)
	Display_num(Apple_num1, Apple_num2, Apple)
	--print(num_apple)

end)

--Banana functions----------------------------------------------------

BananaAdd1.MouseButton1Up:Connect(function()
	Click_add(Banana)
	Display_num(Banana_num1, Banana_num2, Banana)
end)
BananaAdd2.MouseButton1Up:Connect(function()
	Click_add(Banana)
	Display_num(Banana_num1, Banana_num2, Banana)
end)
BananaRemove1.MouseButton1Up:Connect(function()
	Click_remove(Banana)
	Display_num(Banana_num1, Banana_num2, Banana)
end)
BananaRemove2.MouseButton1Up:Connect(function()
	Click_remove(Banana)
	Display_num(Banana_num1, Banana_num2, Banana)
end)

----Tomato functions----------------------------------------------------

TomatoAdd1.MouseButton1Up:Connect(function()
	Click_add(Tomato)
	Display_num(Tomato_num1, Tomato_num2, Tomato)
end)
TomatoAdd2.MouseButton1Up:Connect(function()
	Click_add(Tomato)
	Display_num(Tomato_num1, Tomato_num2, Tomato)
end)
TomatoRemove1.MouseButton1Up:Connect(function()
	Click_remove(Tomato)
	Display_num(Tomato_num1, Tomato_num2, Tomato)
end)
TomatoRemove2.MouseButton1Up:Connect(function()
	Click_remove(Tomato)
	Display_num(Tomato_num1, Tomato_num2, Tomato)
end)

----Carrot functions----------------------------------------------------

CarrotAdd1.MouseButton1Up:Connect(function()
	Click_add(Carrot)
	Display_num(Carrot_num1, Carrot_num2, Carrot)
end)
CarrotAdd2.MouseButton1Up:Connect(function()
	Click_add(Carrot)
	Display_num(Carrot_num1, Carrot_num2, Carrot)
end)
CarrotRemove1.MouseButton1Up:Connect(function()
	Click_remove(Carrot)
	Display_num(Carrot_num1, Carrot_num2, Carrot)
end)
CarrotRemove2.MouseButton1Up:Connect(function()
	Click_remove(Carrot)
	Display_num(Carrot_num1, Carrot_num2, Carrot)
end)

----Croissant functions----------------------------------------------------

CroissantAdd1.MouseButton1Up:Connect(function()
	Click_add(Croissant)
	Display_num(Croissant_num1, Croissant_num2, Croissant)
end)
CroissantAdd2.MouseButton1Up:Connect(function()
	Click_add(Croissant)
	Display_num(Croissant_num1, Croissant_num2, Croissant)
end)
CroissantRemove1.MouseButton1Up:Connect(function()
	Click_remove(Croissant)
	Display_num(Croissant_num1, Croissant_num2, Croissant)
end)
CroissantRemove2.MouseButton1Up:Connect(function()
	Click_remove(Croissant)
	Display_num(Croissant_num1, Croissant_num2, Croissant)
end)

----Pretzel functions----------------------------------------------------

PretzelAdd1.MouseButton1Up:Connect(function()
	Click_add(Pretzel)
	Display_num(Pretzel_num1, Pretzel_num2, Pretzel)
end)
PretzelAdd2.MouseButton1Up:Connect(function()
	Click_add(Pretzel)
	Display_num(Pretzel_num1, Pretzel_num2, Pretzel)
end)
PretzelRemove1.MouseButton1Up:Connect(function()
	Click_remove(Pretzel)
	Display_num(Pretzel_num1, Pretzel_num2, Pretzel)
end)
PretzelRemove2.MouseButton1Up:Connect(function()
	Click_remove(Pretzel)
	Display_num(Pretzel_num1, Pretzel_num2, Pretzel)
end)

----Cake functions----------------------------------------------------

CakeAdd1.MouseButton1Up:Connect(function()
	Click_add(Cake)
	Display_num(Cake_num1, Cake_num2, Cake)
end)
CakeAdd2.MouseButton1Up:Connect(function()
	Click_add(Cake)
	Display_num(Cake_num1, Cake_num2, Cake)
end)
CakeRemove1.MouseButton1Up:Connect(function()
	Click_remove(Cake)
	Display_num(Cake_num1, Cake_num2, Cake)
end)
CakeRemove2.MouseButton1Up:Connect(function()
	Click_remove(Cake)
	Display_num(Cake_num1, Cake_num2, Cake)
end)

----Donut functions----------------------------------------------------

DonutAdd1.MouseButton1Up:Connect(function()
	Click_add(Donut)
	Display_num(Donut_num1, Donut_num2, Donut)
end)
DonutAdd2.MouseButton1Up:Connect(function()
	Click_add(Donut)
	Display_num(Donut_num1, Donut_num2, Donut)
end)
DonutRemove1.MouseButton1Up:Connect(function()
	Click_remove(Donut)
	Display_num(Donut_num1, Donut_num2, Donut)
end)
DonutRemove2.MouseButton1Up:Connect(function()
	Click_remove(Donut)
	Display_num(Donut_num1, Donut_num2, Donut)
end)

----Pen functions----------------------------------------------------

PenAdd1.MouseButton1Up:Connect(function()
	Click_add(Pen)
	Display_num(Pen_num1, Pen_num2, Pen)
end)
PenAdd2.MouseButton1Up:Connect(function()
	Click_add(Pen)
	Display_num(Pen_num1, Pen_num2, Pen)
end)
PenRemove1.MouseButton1Up:Connect(function()
	Click_remove(Pen)
	Display_num(Pen_num1, Pen_num2, Pen)
end)
PenRemove2.MouseButton1Up:Connect(function()
	Click_remove(Pen)
	Display_num(Pen_num1, Pen_num2, Pen)
end)

----Pork functions----------------------------------------------------

PorkAdd1.MouseButton1Up:Connect(function()
	Click_add(Pork)
	Display_num(Pork_num1, Pork_num2, Pork)
end)
PorkAdd2.MouseButton1Up:Connect(function()
	Click_add(Pork)
	Display_num(Pork_num1, Pork_num2, Pork)
end)
PorkRemove1.MouseButton1Up:Connect(function()
	Click_remove(Pork)
	Display_num(Pork_num1, Pork_num2, Pork)
end)
PorkRemove2.MouseButton1Up:Connect(function()
	Click_remove(Pork)
	Display_num(Pork_num1, Pork_num2, Pork)
end)

----Chicken functions----------------------------------------------------

ChickenAdd1.MouseButton1Up:Connect(function()
	Click_add(Chicken)
	Display_num(Chicken_num1, Chicken_num2, Chicken)
end)
ChickenAdd2.MouseButton1Up:Connect(function()
	Click_add(Chicken)
	Display_num(Chicken_num1, Chicken_num2, Chicken)
end)
ChickenRemove1.MouseButton1Up:Connect(function()
	Click_remove(Chicken)
	Display_num(Chicken_num1, Chicken_num2, Chicken)
end)
ChickenRemove2.MouseButton1Up:Connect(function()
	Click_remove(Chicken)
	Display_num(Chicken_num1, Chicken_num2, Chicken)
end)

----Beef functions----------------------------------------------------

BeefAdd1.MouseButton1Up:Connect(function()
	Click_add(Beef)
	Display_num(Beef_num1, Beef_num2, Beef)
end)
BeefAdd2.MouseButton1Up:Connect(function()
	Click_add(Beef)
	Display_num(Beef_num1, Beef_num2, Beef)
end)
BeefRemove1.MouseButton1Up:Connect(function()
	Click_remove(Beef)
	Display_num(Beef_num1, Beef_num2, Beef)
end)
BeefRemove2.MouseButton1Up:Connect(function()
	Click_remove(Beef)
	Display_num(Beef_num1, Beef_num2, Beef)
end)

----Egg functions----------------------------------------------------

EggAdd1.MouseButton1Up:Connect(function()
	Click_add(Egg)
	Display_num(Egg_num1, Egg_num2, Egg)
end)
EggAdd2.MouseButton1Up:Connect(function()
	Click_add(Egg)
	Display_num(Egg_num1, Egg_num2, Egg)
end)
EggRemove1.MouseButton1Up:Connect(function()
	Click_remove(Egg)
	Display_num(Egg_num1, Egg_num2, Egg)
end)
EggRemove2.MouseButton1Up:Connect(function()
	Click_remove(Egg)
	Display_num(Egg_num1, Egg_num2, Egg)
end)

----Cheese functions----------------------------------------------------

CheeseAdd1.MouseButton1Up:Connect(function()
	Click_add(Cheese)
	Display_num(Cheese_num1, Cheese_num2, Cheese)
end)
CheeseAdd2.MouseButton1Up:Connect(function()
	Click_add(Cheese)
	Display_num(Cheese_num1, Cheese_num2, Cheese)
end)
CheeseRemove1.MouseButton1Up:Connect(function()
	Click_remove(Cheese)
	Display_num(Cheese_num1, Cheese_num2, Cheese)
end)
CheeseRemove2.MouseButton1Up:Connect(function()
	Click_remove(Cheese)
	Display_num(Cheese_num1, Cheese_num2, Cheese)
end)

----Milk functions----------------------------------------------------

MilkAdd1.MouseButton1Up:Connect(function()
	Click_add(Milk)
	Display_num(Milk_num1, Milk_num2, Milk)
end)
MilkAdd2.MouseButton1Up:Connect(function()
	Click_add(Milk)
	Display_num(Milk_num1, Milk_num2, Milk)
end)
MilkRemove1.MouseButton1Up:Connect(function()
	Click_remove(Milk)
	Display_num(Milk_num1, Milk_num2, Milk)
end)
MilkRemove2.MouseButton1Up:Connect(function()
	Click_remove(Milk)
	Display_num(Milk_num1, Milk_num2, Milk)
end)

----Pizza functions----------------------------------------------------

PizzaAdd1.MouseButton1Up:Connect(function()
	Click_add(Pizza)
	Display_num(Pizza_num1, Pizza_num2, Pizza)
end)
PizzaAdd2.MouseButton1Up:Connect(function()
	Click_add(Pizza)
	Display_num(Pizza_num1, Pizza_num2, Pizza)
end)
PizzaRemove1.MouseButton1Up:Connect(function()
	Click_remove(Pizza)
	Display_num(Pizza_num1, Pizza_num2, Pizza)
end)
PizzaRemove2.MouseButton1Up:Connect(function()
	Click_remove(Pizza)
	Display_num(Pizza_num1, Pizza_num2, Pizza)
end)

----Ice cream functions----------------------------------------------------

IcecreamAdd1.MouseButton1Up:Connect(function()
	Click_add(Icecream)
	Display_num(Icecream_num1, Icecream_num2, Icecream)
end)
IcecreamAdd2.MouseButton1Up:Connect(function()
	Click_add(Icecream)
	Display_num(Icecream_num1, Icecream_num2, Icecream)
end)
IcecreamRemove1.MouseButton1Up:Connect(function()
	Click_remove(Icecream)
	Display_num(Icecream_num1, Icecream_num2, Icecream)
end)
IcecreamRemove2.MouseButton1Up:Connect(function()
	Click_remove(Icecream)
	Display_num(Icecream_num1, Icecream_num2, Icecream)
end)

----French fries functions----------------------------------------------------

FrenchfriesAdd1.MouseButton1Up:Connect(function()
	Click_add(Frenchfries)
	Display_num(Frenchfries_num1, Frenchfries_num2, Frenchfries)
end)
FrenchfriesAdd2.MouseButton1Up:Connect(function()
	Click_add(Frenchfries)
	Display_num(Frenchfries_num1, Frenchfries_num2, Frenchfries)
end)
FrenchfriesRemove1.MouseButton1Up:Connect(function()
	Click_remove(Frenchfries)
	Display_num(Frenchfries_num1, Frenchfries_num2, Frenchfries)
end)
FrenchfriesRemove2.MouseButton1Up:Connect(function()
	Click_remove(Frenchfries)
	Display_num(Frenchfries_num1, Frenchfries_num2, Frenchfries)
end)

----Seafood functions----------------------------------------------------

SeafoodAdd1.MouseButton1Up:Connect(function()
	Click_add(Seafood)
	Display_num(Seafood_num1, Seafood_num2, Seafood)
end)
SeafoodAdd2.MouseButton1Up:Connect(function()
	Click_add(Seafood)
	Display_num(Seafood_num1, Seafood_num2, Seafood)
end)
SeafoodRemove1.MouseButton1Up:Connect(function()
	Click_remove(Seafood)
	Display_num(Seafood_num1, Seafood_num2, Seafood)
end)
SeafoodRemove2.MouseButton1Up:Connect(function()
	Click_remove(Seafood)
	Display_num(Seafood_num1, Seafood_num2, Seafood)
end)

----Toothbrush functions----------------------------------------------------

ToothbrushAdd1.MouseButton1Up:Connect(function()
	Click_add(Toothbrush)
	Display_num(Toothbrush_num1, Toothbrush_num2, Toothbrush)
end)
ToothbrushAdd2.MouseButton1Up:Connect(function()
	Click_add(Toothbrush)
	Display_num(Toothbrush_num1, Toothbrush_num2, Toothbrush)
end)
ToothbrushRemove1.MouseButton1Up:Connect(function()
	Click_remove(Toothbrush)
	Display_num(Toothbrush_num1, Toothbrush_num2, Toothbrush)
end)
ToothbrushRemove2.MouseButton1Up:Connect(function()
	Click_remove(Toothbrush)
	Display_num(Toothbrush_num1, Toothbrush_num2, Toothbrush)
end)

----Chocolate functions----------------------------------------------------

ChocolateAdd1.MouseButton1Up:Connect(function()
	Click_add(Chocolate)
	Display_num(Chocolate_num1, Chocolate_num2, Chocolate)
end)
ChocolateAdd2.MouseButton1Up:Connect(function()
	Click_add(Chocolate)
	Display_num(Chocolate_num1, Chocolate_num2, Chocolate)
end)
ChocolateRemove1.MouseButton1Up:Connect(function()
	Click_remove(Chocolate)
	Display_num(Chocolate_num1, Chocolate_num2, Chocolate)
end)
ChocolateRemove2.MouseButton1Up:Connect(function()
	Click_remove(Chocolate)
	Display_num(Chocolate_num1, Chocolate_num2, Chocolate)
end)

----Chips functions----------------------------------------------------

ChipsAdd1.MouseButton1Up:Connect(function()
	Click_add(Chips)
	Display_num(Chips_num1, Chips_num2, Chips)
end)
ChipsAdd2.MouseButton1Up:Connect(function()
	Click_add(Chips)
	Display_num(Chips_num1, Chips_num2, Chips)
end)
ChipsRemove1.MouseButton1Up:Connect(function()
	Click_remove(Chips)
	Display_num(Chips_num1, Chips_num2, Chips)
end)
ChipsRemove2.MouseButton1Up:Connect(function()
	Click_remove(Chips)
	Display_num(Chips_num1, Chips_num2, Chips)
end)

----Soap functions----------------------------------------------------

SoapAdd1.MouseButton1Up:Connect(function()
	Click_add(Soap)
	Display_num(Soap_num1, Soap_num2, Soap)
end)
SoapAdd2.MouseButton1Up:Connect(function()
	Click_add(Soap)
	Display_num(Soap_num1, Soap_num2, Soap)
end)
SoapRemove1.MouseButton1Up:Connect(function()
	Click_remove(Soap)
	Display_num(Soap_num1, Soap_num2, Soap)
end)
SoapRemove2.MouseButton1Up:Connect(function()
	Click_remove(Soap)
	Display_num(Soap_num1, Soap_num2, Soap)
end)

----Shampoo functions----------------------------------------------------

ShampooAdd1.MouseButton1Up:Connect(function()
	Click_add(Shampoo)
	Display_num(Shampoo_num1, Shampoo_num2, Shampoo)
end)
ShampooAdd2.MouseButton1Up:Connect(function()
	Click_add(Shampoo)
	Display_num(Shampoo_num1, Shampoo_num2, Shampoo)
end)
ShampooRemove1.MouseButton1Up:Connect(function()
	Click_remove(Shampoo)
	Display_num(Shampoo_num1, Shampoo_num2, Shampoo)
end)
ShampooRemove2.MouseButton1Up:Connect(function()
	Click_remove(Shampoo)
	Display_num(Shampoo_num1, Shampoo_num2, Shampoo)
end)

----Pill functions----------------------------------------------------

PillAdd1.MouseButton1Up:Connect(function()
	Click_add(Pill)
	Display_num(Pill_num1, Pill_num2, Pill)
end)
PillAdd2.MouseButton1Up:Connect(function()
	Click_add(Pill)
	Display_num(Pill_num1, Pill_num2, Pill)
end)
PillhRemove1.MouseButton1Up:Connect(function()
	Click_remove(Pill)
	Display_num(Pill_num1, Pill_num2, Pill)
end)
PillRemove2.MouseButton1Up:Connect(function()
	Click_remove(Pill)
	Display_num(Pill_num1, Pill_num2, Pill)
end)

----Toilet Paper functions----------------------------------------------------

ToiletPaperAdd1.MouseButton1Up:Connect(function()
	Click_add(ToiletPaper)
	Display_num(ToiletPaper_num1, ToiletPaper_num2, ToiletPaper)
end)
ToiletPaperAdd2.MouseButton1Up:Connect(function()
	Click_add(ToiletPaper)
	Display_num(ToiletPaper_num1, ToiletPaper_num2, ToiletPaper)
end)
ToiletPaperRemove1.MouseButton1Up:Connect(function()
	Click_remove(ToiletPaper)
	Display_num(ToiletPaper_num1, ToiletPaper_num2, ToiletPaper)
end)
ToiletPaperRemove2.MouseButton1Up:Connect(function()
	Click_remove(ToiletPaper)
	Display_num(ToiletPaper_num1, ToiletPaper_num2, ToiletPaper)
end)

----Teddy Bear functions----------------------------------------------------

TeddyBearAdd1.MouseButton1Up:Connect(function()
	Click_add(TeddyBear)
	Display_num(TeddyBear_num1, TeddyBear_num2, TeddyBear)
end)
TeddyBearAdd2.MouseButton1Up:Connect(function()
	Click_add(TeddyBear)
	Display_num(TeddyBear_num1, TeddyBear_num2, TeddyBear)
end)
TeddyBearRemove1.MouseButton1Up:Connect(function()
	Click_remove(TeddyBear)
	Display_num(TeddyBear_num1, TeddyBear_num2, TeddyBear)
end)
TeddyBearRemove2.MouseButton1Up:Connect(function()
	Click_remove(TeddyBear)
	Display_num(TeddyBear_num1, TeddyBear_num2, TeddyBear)
end)

---Start,Close ------------------------------------------------


local Start = script.Parent.ScrollingFrame.Totalbox.Start
local ServerScriptService = game:GetService("ServerScriptService")
--local shareData = ServerScriptService.ShareData

local function Item_call(item_list)
	
	if #item_list > 0 then
		local sending_list = {'ss'}

		for item in item_list do
			--print(item_list[item])
			table.insert(sending_list, item_list[item][1])
		end

		game.ReplicatedStorage.RemoteFunction:InvokeServer(sending_list)
	end
	
end

script.Parent.Close.MouseButton1Up:Connect(function()

	script.Parent.ScrollingFrame.Visible = false
	script.Parent.Shopping.Visible = true
	script.Parent.Close.Visible = false
	
end)



Start.MouseButton1Click:Connect(function()
	script.Parent.ScrollingFrame.Visible = false
	script.Parent.Close.Visible = false
	script.Parent.Shopping.Visible = true
	
	Enable = false
	Start.Visible = false
	
	local data = Item_call(item_list)
	

	for index in item_list do
		item_list[index][2] = 0 
	end
	Enable = true
	Start.Visible = true
	Total.Text = 0
	item_list = {}
	totalcost = 0
	
	Apple_num1.Text = 0
	Apple_num2.Text = 0
	Carrot_num1.Text = 0
	Carrot_num2.Text = 0
	Tomato_num1.Text = 0
	Tomato_num2.Text = 0
	Banana_num1.Text = 0
	Banana_num2.Text = 0
	Croissant_num1.Text = 0
	Croissant_num2.Text = 0
	Pretzel_num1.Text = 0
	Pretzel_num2.Text = 0
	Cake_num1.Text = 0
	Cake_num2.Text = 0
	Donut_num1.Text = 0
	Donut_num2.Text = 0
	Pork_num1.Text = 0
	Pork_num2.Text = 0
	Chicken_num1.Text = 0
	Banana_num1.Text = 0
	Beef_num2.Text = 0
	Egg_num1.Text = 0
	Egg_num2.Text = 0
	Cheese_num1.Text = 0
	Cheese_num2.Text = 0
	Milk_num1.Text = 0
	Milk_num2.Text = 0
	Pill_num1.Text = 0
	Pizza_num2.Text = 0
	Icecream_num1.Text = 0
	Icecream_num2.Text = 0
	Frenchfries_num1.Text = 0
	Frenchfries_num2.Text = 0
	Seafood_num1.Text = 0
	Seafood_num2.Text = 0
	Chocolate_num1.Text = 0
	Chocolate_num2.Text = 0
	Pen_num1.Text = 0
	Pen_num2.Text = 0
	Chips_num1.Text = 0
	Chips_num2.Text = 0
	ToiletPaper_num1.Text = 0
	ToiletPaper_num2.Text = 0
	Pill_num1.Text = 0
	Pill_num2.Text = 0
	Toothbrush_num1.Text = 0
	Toothbrush_num2.Text = 0
	Shampoo_num1.Text = 0
	Shampoo_num2.Text = 0
	Soap_num1.Text = 0
	Soap_num2.Text = 0
	TeddyBear_num1.Text = 0
	TeddyBear_num2.Text = 0
end)

--print(table.find(item_list, Apple))
--print(item_list[1][1])
--print(item_list)
