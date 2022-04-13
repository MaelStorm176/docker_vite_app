#!/bin/sh
# shellcheck disable=SC2164
cd /home/node/my-vue-project
npm install -D tailwindcss postcss autoprefixer
npx tailwind init -p tailwind.config.js
touch src/index.css
echo '@tailwind base;@tailwind components;@tailwind utilities;' >> src/index.css
cp ../config/tailwind.config.js ./tailwind.config.js
cp ../config/vite.config.js ./vite.config.js
