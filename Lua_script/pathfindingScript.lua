local cart = workspace:WaitForChild("Cart"):WaitForChild("MeshPart")

local TweenService = game:GetService("TweenService")
local PathfindingService = game:GetService("PathfindingService")

local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear)

local path = PathfindingService:CreatePath({
	AgentRadius = 1,
	WaypointSpacing = 1,
	AgentCanJump = false,
	AgentCanClimb = false,
	
	Costs = {
		Shelf = 99,
		Baseplate = 0.01
	}
})

local posTable = {}
posTable["ss"] = Vector3.new(-58.5, 1.97, -0.5)
posTable["v1"] = Vector3.new(-51, 1.97, -30.5)
posTable["v2"] = Vector3.new(-41, 1.97, -30.5)
posTable["v3"] = Vector3.new(-51, 1.97, -15.5)
posTable["v4"] = Vector3.new(-41, 1.97, -15.5)
posTable["b1"] = Vector3.new(-51, 1.97, -15.5)
posTable["b2"] = Vector3.new(-41, 1.97, -15.5)
posTable["b3"] = Vector3.new(-51, 1.97, -0.5)
posTable["b4"] = Vector3.new(-41, 1.97, -0.5)
posTable["m1"] = Vector3.new(-56, 1.97, -30.5)
posTable["m2"] = Vector3.new(-46, 1.97, -30.5)
posTable["m3"] = Vector3.new(-36, 1.97, -30.5)
posTable["d1"] = Vector3.new(-26, 1.97, -30.5)
posTable["d2"] = Vector3.new(-16, 1.97, -30.5)
posTable["d3"] = Vector3.new(-6, 1.97, -30.5)
posTable["f1"] = Vector3.new(-3.5, 1.97, -28)
posTable["f2"] = Vector3.new(-3.5, 1.97, -18)
posTable["f3"] = Vector3.new(-3.5, 1.97, -8)
posTable["f4"] = Vector3.new(-3.5, 1.97, 2)
posTable["t1"] = Vector3.new(-33.5, 1.97, -23)
posTable["t2"] = Vector3.new(-33.5, 1.97, -13)
posTable["t3"] = Vector3.new(-33.5, 1.97, -3)
posTable["t4"] = Vector3.new( -23.5, 1.97, -23)
posTable["t5"] = Vector3.new(-23.5, 1.97, -13)
posTable["t6"] = Vector3.new(-23.5, 1.97, -3)
posTable["t7"] = Vector3.new(-13.5, 1.97, -23)
posTable["t8"] = Vector3.new(-13.5, 1.97, -13)
posTable["t9"] = Vector3.new(-13.5, 1.97, -3)

local all_nodes = {'ss', 'm1', 'm2', 'm3', 'd1', 'd2', 'd3', 'v1', 'v2', 'v3', 'v4', 'b1', 'b2', 'b3', 'b4', 't1', 't2', 't3', 't4', 't5', 't6', 't7', 't8', 't9', 'f1', 'f2', 'f3', 'f4'}

