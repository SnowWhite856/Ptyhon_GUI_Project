import requests
from tkinter import *

response = requests.get("https://randomfox.ca/images/87.jpg")


w = Tk()

photo = PhotoImage(file=response.content)

label = Label(w, image=photo)
label.pack()

w.mainloop()
