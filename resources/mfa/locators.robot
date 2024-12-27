*** Variables ***
${url}    https://seleniumbase.io/realworld/login
${username}    id:username
${password}    id:password
${mfa}    id:totpcode
${btn_sign_in}    id:log-in
${welcome_message}    xpath://h1[contains(text(), "Welcome")]