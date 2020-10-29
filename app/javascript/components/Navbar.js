import React from "react"
import PropTypes from "prop-types"
class Navbar extends React.Component {
  render () {
    return (
      <React.Fragment>
        Twitter: {this.props.twitter}
        Instagram: {this.props.instagram}
        Linkedin: {this.props.linkedin}
      </React.Fragment>
    );
  }
}

Navbar.propTypes = {
  twitter: PropTypes.string,
  instagram: PropTypes.string,
  linkedin: PropTypes.string
};
export default Navbar
