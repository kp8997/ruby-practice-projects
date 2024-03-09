const fs = require('fs').promises;
const fetch = require('/Users/khangphan/.nvm/versions/node/v16.19.0/lib/node_modules/node-fetch');

(async function() {
  let maxPage = 5;
  const page = 1;
  const searchVal = 0;
  const maxSearchVal = 1000000

  let fullData = ""
  for (let y = searchVal; y <= maxSearchVal; y++) {
    for (let index = page; index <= maxPage; index++) {
      let url = `https://developers.onemap.sg/commonapi/search?searchVal=${y}&returnGeom=Y&getAddrDetails=Y&pageNum=${index}`
      // const data = await (await fetch("https://developers.onemap.sg/commonapi/search?searchVal=1&returnGeom=Y&getAddrDetails=Y&pageNum=1")).json()
      try {
        const data = await (await fetch(url)).json();
        maxPage = data.totalNumPages;
        fullData += data.results.reduce((a, r) => a += `${r.POSTAL}\r\n`, "")
        // fullData.push(data.results.map(result => {
        //   return {
        //     address: result.ADDRESS,
        //     postal: result.POSTAL
        //   }}));
      } catch (error) {
        console.error(error);
      }
    }
  }

  await fs.writeFile("postal_codes.csv", fullData);
})();
