// Packages
import React from 'react';
import { shallow } from 'enzyme';

// Components
import Button from './Button';

describe('<Button />', () => {
  let component: any;

  const props = {
    children: 'Button',
    onClick: jest.fn(),
  };

  beforeEach(() => {
    component = shallow(<Button {...props} />);
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  it('renders without crashing', () => {
    expect(component).toMatchSnapshot();
  });

  it('sets onClick correctly', () => {
    component.simulate('click');

    expect(props.onClick).toHaveBeenCalledTimes(1);
  });
});
