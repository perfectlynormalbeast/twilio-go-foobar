package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.GET("/", foo)
	router.Run()
}

func foo(c *gin.Context) {
	c.Header("Content-Type","application/xml")
	c.String(http.StatusOK, "<Response><Message>bar</Message></Response>")
}
