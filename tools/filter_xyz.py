import glob
import os
import numpy as np
import argparse

parser = argparse.ArgumentParser(formatter_class=argparse.RawTextHelpFormatter)
parser.add_argument('--root', type=str, default='/home/sensetime/laser_cam_calib/sample data/caliblidar/0509_xyz')
parser.add_argument('--src', type=str, default='0509_xyz')
parser.add_argument('--dst', type=str, default='0509_filtxyz')
parser.add_argument('--file_type', type=str, default='xyz')
args = parser.parse_args()
datapath = args.root
file_type = args.file_type
src = args.src
dst = args.dst
src_path = os.path.join(datapath, src)
dst_path = os.path.join(datapath, dst)

def mkdir(path):
    # print os.path.split(path)
    if os.path.split(path)[1] != '':
        mkdir(os.path.split(path)[0])
    else:
        return
    if not os.path.exists(path):
        os.mkdir(path)
mkdir(dst_path)

for txt in sorted(glob.glob(src_path + '/*.' + file_type)):
    f = open(txt.replace(src, dst), 'w')
    data = np.loadtxt(open(txt), delimiter=' ')
    rows = data.shape[0]
    for i in range(rows):

        if -4 <= data[i, 0] and data[i, 0] <= 4 and 4 <= data[i, 1] and data[i, 1] <= 7 :

            f.write(str(data[i, 0]) + ' ' + str(data[i, 1]) + ' ' + str(data[i, 2])+'\n')
        if data[i, 0] == ' ':
            break
    f.close()
    print txt
