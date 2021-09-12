import sqlite3

def connect_to_db():
   conn = sqlite3.connect("books.db")
   cur = conn.cursor()
   cur.execute("CREATE TABLE IF NOT EXISTS book(id INTEGER PRIMARY KEY, title text, author text, year integer, isbn integer)")
   conn.commit()
   conn.close()
   



def insert_into_db(title, author, year, isbn):
   
   conn = sqlite3.connect("books.db")
   cur = conn.cursor()
   cur.execute("INSERT INTO book values(NULL, ?, ?, ?, ?)", (title, author, year, isbn))
   conn.commit()
   conn.close()





def view_data():
   conn = sqlite3.connect("books.db")
   cur = conn.cursor()
   cur.execute("SELECT * FROM book")
   rows = cur.fetchall()
   conn.close()
   return rows



def search_data(title = "", author="", year="", isbn=""):
   conn = sqlite3.connect("books.db")
   cur = conn.cursor()
   cur.execute("SELECT * FROM book WHERE title = ? OR author = ? OR year = ? OR isbn = ?", (title, author, year, isbn))
   rows = cur.fetchall()
   conn.close()
   return rows



def delete_data(id):
   conn = sqlite3.connect("books.db")
   cur = conn.cursor()
   cur.execute("DELETE FROM book WHERE id=?", (id,))
   conn.commit()
   conn.close()




def update_data(id, title, author, year, isbn):
   conn = sqlite3.connect("books.db")
   cur = conn.cursor()
   cur.execute("UPDATE book SET title = ?, author = ?, year = ?, isbn = ?  WHERE id = ?", (title, author, year, isbn, id))
   conn.commit()
   conn.close()   




connect_to_db()         #connect_to_db called whenever the bookapp.py is executed----that means it connects to db and 
                        #creates table if it doesnt exist(creates only once)







                        
