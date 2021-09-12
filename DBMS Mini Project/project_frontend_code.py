import mysql.connector

db = mysql.connector.connect(host = 'localhost', user = 'usergoeshere', passwd = 'passwordgoeshere', database = 'miniproject')

mycursor = db.cursor()





def show_table_options_view():
    print("1. customerinfo")
    print("2. countryinfo")
    print("3. warehouseinfo")
    print("4. driverinfo")
    print("5. vehicleinfo")
    print("6. productinfo")
    print("7. supplier")
    print("8. manufacturerinfo")
    print("9. ordersinfo")
    print("10. logsinfo")
    print("11. Show table list")



def show_table_options_view_condition():
    print("1. customerinfo")
    print("2. countryinfo")
    print("3. warehouseinfo")
    print("4. driverinfo")
    print("5. vehicleinfo")
    print("6. productinfo")
    print("7. supplier")
    print("8. manufacturerinfo")
    print("9. ordersinfo")
    print("10. logsinfo")




def show_table_options_insert():
    print("1. customerinfo")
    print("2. countryinfo")
    print("3. warehouseinfo")
    print("4. driverinfo")
    print("5. vehicleinfo")
    print("6. productinfo")
    print("7. supplier")





#for adding values in customerinfo table
def add_in_customerinfo():
    print("\nThe table description is: ")
    mycursor.execute("desc customerinfo")
    for x in mycursor:
        print(x)


    print("\n\nThe table contents are: ")
    mycursor.execute("select * from customerinfo")
    print("\n")
    for x in mycursor:
        print(x)


    cust_id = input("\nEnter customer id(please match id with table): ")
    cust_name = input("\nEnter customer name(please match name with table): ")

    sql = "insert into customerinfo values(%s, %s)"
    data = (cust_id, cust_name)
    mycursor.execute(sql, data)
    db.commit()

    print("\nValues entered!!")
    print("\n")
    mycursor.execute("select * from customerinfo")
    for x in mycursor:
        print(x)





#for adding values in countryinfo table
def add_in_countryinfo():
    print("\nThe table description is: ")
    mycursor.execute("desc countryinfo")
    for x in mycursor:
        print(x)

    print("\n\nThe table contents are: ")
    mycursor.execute("select * from countryinfo")
    print("\n")
    for x in mycursor:
        print(x)

    country_id = input("\nEnter country id(please match id with table): ")
    country_name = input("\nEnter country name(please match name with table): ")
    city_name = input("\nEnter city name: ")

    sql = "insert into countryinfo values(%s, %s, %s)"
    data = (country_id, country_name, city_name)
    mycursor.execute(sql, data)
    db.commit()

    print("\nValues entered!!")
    mycursor.execute("select * from countryinfo")
    for x in mycursor:
        print(x)






#for adding in warehouseinfo table
def add_in_warehouseinfo():
    print("\nThe table description is: ")
    mycursor.execute("desc warehouseinfo")
    for x in mycursor:
        print(x)

    print("\n\nThe table contents are: ")
    mycursor.execute("select * from warehouseinfo")
    print("\n")
    for x in mycursor:
        print(x)


    #to help insert values
    print("\n\nThe products are: ")
    mycursor.execute("select * from productinfo")
    print("\n")
    for x in mycursor:
        print(x)


    print("\n\nThe suppliers are: ")
    mycursor.execute("select * from supplier")
    print("\n")
    for x in mycursor:
        print(x)



    ware_id = input("\nEnter the warehouse id(please match with table): ")
    product_id = input("\nEnter the product id(please match with table): ")
    w_city = input("\nEnter the city(please match with table): ")
    sup_id = input("\nEnter the supplier id(please match with table): ")

    sql = "insert into warehouseinfo values(%s, %s, %s, %s)"
    data = (ware_id, product_id, w_city, sup_id)
    mycursor.execute(sql, data)
    db.commit()

    print("\nValues entered!!")
    mycursor.execute("select * from warehouseinfo")
    print("\n")
    for x in mycursor:
        print(x)





#for adding values in driverinfo table
def add_in_driverinfo():
    print("\nThe table description is: ")
    mycursor.execute("desc driverinfo")
    for x in mycursor:
        print(x)

    print("\n\nThe table contents are: ")
    mycursor.execute("select * from driverinfo")
    print("\n")
    for x in mycursor:
        print(x)

    drive_id = input("\nEnter driver id(please match id with table): ")
    drive_name = input("\nEnter driver name(please match name with table): ")

    sql = "insert into driverinfo values(%s, %s)"
    data = (drive_id, drive_name)
    mycursor.execute(sql, data)
    db.commit()

    print("\nValues entered!!")
    print("\n")
    mycursor.execute("select * from driverinfo")
    for x in mycursor:
        print(x)






