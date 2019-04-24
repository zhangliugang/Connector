require "base64"
require "jwt"
 
ISSUER_ID = "69a6de81-7215-47e3-e053-5b8c7c11a4d1"
KEY_ID = "XXUMAMY54W"
 
private_key = OpenSSL::PKey.read(File.read('./AuthKey_XXUMAMY54W.p8'))
 
 
token = JWT.encode(
   {
 
    iss: ISSUER_ID,
    exp: Time.now.to_i + 20 * 60,
    aud: "appstoreconnect-v1"
   },
   private_key,
   "ES256",
   header_fields={
     kid: KEY_ID }
 )
 
# puts token$ curl  https://api.appstoreconnect.apple.com/v1/users --Header "Authorization: Bearer lOOOOOOOOOOOONG_GENERATED_TOKEN"