package main

import (
	"fmt"
	"os/user"
)

func main() {
	user, err := user.Current()
	if err != nil {
		fmt.Errorf("Error Lookingup User, %v", err)
	}

	fmt.Println(user.Name)
	fmt.Println(user.Uid)
	fmt.Println(user.Username)
}
