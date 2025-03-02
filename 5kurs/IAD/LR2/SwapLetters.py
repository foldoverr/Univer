with open('magic04.data', 'r') as file:
    content = file.read()

content = content.replace('g', '1').replace('h', '2')

with open('magic04.data', 'w') as file:
    file.write(content)