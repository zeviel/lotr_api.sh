#!/bin/bash

api="https://the-one-api.dev/v2"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function set_api_key() {
    # 1 - api_key: (string): <api_key>
    api_key=$1
}

function get_all_movies() {
    curl --request GET \
        --url "$api/movie" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function get_movie_by_id() {
    # 1 - movie_id: (string): <movie_id>
    curl --request GET \
        --url "$api/movie/$1" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function get_all_characters() {
    curl --request GET \
        --url "$api/character" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function get_character_by_id() {
    # 1 - character_id: (string): <character_id>
    curl --request GET \
        --url "$api/character/$1" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function get_all_quotes() {
    curl --request GET \
        --url "$api/quote" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function get_quote_by_id() {
    # 1 - quote_id: (string): <quote_id>
    curl --request GET \
        --url "$api/quote/$1" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function get_all_books() {
    curl --request GET \
        --url "$api/book" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function get_book_by_id() {
    # 1 - book_id: (string): <book_id>
    curl --request GET \
        --url "$api/book/$1" \
        --user-agent "$user_agent" \
        --header "Authorization: Bearer $api_key" \
        --header "content-type: application/json"
}
