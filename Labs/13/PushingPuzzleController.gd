extends Node3D

@export var successNoise : AudioStreamPlayer3D


var numCubes = 0

func collectCube():
	numCubes = numCubes + 1
	if numCubes >= 3:
		successNoise.play()

func removeCube():
	numCubes = numCubes - 1
