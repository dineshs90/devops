package main

import (
	"github.com/gin-gonic/gin"
)

func main() {

	router := gin.Default()

	router.GET("/health", func(c *gin.Context) {
		c.JSON(200, gin.H{

			"Status": "Application is up and running fine ..."})

	})

	router.Run(":8085")
}
