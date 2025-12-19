*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String
Library    RequestsLibrary


*** Variables ***
${BASE_URL}    https://api-blacklist.qacoders.dev.br/api
${EMAIL}    blacklist@qacoders.com
${PASSWORD}    1234@Test
${USER_ID}    690928bcec110178464ac3a5
${USER_FULLNAME}  Libbie Herman
${USER_MAIL}      Jaycee.Rice924@hotmail.com
${UPDATED_USER_EMAIL}    usuario.editado132@qacoders.com
${ACCESS_PROFILE}    ADMIN
${USER_CPF}       13120764592
${NEW_PASSWORD}   5678@Test
${CONFIRM_PASSWORD}  5678@Test