#for adding values in vehicleinfo table
def add_in_vehicleinfo():
    print("\nThe table description is: ")
    mycursor.execute("desc vehicleinfo")
    for x in mycursor:
        print(x)

    print("\n\nThe table contents are: ")
    mycursor.execute("select * from vehicleinfo")
    print("\n")
    for x in mycursor:
        print(x)

    vehi_id = input("\nEnter vehicle id(please match id with table): ")
    vehi_type = input("\nEnter vehicle type(please match type with table): ")
    vehi_name = input("\nEnter vehicle name(please match name with table): ")


    sql = "insert into vehicleinfo values(%s, %s, %s)"
    data = (vehi_id, vehi_type, vehi_name)
    mycursor.execute(sql, data)
    db.commit()

    print("\nValues entered!!")
    print("\n")
    mycursor.execute("select * from vehicleinfo")
    for x in mycursor:
        print(x)






#for adding values in productinfo table
def add_in_productinfo():
    print("\nThe table description is: ")
    mycursor.execute("desc productinfo")
    for x in mycursor:
        print(x)

    print("\n\nThe table contents are: ")
    mycursor.execute("select * from productinfo")
    print("\n")
    for x in mycursor:
        print(x)

    prod_id = input("\nEnter product id(please match id with table): ")
    prod_name = input("\nEnter product name(please match name with table): ")
    prod_cost = input("\nEnter product cost: ")
    prod_desc = input("\nEnter product description(please match with table): ")
    prod_quant = input("\nEnter product quantity: ")

    sql = "insert into productinfo values(%s, %s, %s, %s, %s)"
    data = (prod_id, prod_name, prod_cost, prod_desc, prod_quant)
    mycursor.execute(sql, data)
    db.commit()

    print("\nValues entered!!")
    print("\n")
    mycursor.execute("select * from productinfo")
    for x in mycursor:
        print(x)





#for adding values in supplier table
def add_in_supplier():
    print("\nThe table description is: ")
    mycursor.execute("desc supplier")
    for x in mycursor:
        print(x)

    print("\n\nThe table contents are: ")
    mycursor.execute("select * from supplier")
    print("\n")
    for x in mycursor:
        print(x)

    sup_id = input("\nEnter supplier id(please match id with table): ")
    sup_name = input("\nEnter supplier name(please match with table): ")
    sup_city= input("\nEnter supplier city(please match with table): ")

    sql = "insert into supplier values(%s, %s, %s)"
    data = (sup_id, sup_name, sup_city)
    mycursor.execute(sql, data)
    db.commit()

    print("\nValues entered!!")
    print("\n")
    mycursor.execute("select * from supplier")
    for x in mycursor:
        print(x)






#for viewing customerinfo with condition
def view_customerinfo_condition():
    data = input("Enter customer id to be displayed (701+): ")
    sql = "select * from customerinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)



#for viewing countryinfo with condition
def view_countryinfo_condition():
    data = input("Enter country id to be displayed (301+): ")
    sql = "select * from countryinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)




#for viewing warehouseinfo with condition
def view_warehouseinfo_condition():
    data = input("Enter warehouse id to be displayed (901+): ")
    sql = "select * from warehouseinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)




#for viewing driverinfo with condition
def view_driverinfo_condition():
    data = input("Enter driver id to be displayed (101+): ")
    sql = "select * from driverinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)




#for viewing vehicleinfo with condition
def view_vehicleinfo_condition():
    data = input("Enter vehicle id to be displayed (201+): ")
    sql = "select * from vehicleinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)




#for viewing productinfo with condition
def view_productinfo_condition():
    data = input("Enter product id to be displayed (401+): ")
    sql = "select * from productinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)






#for viewing supplier with condition
def view_supplier_condition():
    data = input("Enter supplier id to be displayed (501+): ")
    sql = "select * from supplier where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)





#for viewing manufacturerinfo with condition
def view_manufacturerinfo_condition():
    data = input("Enter manufacturer id to be displayed (601+): ")
    sql = "select * from manufacturerinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)




#for viewing ordersinfo with condition
def view_ordersinfo_condition():
    data = input("Enter order id to be displayed (801+): ")
    sql = "select * from ordersinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)





