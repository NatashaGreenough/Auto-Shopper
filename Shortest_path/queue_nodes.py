map = []
file = "ShortestPath.txt"
with open(file) as f:
    for lines in f:
        map.append(list(word for word in lines.split()))

map = map[1:]
for i in range(len(map)):
    map[i] = map[i][1:]
#print(*map ,sep="\n")

nodes = list(input("Input list of products: ").split())

nodes.insert(0, 'ss')
print(">>>", nodes)
distances = [[] for i in range(len(nodes))]
all_nodes = ['ss', 'm1', 'm2', 'm3', 'd1', 'd2', 'd3', 'v1', 'v2', 'v3', 'v4', 'b1', 'b2', 'b3', 'b4', 't1', 't2', 't3', 't4', 't5', 't6', 't7', 't8', 't9', 'f1', 'f2', 'f3', 'f4']

index = 0
for node1 in nodes:
    for node2 in nodes:
        i = all_nodes.index(node1)
        j = all_nodes.index(node2)
        distances[index].append(int(map[i][j]))
    index += 1
print(distances)


# nodes = ['ss', 'm1', 'm2', 'm3']
# distances = [[0, 7, 9, 11], [7, 0, 1, 3], [9, 1, 0, 1], [11, 3, 1, 0]]

def recur_min(current_node, node_list, dis_list, cost, queue):

    index_dis = node_list.index(current_node)
    use_list = dis_list[index_dis]
    min_node = None
    min_v = None

    if len(queue) < len(node_list):
        for num in range(len(use_list)):
            if node_list[num] not in queue:
                if min_v is None:
                    min_v = use_list[num]
                    min_node = node_list[num]

                elif use_list[num] <= min_v:
                    min_v = use_list[num]
                    min_node = node_list[num]

        queue.append(min_node)

        # print(min_v)
        # cost += min_v
        pre_node = min_node

        return recur_min(min_node, node_list, dis_list, cost, queue)

    else:

        return queue, cost


output_q = []
cell_num = 0
min_cost = None
list_cost = []
min_q = []


while len(output_q) != len(nodes) + 1:

    test_q = ['ss']
    min_q = []
    dis_cost = 0
    min_cost = 100
    min_v = None
    node = None

    test_q, dis_cost = recur_min('ss', nodes, distances, dis_cost, test_q)
    print(test_q)

    last_node = test_q[-1]

    test_q.append('ss')
    num = nodes.index(last_node)
    dis_cost += distances[0][num]

    min_cost = dis_cost
    min_q = test_q

    output_q = min_q

print("*****************************************************************")
print(output_q)
# print(min_cost)




