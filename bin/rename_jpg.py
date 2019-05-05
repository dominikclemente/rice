import os

path = '/home/autodidactic/pix/walls/Minimal'
files = os.listdir(path)

for index, file in enumerate(files):
    os.rename(os.path.join(path, file), os.path.join(path, str(index)+'.jpg'))