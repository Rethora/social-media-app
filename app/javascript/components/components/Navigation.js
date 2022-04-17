import React, { Component } from 'react'
import { NavLink } from 'react-router-dom'
import { Collapse, Nav, Navbar, NavbarBrand, NavbarToggler, NavItem } from 'reactstrap'

class Navigation extends Component {
  constructor(props) {
    super(props)
    this.toggle = this.toggle.bind(this)
    this.state = {
      isOpen: false
    }
  }
  toggle() {
    this.setState({
      isOpen: !this.state.isOpen
    })
  }

  render() {
    const {
      logged_in,
      new_user_route,
      sign_in_route,
      sign_out_route
    } = this.props
    return (
      <Navbar
        color="dark"
        light
        expand="lg"
      >
        <NavbarBrand>
          <NavLink
            to='/'
            className='navbar-brand'
          >
            App
          </NavLink>
        </NavbarBrand>
        <NavbarToggler
          color="light"
          onClick={this.toggle}
        />
        <Collapse
          navbar
          isOpen={this.state.isOpen}
        >
          <Nav
            navbar
            className="ml-auto"
          >
            <NavItem>
              <NavLink
                to='/'
                className='nav-link'
              >
                Home
              </NavLink>
            </NavItem>
            {logged_in &&
              <NavItem>
                <a
                  className='nav-link'
                  href={sign_out_route}
                >
                  Sign Out
                </a>
              </NavItem>
            }
            {!logged_in &&
              <NavItem>
                <a
                  className='nav-link'
                  href={sign_in_route}
                >
                  Sign In
                </a>
              </NavItem>
            }
            {!logged_in &&
              <NavItem>
                <a
                  className='nav-link'
                  href={new_user_route}
                >
                  Sign Up
                </a>
              </NavItem>
            }
          </Nav>
        </Collapse>
      </Navbar>
    )
  }
}

export default Navigation