local map =  {{0, 7, 9, 11, 13, 15, 17, 6, 10, 5, 7, 3, 7, 2, 4, 10, 8, 6, 12, 10, 8, 14, 12, 10, 17, 15, 13, 11},
{7, 0, 1, 3, 5, 7, 9, 0, 1, 1, 6, 4, 6, 5, 9, 5, 7, 9, 7, 9, 11, 9, 11, 13, 10, 12, 14, 16},
{9, 1, 0, 1, 3, 5, 7, 0, 0, 4, 4, 6, 6, 7, 7, 3, 5, 7, 5, 7, 9, 7, 9, 11, 8, 10, 12, 14},
{11, 3, 1, 0, 1, 3, 5, 2, 0, 6, 2, 6, 4, 9, 5, 1, 3, 5, 3, 5, 7, 5, 7, 9, 6, 8, 10, 12},
{13, 5, 3, 1, 0, 1, 3, 4, 2, 7, 3, 7, 5, 10, 6, 2, 4, 6, 2, 3, 5, 3, 5, 7, 4, 6, 8, 10},
{15, 7, 5, 3, 1, 0, 2, 6, 4, 9, 5, 9, 7, 12, 8, 2, 4, 6, 1, 4, 6, 2, 3, 5, 2, 4, 6, 8},
{17, 9, 7, 5, 3, 2, 0, 8, 6, 11, 7, 11, 9, 14, 10, 3, 6, 8, 2, 9, 6, 2, 4, 6, 0, 2, 4, 6},
{6, 0, 0, 2, 4, 6, 8, 0, 1, 2, 5, 3, 5, 4, 8, 4, 6, 8, 6, 8, 10, 8, 10, 12, 9, 11, 13, 15},
{10, 1, 0, 0, 2, 4, 6, 1, 0, 5, 2, 5, 3, 8, 4, 1, 2, 4, 4, 6, 8, 6, 8, 10, 7, 9, 11, 12},
{5, 1, 4, 6, 7, 9, 11, 2, 5, 0, 1, 0, 1, 3, 5, 4, 3, 5, 9, 11, 10, 11, 13, 12, 12, 14, 15, 13},
{7, 6, 4, 2, 3, 5, 7, 5, 2, 1, 0, 1, 0, 5, 3, 2, 2, 3, 5, 7, 8, 7, 9, 10, 8, 10, 12, 11},
{3, 4, 6, 6, 7, 9, 11, 3, 5, 0, 1, 0, 1, 1, 5, 4, 3, 5, 9, 11, 10, 11, 13, 12, 12, 14, 15, 13},
{7, 6, 6, 4, 5, 7, 9, 5, 3, 1, 0, 1, 0, 5, 1, 2, 0, 1, 7, 8, 6, 9, 10, 8, 10, 12, 11, 9},
{2, 5, 7, 9, 10, 12, 14, 4, 8, 3, 5, 1, 5, 0, 1, 7, 5, 3, 11, 9, 7, 13, 11, 9, 15, 14, 12, 10},
{4, 9, 7, 5, 6, 8, 10, 8, 4, 5, 3, 5, 1, 1, 0, 3, 1, 0, 8, 7, 5, 10, 9, 7, 11, 12, 10, 8},
{10, 5, 3, 1, 2, 3, 4, 4, 1, 4, 2, 4, 2, 7, 3, 0, 1, 3, 4, 6, 8, 6, 8, 10, 7, 9, 11, 11},
{8, 7, 5, 3, 4, 4, 6, 6, 2, 3, 2, 3, 0, 5, 1, 1, 0, 1, 6, 8, 6, 8, 10, 8, 9, 11, 11, 9},
{6, 9, 7, 5, 6, 6, 8, 8, 4, 5, 3, 5, 1, 3, 0, 3, 1, 0, 8, 6, 4, 10, 8, 6, 11, 11, 9, 7},
{12, 7, 5, 3, 2, 1, 2, 6, 4, 9, 5, 9, 7, 11, 8, 4, 6, 8, 0, 1, 3, 4, 6, 8, 5, 7, 9, 9},
{10, 9, 7, 5, 3, 4, 9, 8, 6, 11, 7, 11, 8, 9, 7, 6, 8, 6, 1, 0, 1, 6, 8, 6, 7, 9, 9, 7},
{8, 11, 9, 7, 5, 6, 6, 10, 8, 10, 8, 10, 6, 7, 5, 8, 6, 4, 3, 1, 0, 8, 6, 4, 9, 9, 7, 5},
{14, 9, 7, 5, 3, 2, 2, 8, 6, 11, 7, 11, 9, 13, 10, 6, 8, 10, 4, 6, 8, 0, 1, 3, 3, 5, 7, 7},
{12, 11, 9, 7, 5, 3, 4, 10, 8, 13, 9, 13, 10, 11, 9, 8, 10, 8, 6, 8, 6, 1, 0, 1, 5, 7, 7, 5},
{10, 13, 11, 9, 7, 5, 6, 12, 10, 12, 10, 12, 8, 9, 7, 10, 8, 6, 8, 6, 4, 3, 1, 0, 7, 7, 5, 3},
{17, 10, 8, 6, 4, 2, 0, 9, 7, 12, 8, 12, 10, 15, 11, 7, 9, 11, 5, 7, 9, 3, 5, 7, 0, 1, 3, 5},
{15, 12, 10, 8, 6, 4, 2, 11, 9, 14, 10, 14, 12, 14, 12, 9, 11, 11, 7, 9, 9, 5, 7, 7, 1, 0, 1, 3},
{13, 14, 12, 10, 8, 6, 4, 13, 11, 15, 12, 15, 11, 12, 10, 11, 11, 9, 9, 9, 7, 7, 7, 5, 3, 1, 0, 1},
{11, 16, 14, 12, 10, 8, 6, 15, 12, 13, 11, 13, 9, 10, 8, 11, 9, 7, 9, 7, 5, 7, 5, 3, 5, 3, 1, 0}}


