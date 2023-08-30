const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({ args: ['--no-sandbox'] });
  const page = await browser.newPage();
  const url = process.argv[2];
  await page.goto(url, { waitUntil: 'networkidle0' });

  const pdfOptions = {
    path: 'boleto.pdf',
    format: 'A4',
    printBackground: true,
  };

  await page.pdf(pdfOptions);

  await browser.close();
  console.log('PDF gerado com sucesso.');
})();
