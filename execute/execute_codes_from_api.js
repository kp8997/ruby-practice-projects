const fs = require('fs').promises;
const fetch = require('/Users/khangphan/.nvm/versions/node/v16.19.0/lib/node_modules/node-fetch');

(async function() {
  const maxPage = 63
  const page = 1
  const url = `https://developers.onemap.sg/commonapi/search?searchVal=1&returnGeom=Y&getAddrDetails=Y&pageNum=${page}`

  let fullData = []

  for (let index = page; index <= maxPage; index++) {
    // const data = await (await fetch("https://developers.onemap.sg/commonapi/search?searchVal=1&returnGeom=Y&getAddrDetails=Y&pageNum=1")).json()
    try {
      const data = await (await fetch(url)).json();
      fullData.push(data.results.map(result => {
        return {
          address: result.ADDRESS,
          postal: result.POSTAL
        }}));
    } catch (error) {
      console.error(error);
    }
  }

  await fs.writeFile("postal_codes.json",JSON.stringify(fullData));
})();
