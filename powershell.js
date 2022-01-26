const fs = require("fs")
const powershell = "./json/powershell.json"
const powershellScheme = "./json/powershellScheme.json"

function readAsync(file) {
  const data = fs.readFileSync(file).toString()
  const json = JSON.parse(data)
  const steps =  Object.keys(json.steps)

  return steps.forEach(i => console.log(json.steps[i]))
}

readAsync(powershell)
