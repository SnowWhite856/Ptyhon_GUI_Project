from tkinter import *
import mysql.connector
import requests
from tkinter import ttk

class CDataBase:
    def __init__(self):
        self.host = "localhost"
        self.user = "root"
        self.password = ""
        self.bd = "lol"
        self.con = mysql.connector.connect(host=self.host, user=self.user, password=self.password, database=self.bd)
        self.cursor = self.con.cursor()
        self.Rlist = []

    def Question(self, sql, Sresult):
        if len(self.Rlist) > 0:
            Sresult.delete(0, len(self.Rlist))
        self.Rlist.clear()

        Ssql = "SELECT Name FROM champ WHERE name LIKE %s"
        sql = '%' + sql + '%'
        search = (sql,)
        self.cursor.execute(Ssql, search)
        result = self.cursor.fetchall()

        for x in result:
            self.Rlist.append(x)

        print(self.Rlist)
        self.ChangeResult(self.Rlist, Sresult)
    
    def ChangeResult(self, Rlist, Sresult):
        for x in range(len(Rlist)):
            Sresult.insert(x, Rlist[x])

    def SelectChampL(self, ChampName):
        Lsql = "SELECT Role FROM champ WHERE Name = %s"
        self.cursor.execute(Lsql, ChampName)
        Lresult = self.cursor.fetchall()
        return Lresult

    def SelectChampR(self, ChampName):
        Rsql = "SELECT Rase FROM champ WHERE Name = %s"
        self.cursor.execute(Rsql, ChampName)
        Rresult = self.cursor.fetchall()
        return Rresult

    def ChampLore(self, ChampName):
        s = slice(2, -3)
        ChampName = str(ChampName)

        response = requests.get("http://ddragon.leagueoflegends.com/cdn/11.20.1/data/en_US/champion/"+ ChampName[s] +".json")
        champ = response.json()

        return champ['data'][ChampName[s]]['lore']
    
    def ChampImage(self, ChampName):
        s = slice(2, -3)
        ChampName = str(ChampName)

        response = requests.get("http://ddragon.leagueoflegends.com/cdn/img/champion/loading/" + ChampName[s] + "_0.jpg")
        champ = response.json()
        
        photo = PhotoImage(file=champ)

        return photo

    def NewWindow(self, Sresult):
        ChampName = Sresult.get(Sresult.curselection())

        new_window = Tk()

        new_window.geometry("600x600")

        Image = Label(new_window,
                    image=self.ChampImage(ChampName))
        Image.pack()

        Name = Label(new_window,
                    text=ChampName)
        Name.pack()

        Lane = Label(new_window,
                    text=self.SelectChampL(ChampName))
        Lane.pack()

        Rase = Label(new_window,
                    text=self.SelectChampR(ChampName))
        Rase.pack()

        Lore = Label(new_window,
                    text=self.ChampLore(ChampName),
                    padx=10,
                    pady=10,
                    wraplength=550,
                    justify="center")
        Lore.pack()