#for viewing logsinfo with condition
def view_logsinfo_condition():
    data = input("Enter LOG id to be displayed (1+): ")
    sql = "select * from logsinfo where id = "
    sql2 = " ".join([sql, data])
    mycursor.execute(sql2)
    # print(mycursor.fetchall())
    for y in mycursor:
        print(y)














#main
while(1):
    print("\n\n\nXXXXXXXX MINIPROJECT XXXXXXXX")
    print("\n1. Insert values")
    print("2. View table")
    print("3. View table with condition")
    print("4. Delete")
    print("7. Exit")
    choice = input("Choose one option: ")

    if choice in ('1', '2', '3', '4', '7'):

        if choice == '1':
            print("\n\nINSERTION")
            print("\nSelect the table to add value in: ")
            show_table_options_insert()

            ch1 = input("\nChoose one table: ")

            if ch1 in ('1', '2', '3', '4', '5', '6', '7'):
                if ch1 == '1':
                    add_in_customerinfo()
                    #break


                elif ch1 == '2':
                    add_in_countryinfo()
                    #break


                elif ch1 == '3':
                    add_in_warehouseinfo()
                    #break


                elif ch1 == '4':
                    add_in_driverinfo()
                    #break


                elif ch1 == '5':
                    add_in_vehicleinfo()
                    #break


                elif ch1 == '6':
                    add_in_productinfo()
                    #break


                elif ch1 == '7':
                    add_in_supplier()
                    #break


            else:
                print("Invalid choice!!! \nPlease choose tables from(1-7)")



        #main choice
        elif choice == '2':
            print("\n\nVIEWING")
            print("\nSelect the table to view: ")
            show_table_options_view()

            ch2 = input("\nChoose option: ")

            if ch2 in ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'):

                if ch2 == '1':
                    sql = "select * from customerinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)


                elif ch2 == '2':
                    sql = "select * from countryinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)


                elif ch2 == '3':
                    sql = "select * from warehouseinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)



                elif ch2 == '4':
                    sql = "select * from driverinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)



                elif ch2 == '5':
                    sql = "select * from vehicleinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)



                elif ch2 == '6':
                    sql = "select * from productinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)


                elif ch2 == '7':
                    sql = "select * from supplier"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)



                elif ch2 == '8':
                    sql = "select * from manufacturerinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)



                elif ch2 == '9':
                    sql = "select * from ordersinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)



                elif ch2 == '10':
                    sql = "select * from logsinfo"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)



                elif ch2 == '11':
                    sql = "show tables"
                    mycursor.execute(sql)
                    for x in mycursor:
                        print(x)


            else:
                print("Invalid Input!! \nPlease choose a table from (1-10)")




        #main choice
        elif choice == '3':
            print("\n\nVIEWING CONDITION")
            print("\nSelect the table to view: ")
            show_table_options_view_condition()

            ch3 = input("Choose option: ")

            if ch3 in ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10'):

                if ch3 == '1':
                    view_customerinfo_condition()


                elif ch3 == '2':
                    view_countryinfo_condition()


                elif ch3 == '3':
                    view_warehouseinfo_condition()



                elif ch3 == '4':
                    view_driverinfo_condition()



                elif ch3 == '5':
                    view_vehicleinfo_condition()



                elif ch3 == '6':
                    view_productinfo_condition()


                elif ch3 == '7':
                    view_supplier_condition()



                elif ch3 == '8':
                    view_manufacturerinfo_condition()



                elif ch3 == '9':
                    view_ordersinfo_condition()



                elif ch3 == '10':
                    view_logsinfo_condition()



            else:
                print("Invalid Input!! \nPlease choose a table from (1-10)")



        #main choice
        elif choice == '4':

            print("\n\nDELETION")
            mycursor.execute("select * from warehouseinfo")
            for x in mycursor:
                print(x)

            print("\nDeleteing values from table warehouseinfo")

            data = input("\nEnter the warehouse id to delete(please match with table): ")
            sql = "delete from warehouseinfo where w_id = "
            sql2 = " ".join([sql, data])

            mycursor.execute(sql2)
            db.commit()

            print("Value deleted!!")
            print(mycursor.rowcount, "record(s) deleted")
            mycursor.execute("select * from warehouseinfo")
            for x in mycursor:
                print(x)




        #main choice
        elif choice == '7':
            exit(0)


    else:
        print("INVALID INPUT!!")

