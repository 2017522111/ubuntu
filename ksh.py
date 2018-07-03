import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
data = pd.read_csv('xx.csv') 
vazzv = data['1400.60']

plt.plot(vazzv, '.') 
plt.ylim((1380,1440))  
plt.xlabel('X')  
plt.ylabel('Y')
plt.show()
