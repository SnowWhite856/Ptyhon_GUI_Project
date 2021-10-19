from tkinter import *
from ChampDataBase import CDataBase

ChampDataBase = CDataBase()

window = Tk()

Search = Entry(window,
                font=("Arial", 50))
Search.grid(row=0, column=0)

BSearch = Button(window,
                text="Submit",
                command=lambda:ChampDataBase.Question(Search.get(), SResult))
BSearch.grid(row=1, column=0)

SResult = Listbox(window,
                )
SResult.grid(row=0, column=1)

BSelect = Button(window,
            text="Select",
            command=lambda:ChampDataBase.NewWindow(SResult))
BSelect.grid(row=1, column=1)

window.mainloop()