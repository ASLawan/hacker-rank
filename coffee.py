#!/usr/bin/python3
"""
    Module to simulate a coffee machine

"""

menu = {
        "espresso": {
            "ingredients": { "Water": 50, "Coffee": 18 },
            "cost": 1.5,
            },
        "latte": {
            "ingredients": { "Water": 200,"Milk": 150,"Coffee": 24, },
            "cost": 2.5,
            },
        "cappuccino": {
            "ingredients": { "Water": 250,"Milk": 100,"Coffee": 24, },
            "cost": 3.0,
            },
        }

resources = {
        "Water": 300,
        "Milk": 200,
        "Coffee": 100,
        "Money": 0,
        }
COINS = {
        "quarters": 0.25,
        "dimes": 0.10,
        "nickles": 0.05,
        "pennies": 0.01,

        }
def process_coins(*coins):
    coinns = {}
    lst = []
    for coin in coins:
        for item in coin.split():
            if isinstance(item, str) and item.endswith(','):
                lst.append(item[:-1])
            else:
                lst.append(item)
    for i in range(len(lst)):
        if isinstance(lst[i], str):
            print(lst[i])
    # print("Here is your coins dictionary: ")
    # for k, v in coinns.items():
    #    print(f"{k}: {v}")



def check_resources(option):
    check = True
    for coffee, details in menu.items():
        if coffee == option:
            for ingredient, amount in details["ingredients"].items():
                if (resources[ingredient] - amount) < 0:
                    print(f"Sorry there is not enough {ingredient}")
                    check = False
    return check
        

def report():
    for k, v in resources.items():
        if k in ['Water', 'Milk']:
            print(f"{k}: {v}ml")
        if k == 'Coffee':
            print(f"{k}: {v}g")
        if k == 'Money':
            print(f"{k}: ${v}")

def make_coffee():
    prompt = "What would you like? (espresso/latte/cappucino): "
    COFFEE = ['espresso', 'latte', 'cappuccino']
    while (True):
        answer = input(prompt)
        if answer == "off":
            break
        if answer == "report":
            report()
        if answer in COFFEE:
            resource_check = check_resources(answer)
            if resource_check:
                coins = input("Enter coins (quarters/dimes/nickles/pennies): ")
                process_coins(coins)
            


make_coffee()
