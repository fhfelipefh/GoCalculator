package main

import (
	"fmt"
	"log"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
)

var list []string

func main() {
	fmt.Println("Starting calculator service...")
	router := mux.NewRouter()
	router.HandleFunc("/calc/sum/{a}/{b}", getSum).Methods("GET")
	router.HandleFunc("/calc/sub/{a}/{b}", getSub).Methods("GET")
	router.HandleFunc("/calc/mul/{a}/{b}", getMul).Methods("GET")
	router.HandleFunc("/calc/div/{a}/{b}", getDiv).Methods("GET")
	router.HandleFunc("/calc/history", getHistory).Methods("GET")
	log.Fatal(http.ListenAndServe(":8081", router))
}

func getHistory(writer http.ResponseWriter, request *http.Request) {
	fmt.Fprintf(writer, "Operations: %v", list)
}

func getDiv(writer http.ResponseWriter, request *http.Request) {
	vars := mux.Vars(request)
	a, err := strconv.Atoi(vars["a"])
	if err != nil {
		fmt.Fprintf(writer, "Invalid input: %s", err)
		return
	}
	b, err := strconv.Atoi(vars["b"])
	if err != nil {
		fmt.Fprintf(writer, "Invalid input: %s", err)
		return
	}
	if b == 0 {
		fmt.Fprintf(writer, "Division by zero")
		return
	}
	divResult := a / b
	fmt.Fprintf(writer, "Division is %d / %d = %d", a, b, divResult)
	list = append(list, fmt.Sprintf("%d / %d = %d", a, b, divResult))
}

func getMul(writer http.ResponseWriter, request *http.Request) {
	vars := mux.Vars(request)
	a, err := strconv.Atoi(vars["a"])
	if err != nil {
		log.Fatal(err)
	}
	b, err := strconv.Atoi(vars["b"])
	if err != nil {
		log.Fatal(err)
	}
	fmt.Fprintf(writer, "Multiplication is", a*b)
	list = append(list, fmt.Sprintf("%d * %d = %d", a, b, a*b))
}

func getSub(writer http.ResponseWriter, request *http.Request) {
	vars := mux.Vars(request)
	a, _ := strconv.Atoi(vars["a"])
	b, _ := strconv.Atoi(vars["b"])
	fmt.Fprintf(writer, "Subtraction of %s and %s is %s", a, b, (a - b))
	list = append(list, fmt.Sprintf("%d - %d = %d", a, b, a-b))
}

func getSum(writer http.ResponseWriter, request *http.Request) {
	vars := mux.Vars(request)
	a, _ := strconv.Atoi(vars["a"])
	b, _ := strconv.Atoi(vars["b"])
	fmt.Fprintf(writer, "Sum of %s and %s is %s", string(a), string(b), (a + b))
	list = append(list, fmt.Sprintf("%d + %d = %d", a, b, a+b))
}
