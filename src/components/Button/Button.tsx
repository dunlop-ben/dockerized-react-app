// Packages
import React, { FunctionComponent, MouseEvent, ReactChild } from 'react';

import styles from './Button.module.scss';

export const testFunction = (title: string, barcode: number) => ({ title, barcode });

type Props = {
  children: ReactChild,
  onClick: (e: MouseEvent<HTMLElement>) => void,
};

const Button: FunctionComponent<Props> = ({ children, onClick: handleClick }) => (
  <button className={styles.button} onClick={handleClick} type="button">
    {children}
  </button>
);

export default Button;
