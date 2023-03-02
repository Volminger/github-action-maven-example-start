echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo $1
echo $2
curl -v \
  --user thisiscpta@gmail.com:ATATT3xFfGF03SLJrSLI68PdQzgI4Nbyjh2GlK34z2b7-o5Oaa2OO3BZ295_AelpK_q73XpKAyDYd8h55V0J4ORxfXNRQuZLZqv4AYa_MizXAOJCLRuU5LD0_y0eGcEwmZoPVUWx5dp76RbqjRqwkHvaPx9I8L35R9856clBMJXhQjrjr6L5bJk=032824BD \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --request PUT \
  --data "{\"fields\":{\"customfield_10074\": \"https://github.com/thisiscpta/github-action-maven-example-start/releases/tag/v1.0-alpha \", \"customfield_10077\": \"$2 \"}}" \
  --url https://thisiscpta.atlassian.net/rest/api/2/issue/$1