all_nodes = {'ss', 'm1', 'm2', 'm3', 'd1', 'd2', 'd3', 'v1', 'v2', 'v3', 'v4', 'b1', 'b2', 'b3', 'b4', 't1', 't2', 't3', 't4', 't5', 't6', 't7', 't8', 't9', 'f1', 'f2', 'f3', 'f4'}

function split(pString, pPattern)
	local Table = {} 
	local fpat = "(.-)" .. pPattern
	local last_end = 1
	local s, e, cap = pString:find(fpat, 1)
	while s do
		if s ~= 1 or cap ~= "" then
			table.insert(Table,cap)
		end
		last_end = e+1
		s, e, cap = pString:find(fpat, last_end)
	end
	if last_end <= #pString then
		cap = pString:sub(last_end)
		table.insert(Table, cap)
	end
	return Table
end

function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end

function indexOf(array, value)
	for i, v in ipairs(array) do
		if v == value then
			return i
		end
	end
	return nil
end

function has_value (tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end
	return false
end

function recur_min(current_node, node_list, dis_list, cost, queue)

	local index_dis = indexOf(node_list, current_node)

	local use_list = dis_list[index_dis]
	local min_node = nil
	min_v = nil

	if tablelength(queue) < tablelength(node_list) then
		for num=1, tablelength(use_list) do
			if not has_value(queue, node_list[num]) then
				if min_v == nil or use_list[num] < min_v  then
					min_v = use_list[num]
					min_node = node_list[num]
				end
			end
		end
		table.insert(queue, min_node)
		--if min_v == nil  then
		-- print("Error")
		--else
		-- print(min_v)
		--end
		cost = cost + min_v
		return recur_min(min_node, node_list, dis_list, cost, queue)
	else 
		return queue, cost
	end
end


--s = io.read()
s = {}
--nodes = split(s, " ")
function optimalRoute(list)
	nodes = list
	distances = {}

	for i=1, tablelength(nodes) do
		table.insert(distances, {})
	end

	index = 1
	for a=1, tablelength(nodes) do

		for b=1, tablelength(nodes) do
			i = indexOf(all_nodes, nodes[a])
			j = indexOf(all_nodes, nodes[b])
			table.insert(distances[index], map[i][j])
		end
		index = index + 1
	end


--[[
for a=1, tablelength(nodes) do
  for b=1, tablelength(nodes) do
    print(distances[a][b])
  end
end
--]]

	output_q = {}
	cell_num = 1
	min_cost = nil
	list_cost = {}
	min_q = {}
	q = {}
	count = 0

	--while tablelength(output_q) < tablelength(nodes) do
	-- test_q = {}
	-- min_q = {}
	-- dis_cost = 0
	-- min_cost = 100
	-- last_node = nil

	-- for index=1, tablelength(nodes)-1 do
	--  test_q = {}
	--  dis_cost = 0
	--  table.insert(test_q, "ss")

	--  table.insert(test_q, nodes[index])
	--  dis_cost = dis_cost + distances[cell_num][index]

	--  test_q, dis_cost = recur_min(nodes[index], nodes, distances, dis_cost, test_q)
	--  last_node = test_q[tablelength(test_q)]

	--  table.insert(test_q, "ss")
	--  num = indexOf(nodes, last_node)
	--  dis_cost = dis_cost + distances[1][num]

	--  if min_cost == nil or dis_cost < min_cost then
	--   min_cost = dis_cost
	--   min_q = test_q
	--  end

	--  table.insert(list_cost, min_cost)

	--  table.insert(q, min_q)
	-- end

	-- output_q = min_q
	--end


	--print(indexOf(list_cost, min_cost))


	while tablelength(output_q) < tablelength(nodes) do
		test_q = {}
		min_q = {}
		dis_cost = 0
		min_cost = 100
		min_v = nil
		node = nil

		table.insert(test_q, "ss")


		test_q, dis_cost = recur_min('ss', nodes, distances, dis_cost, test_q)

		last_node = test_q[tablelength(nodes)]

		table.insert(test_q, "ss")
		num = indexOf(nodes, last_node)
		dis_cost = dis_cost + distances[1][num]

		min_cost = dis_cost
		min_q = test_q
		output_q = min_q
	end

	print("min cost =", min_cost)
	node_cost = 1

	print("Output:")

	for index in output_q do
		print(output_q[index])
	end

	print("=================================================================================")

	local queue = output_q
	
	for i, v in ipairs(workspace:GetDescendants()) do
		if v.Name == "pathPart" then
			v:Destroy()
		end
	end
	
	for shelf in queue do
		local pos = cart.Position
		local des = posTable[queue[shelf]]

		path:ComputeAsync(pos, des)
		local waypoints = path:getWaypoints()

		for i, waypoint in pairs(waypoints) do
			if i > 1 then
				local part = Instance.new("Part")
				part.Name = "pathPart"
				part.Shape = "Block"
				part.Material = "Neon"
				part.Size = Vector3.new(0.4, 0.4, 0.4)
				part.Position = Vector3.new(waypoint.Position.X, 0, waypoint.Position.Z)
				part.Anchored = true
				part.CanCollide = false
				part.Parent = game.Workspace

				local diffX = waypoint.Position.X - cart.Position.X
				local diffZ = waypoint.Position.Z - cart.Position.Z
				local angle = math.atan(diffX / diffZ) * 180 / math.pi

				if diffZ == 0 or diffX == 0 then
					if diffX > 0 then
						angle = -90
					elseif diffX < 0 then
						angle = 90
					elseif diffZ > 0 then
						if cart.Orientation.Y > 0 then
							angle = 180
						elseif cart.Orientation.Y < 0 then
							angle = -180
						end
					end
				elseif diffX > 0 then
					if diffZ > 0 then
						angle = angle - 180
					end
				elseif diffX < 0 then
					if diffZ > 0 then
						angle = angle + 180
					end
				end

				local tween = TweenService:Create(cart, tweenInfo, {Position = Vector3.new(waypoint.Position.X, 1.97, waypoint.Position.Z), Orientation = Vector3.new(cart.Orientation.X, angle, cart.Orientation.Z)})
				tween:Play()
				wait(0.2)
			end
			
		end
		if queue[shelf] ~= 'ss' then
			local part = Instance.new("Part")
			part.Shape = "Ball"
			part.Material = "Neon"
			part.Color = Color3.fromRGB(0, 255, 0)
			part.Size = Vector3.new(1, 1, 1)
			part.Position = cart.Position + Vector3.new(0, 4, 0)
			part.Anchored = true
			part.CanCollide = false
			part.CastShadow = false
			part.Parent = game.Workspace
			wait(2)
			part:Destroy()
		end
	end

end


game.ReplicatedStorage.RemoteFunction.OnServerInvoke = function(player, list)
	optimalRoute(list)
end