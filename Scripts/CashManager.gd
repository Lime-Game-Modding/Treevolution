extends Node

export var cash : int = 0
export var suffix : String = " $"

var cashString : String = str(cash) + suffix

func _ready():
	setCash(cash)

func setCash(amount : int): # Sets the cash to a specific value
	cash = amount
	cashString = str(cash) + suffix
	find_parent("Root").find_node("CashDisplay").text = cashString

func changeCash(amount: int): # Changes the cash by a specific value
	cash += amount
	setCash(cash)
