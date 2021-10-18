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

SResult = Listbox(window,
                )
SResult.pack()

BSelect = Button(window,
            text="Select",
            command=lambda:ChampDataBase.NewWindow(SResult))
BSelect.pack()

window.mainloop()