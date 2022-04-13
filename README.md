# Installation

### Makefile
Initialiser le projet
````makefile
make init
````

Démarrer le serveur / containers
````makefile
make start
````

Stopper le serveur / containers
````makefile
make stop
````

Nettoyer le projet
````makefile
make down
````
#Configuration

### Commandes
```
npm init vite-app my-vue-project --quiet --template vue
cd my-vue-project
npm install -D tailwindcss postcss autoprefixer
npx tailwind init -p
```

### tailwind.config.js
Configurer le fichier tailwind.config.js pour le projet. On ajoute les paths.
```js
module.exports = {
  content: [
      "./index.html",
      "./src/**/*.{vue,js,ts,jsx,tsx}"
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

### src/index.css
```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

### src/main.js
Importer le CSS
```js
import './index.css'
```

### vite.config.js
```js
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [vue()],
    server: {
        watch: {
            usePolling: true
        },
        host: '0.0.0.0',
        port: 8000
    }
})
```