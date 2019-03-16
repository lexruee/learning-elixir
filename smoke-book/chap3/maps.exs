#!/usr/bin/env elixir

user_signup = %{email: "john.doe@gmailcom", password: "12345678"}
user_signup_with_arrow_syntax = %{:email=> "john.doe@gmailcom", :password => "12345678"}
sales = %{"2017/01" => 2000, "2017/02" => 2500}

nested_maps = %{
  name: "John Doe",
  age: 20,
  programming_languages: ["Ruby", "Elixir","JavaScript", "Python"],
  email: "john.doe@gmailcom", 
  password: "12345678",
  location: %{city: "São Paulo", country: "Brazil", state: "SP"}
}
