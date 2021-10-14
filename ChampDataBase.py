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

    def Question(self, sql, Sresult):
        Rlist = []

        Ssql = "SELECT name FROM champ WHERE name LIKE %s"
        sql = sql + '%'
        search = (sql,)
        self.cursor.execute(Ssql, search)
        result = self.cursor.fetchall()

        for x in result:
            Rlist.append(x)
        print(Rlist)
        self.ChangeResult(Rlist, Sresult)
    
    def ChangeResult(self, Rlist, Sresult):
        Sresult.config(text=Rlist)