BEGIN {
	x["0"] = "0"
	x["1"] = "1"
	x["2"] = "2"
	x["3"] = "3"
	x["4"] = "4"
	x["5"] = "5"
	x["6"] = "6"
	x["7"] = "7"
	x["8"] = "8"
	x["9"] = "9"
	x["A"] = "a"
	x["B"] = "b"
	x["C"] = "c"
	x["D"] = "d"
	x["E"] = "e"
	x["F"] = "f"

}

{
	s = ""
	for (i = 1; i <= 6; ++i) {
		t = substr($0, i, 1)
		s = s x[t]
	}
	s = s substr($0, 7)
	print s
	next
}
