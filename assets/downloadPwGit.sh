apk add git
mkdir /pw
cd /pw
git clone https://github.com/microsoft/playwright.git
cd /pw/playwright
git checkout v1.49.0
npm i
cd /pw/playwright/packages/
npm run build || true
npm run build-sw || true
