This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Testing

[Jest](https://github.com/facebook/jest), [Enzyme](https://github.com/airbnb/enzyme) and [Enzyme to JSON](https://github.com/adriantoine/enzyme-to-json) are used to test this application.

Jest for the test runner, Enzyme as a testing utility for React and Enzyme to JSON to convert Enzyme wrappers for Jest snapshot matcher.

## Linting

### ESLint

ESLint is configured using [@typescript-eslint/parser](https://github.com/typescript-eslint/typescript-eslint/tree/master/packages/parser) and [@typescript-eslint plugin](https://github.com/typescript-eslint/typescript-eslint/tree/master/packages/eslint-plugin) to faciliate the use of ESLint with TypeScript.

The [TypeScript ESLint](https://github.com/typescript-eslint/typescript-eslint) monorepo contains all the tooling which enables ESLint to support TypeScript.

#### Known ESLint issues

Imported Interfaces returning a false positive.
[no-unused-vars](https://github.com/eslint/typescript-eslint-parser/issues/223)

### Sass Lint

[Sass Lint](https://github.com/sasstools/sass-lint) is a linter for both `sass` and `scss` syntax and included in this application.

## Available Scripts

In the project directory, you can run:

### `yarn start`

Runs the app in the development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br>
You will also see any lint errors in the console.

### `yarn test`

Launches the test runner in the interactive watch mode.<br>
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `yarn test-coverage`

Launches the test runner and force the tests to run once, finish the process and return a coverage report.<br>
See the section about [coverage reporting](https://facebook.github.io/create-react-app/docs/running-tests#coverage-reporting) for more information.

### `yarn test-ci`

Launches the test runner and force the tests to run once and finish the process.<br>
See the section about [running tests on CI servers](https://facebook.github.io/create-react-app/docs/running-tests#on-ci-servers) for more information.

### `yarn eslint`

Run ESLint using the configurations present in `.eslingrc.js`.

### `yarn sass-lint`

Run `Sass-lint` on both `sass` and `scss` syntax using the configurations present in `.sass-lint.yml`.

###  `yarn lint`

Run both `yarn eslint` and `yarn lint` sequentially.

### `yarn run build`

Builds the app for production to the `build` folder.<br>
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br>
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `yarn storybook`

Start Storybook using gthe configurations in `./storybook` on a random open port in dev-mode.

### `yarn run eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (Webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Docker

This is a Dockerized React application.

### Development

Run `sh start.dev.sh` to build and run a Docker container from a Docker image. Docker is configured to retain hot reloading and view the application on port 3000.

### Production
Run `start-prod.sh` to build and run a production ready Docker container.

[comment]: <Docker configuration information and getting started guide>

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).
