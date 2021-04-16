$XMLfilepath = ‘C:\Users\zeynab.babashova\Desktop\Tasks\Task.xml’
$XMLDoc = [XML](Get-Content $XMLfilepath)
$valueth=$XMLDoc.SelectNodes("//th")
for ($i=0; $i -lt 10; $i++) {​​​​​​​​
$valueth[0].Innertext="Title-$i"
$valueth[1].Innertext="Artist-$i"
$XMLDoc.Save("C:\Users\zeynab.babashova\Desktop\Tasks\Task-$i.xml")
}​​​​​​​​​​​​​
