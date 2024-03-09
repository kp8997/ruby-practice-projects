const fs = require('fs').promises;

(async function() {
  let fullData = ""
  try {
    let data = await JSON.parse(await fs.readFile("buildings.json", 'utf-8'));
    console.log(data.length);
    fullData = (data.reduce((a, r) => a += `${r.POSTAL},${r.ADDRESS} \r\n`, ""))
    // data = data.map(x => x.POSTAL)
    // fullData.push(data.map(r => {
    //   return {
    //     address: r.ADDRESS,
    //     postal: r.POSTAL,
    //   }
    // }))
  } catch (error) {
    console.error(error);
  }

  await fs.writeFile("sg_postal_codes_address_from_building.csv", fullData);
})();
