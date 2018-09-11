#coding=utf-8

connect = [
        {'7': 'HasSolution'},
        {'13': 'Transform'},
        {'15': 'Require {message:«Î ‰»Î” œ‰µÿ÷∑}'},
        {'17': 'HasSolution {object_name:°ÆU≈Ã◊¢≤·…Í«Î±Ì°Ø}'},
        {'22': 'TopGuidance'},
        {'23': 'Transform'}
        ]

shape = [
        {'7': '2'},
        {'7': '6'},
        {'13': '2'},
        {'13': '8'},
        {'15': '14'},
        {'15': '16'},
        {'17': '8'},
        {'17': '16'},
        {'23': '8'},
        {'23': '18'},
        {'22': '18'},
        {'22': '20'}
        ]

dict1 = {}
for k in connect:
    for w in k:
        dict1[w] = k[w]

print(dict1)

reverse_shape = []
set_1 = set([])
for k in shape:
    for w in k:
        reverse_shape.append({k[w] : w})
        set_1.add(k[w])

print("\n\n")

for i in set_1:
    print(i)
    for j in reverse_shape:
        for k in j:
            if k == i: 
                print(dict1[j[k]])
                print("\t")



