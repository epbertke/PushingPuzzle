extends Node3D

@export var successNoise : AudioStreamPlayer3D

var blue = false
var purple = false 
var yellow = false 

var numCubes = 0

func collectCube():
	numCubes = numCubes + 1
	if numCubes >= 3:
		if blue == true:
			if purple == true:
				if yellow == true:
					successNoise.play()

func removeCube():
	numCubes = numCubes - 1
