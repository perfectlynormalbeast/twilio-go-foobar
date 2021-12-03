package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.POST("/foo", bar)
	router.Run("localhost:5000")
}

func bar(c *gin.Context) {
	c.Header("Content-Type","application/xml")
	c.String(http.StatusOK, "<Response><Message>bar</Message></Response>")
}
