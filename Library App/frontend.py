from tkinter import *
import backend



def get_selected_row(event):
   try:   
      global selected_tuple
      index = List1.curselection()[0]
      selected_tuple = List1.get(index)
   
      #to display values in respected entry widgets
      e1.delete(0, END)
      e1.insert(END, selected_tuple[1])
   
      e2.delete(0, END)
      e2.insert(END, selected_tuple[2])
   
      e3.delete(0, END)
      e3.insert(END, selected_tuple[3])
   
      e4.delete(0, END)
      e4.insert(END, selected_tuple[4])

   except IndexError:
      pass






def view_command():
   e1.delete(0, END)       #to clear the entry widgets
   e2.delete(0, END)  
   e3.delete(0, END)  
   e4.delete(0, END)

   List1.delete(0, END)
   for rows in backend.view_data():
      List1.insert(END, rows)
#view ends here      




def search_command():
   List1.delete(0, END)
   for rows in backend.search_data(e1_value.get(), e2_value.get(), e3_value.get(), e4_value.get()):
      List1.insert(END, rows)
#search ends here   




def add_command():
   
   if e1_value.get() != "" or e2_value.get() != "" or e3_value.get() != "" or e4_value.get() != "":
      backend.insert_into_db(e1_value.get(), e2_value.get(), e3_value.get(), e4_value.get())
      #view_command()          #to view all the books after new entry
      List1.delete(0, END)
      List1.insert(END, e1_value.get(), e2_value.get(), e3_value.get(), e4_value.get())

      e1.delete(0, END)       #to clear the entry widgets
      e2.delete(0, END)  
      e3.delete(0, END)  
      e4.delete(0, END)    

      print("\nEntry Added!!\n") 

#add ends here 





def delete_command():
   backend.delete_data(selected_tuple[0])
   
   List1.delete(0, END)                   #to show the list after deleting
   for rows in backend.view_data():
      List1.insert(END, rows)
#delete ends here





def update_command():
   backend.update_data(selected_tuple[0], e1_value.get(), e2_value.get(), e3_value.get(), e4_value.get())   
   
   List1.delete(0, END)                   #to show the list after deleting
   for rows in backend.view_data():
      List1.insert(END, rows)
#update ends here




def close_command():
   window.destroy()
   print("\nApplication Closed!!")





#declare main app window
window = Tk()
window.title("Book Application")
window.geometry("480x300")




#title label and entry
l1 = Label(window, text = "Title")
l1.grid(row = 0, column = 0)

e1_value = StringVar()
e1 = Entry(window, textvariable = e1_value, borderwidth = 3)
e1.grid(row = 0, column = 1)



#author label and entry
#l1_space = Label(window, text = '    ')      #to add space between the e1 and l2
#l1_space.grid(row = 0, column=2)
l2 = Label(window, text = "Author")
l2.grid(row = 0, column = 2, padx=10)

e2_value = StringVar()
e2 = Entry(window, textvariable = e2_value, borderwidth = 3)
e2.grid(row = 0, column = 3)




#year label and entry
l3 = Label(window, text = "Year")
l3.grid(row = 1, column = 0, pady = 20)

e3_value = StringVar()
e3 = Entry(window, textvariable = e3_value, borderwidth = 3)
e3.grid(row = 1, column = 1)




#ISBN label and entry
#l3_space = Label(window, text = '    ')      #to add space between the e1 and l2
#l3_space.grid(row = 1, column=2)
l4 = Label(window, text = "ISBN")
l4.grid(row = 1, column = 2, padx = 10)

e4_value = StringVar()
e4 = Entry(window, textvariable = e4_value, borderwidth = 3)
e4.grid(row = 1, column = 3)



#list box and scrollbar 
List1 = Listbox(window, height = 12, width = 37, borderwidth=1)
List1.grid(row = 2, column = 0, rowspan=6, columnspan=2, padx=10)

sb1 = Scrollbar(window, borderwidth=1)
sb1.grid(row=2, column=2, rowspan=6)

List1.configure(yscrollcommand=sb1.set)         #configure the listbox
sb1.configure(command=List1.yview)              #configure the scrollbar


List1.bind('<<ListboxSelect>>', get_selected_row)






#BUTTONS---

#view all button
b1 = Button(window, text="View All", width=13, command=view_command)
b1.grid(row = 2, column=3)


#search button
b2 = Button(window, text = "Search Entry", width=13, command=search_command)
b2.grid(row = 3, column = 3)

#add button
b3 = Button(window, text="Add Entry", width=13, command=add_command)
b3.grid(row = 4, column=3)


#update button
b4 = Button(window, text="Update Selected", width=13, command=update_command)
b4.grid(row = 5, column=3)


#delete button
b5 = Button(window, text="Delete Selected", width=13, command=delete_command)
b5.grid(row = 6, column=3)


#close button
b6 = Button(window, text="Close", width=13, command=close_command)
b6.grid(row = 7, column=3)



window.mainloop()