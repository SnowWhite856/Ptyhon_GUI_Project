from tkinter import *
import mysql.connector

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

        Ssql = "SELECT name FROM champ WHERE name LIKE %s"
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

    def SelectChamp(self, Sresult):
        ChampName = Sresult.get(Sresult.curselection())

        new_window = Tk()

        new_window.geometry("600x600")

        Name = Label(new_window,
                    text=ChampName)
        Name.pack()
