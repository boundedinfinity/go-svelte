package main

import (
	"fmt"

	"github.com/gofiber/fiber/v2"
)

type MyModel struct {
	Message string
}

func main() {
	app := fiber.New()
	app.Get("/", func(c *fiber.Ctx) error {
		return c.JSON(MyModel{
			Message: "It worked!",
		})
	})

	app.Listen(":3000")

	fmt.Println("Finished.")
}
