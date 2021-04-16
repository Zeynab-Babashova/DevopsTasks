$XMLfilepath = ‘C:\Users\zeynab.babashova\Desktop\Tasks\Task.xml’
$XMLDoc = [XML](Get-Content $XMLfilepath) 
for ($i=0; $i -lt 10; $i++) {
​​​​​​​​$XMLDoc.SelectNodes("//th") | % {
$_."#text"=$_."#text".replace("Artist","Artist-$i")
}
$XMLDoc.SelectNodes("//th") | % {
$_."#text"=$_."#text".replace("Title","Title-$i")
}
$XMLDoc.Save("C:\Users\zeynab.babashova\Desktop\Tasks\Task-$i.xml")
}​​​​​​​​​​​