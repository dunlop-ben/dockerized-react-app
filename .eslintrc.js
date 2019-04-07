module.exports = {
  env: {
    browser: true,
    es6: true,
    jest: true // Whitelist Jest environment variable
  },
  extends: 'airbnb', // Airbnb ESLint rules
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parser: '@typescript-eslint/parser', // Enable ESLint to support TypeScript
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 2018,
    sourceType: 'module',
  },
  plugins: [
    '@typescript-eslint', // Enable ESLint to support TypeScript
    'react', // React specific linting rules for ESLint
  ],
  settings: {
    'import/resolver': {
      'node': {
        'paths': ['src'],
        'extensions': ['.js', '.jsx', '.ts', '.tsx'], // Specified extensions that will be parsed as modules
      }
    },
  },
  overrides: [{
    'files': ['**/*.ts', '**/*.tsx'], // Custom TypeScript overrrides
    'rules': {
      'react/prop-types': 'off', // PropTypes not required - TypeScript does the job for us
      'react/jsx-filename-extension': [1, { 'extensions': ['.tsx'] }], // Specified extensions that allow JSX
      'no-unused-vars': 'off', // TODO: Find a cleaner solution - refer to README for more information
    },
  },
  {
    'files': ['src/setupTests.ts', '**/*.test.tsx'], // Some other custom overrides to silence ESLint errors
    'rules': {
      "import/no-extraneous-dependencies": ["error", {"devDependencies": true}],
    },
  }],
};
