from tkinter import *
from ChampDataBase import CDataBase

ChampDataBase = CDataBase()

window = Tk()

Search = Entry(window,
                font=("Arial", 50))
Search.pack()

BSearch = Button(window,
                text="Submit",
                command=lambda:ChampDataBase.Question(Search.get(), SResult))
BSearch.pack()

SResult = Label(window,
                )
SResult.pack()

window.mainloop()