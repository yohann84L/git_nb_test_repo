from tqdm import tqdm

def func1():
   for i in tqdm(range(10)):
      print("Hello test")

if __name__ == "__main__":
   func1()