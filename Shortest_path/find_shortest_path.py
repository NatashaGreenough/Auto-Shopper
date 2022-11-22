class QItem:
    def __init__(self, row, col, dist):
        self.row = row
        self.col = col
        self.dist = dist

    def __repr__(self):
        return f"QItem({self.row}, {self.col}, {self.dist})"


def minDistance(grid, a, b):
    source = QItem(0, 0, 0)

    # Finding the source to start from
    for row in range(len(grid)):
        for col in range(len(grid[row])):
            if grid[row][col] == a:
                source.row = row
                source.col = col
                break

    # To maintain location visit status
    visited = [[False for _ in range(len(grid[0]))]
               for _ in range(len(grid))]

    # applying BFS on matrix cells starting from source
    queue = []
    queue.append(source)
    visited[source.row][source.col] = True
    while len(queue) != 0:
        source = queue.pop(0)

        # Destination found;
        if (grid[source.row][source.col] == b):
            if source.dist == 1: return 1
            if source.dist == 0: return 0
            return source.dist - 2

            #return source.dist

        # moving up
        if isValid(source.row - 1, source.col, grid, visited, b):
            queue.append(QItem(source.row - 1, source.col, source.dist + 1))
            visited[source.row - 1][source.col] = True

        # moving down
        if isValid(source.row + 1, source.col, grid, visited, b):
            queue.append(QItem(source.row + 1, source.col, source.dist + 1))
            visited[source.row + 1][source.col] = True

        # moving left
        if isValid(source.row, source.col - 1, grid, visited, b):
            queue.append(QItem(source.row, source.col - 1, source.dist + 1))
            visited[source.row][source.col - 1] = True

        # moving right
        if isValid(source.row, source.col + 1, grid, visited, b):
            queue.append(QItem(source.row, source.col + 1, source.dist + 1))
            visited[source.row][source.col + 1] = True
    return -1

# checking where move is valid or not
def isValid(x, y, grid, visited, b):
    if ((x >= 0 and y >= 0) and
            (x < len(grid) and y < len(grid[0])) and
            (grid[x][y] == '---' or grid[x][y] == b) and (visited[x][y] == False)):
        return True
    return False

'''test case'''
map = []
#file = "supermarket_map.txt"
file = "supermarket_products.txt"

with open(file) as f:
    for lines in f:
        map.append(list(word for word in lines.split()))

all_nodes =['sss', 'm1', 'm2', 'm3', 'd1', 'd2', 'd3', 'v1', 'v2', 'v3', 'v4', 'b1', 'b2', 'b3', 'b4', 't1', 't2', 't3', 't4', 't5', 't6', 't7', 't8', 't9', 'f1', 'f2', 'f3', 'f4']

def print_shortest(s, f):
    if s == 'sss' and f!= 'sss':
        a = minDistance(map, s, f + '1')
        b = minDistance(map, s, f + '2')
        return sorted([a, b])[0] + 1
    if f == 'sss' and s!= 'sss':
        a = minDistance(map, s + '1', f)
        b = minDistance(map, s + '2', f)
        return sorted([a, b])[0] + 1
    if s == 'sss' and f == 'sss':
        return 0
    a = minDistance(map, s + '1', f + '1')
    b = minDistance(map, s + '1', f + '2')
    c = minDistance(map, s + '2', f + '1')
    d = minDistance(map, s + '2', f + '2')
    return sorted([a, b, c, d])[0]

'''
map[4][11] = 'dd'
print(*map, sep='\n')
print(minDistance(map, 'ss', 'dd'))
'''

#find shortest from 2 same nodes
'''
s = 'm11'
f = 'm12'
print(print_shortest(s, f))
'''

for i in all_nodes:
    for j in all_nodes:
        print(print_shortest(i, j), end="\t")
    print()

'''
#find shortest from all nodes
dist_matrix = []
cnt = 0
for i in range(len(map)):
    for j in range(len(map[0])):
        for k in range(len(map)):
            for l in range(len(map[0])):
                if map[i][j] == '#' and map[k][l] == '#':
                    cnt += 1
                    map[i][j] = 's'
                    map[k][l] = 'd'
                    dist_matrix.append(minDistance(map))
                    map[i][j], map[k][l] = '#', '#'

cnt = int(cnt ** (1/2))
print(f"<{cnt} x {cnt}>")

for i in range(len(dist_matrix)):
    if i % cnt == 0:
        print()
    print(dist_matrix[i], end='\t')
'''
'''
l = [[] for i in range(cnt)]
for i in range(cnt):
    for j in range(cnt):
        l[i].append(dist_matrix.pop(0))
print(*l, sep='\n')
'''
