import React, { Component } from 'react';
import {Link} from 'react-router-dom';

const withAuth = (WrappedComponent) => {
  return class extends Component {
    constructor(props) {
      super(props);
      this.state = {
        isAuthenticated: false,
      };
    }

    componentDidMount() {
      // Perform authentication check, e.g., retrieve user token from local storage or send API request

      // Simulated authentication check
      const isAuthenticated = localStorage.getItem('iUserId') ? true : false;

      this.setState({ isAuthenticated });
    }

    render() {
      if (this.state.isAuthenticated) {
        return <WrappedComponent {...this.props} />;
      } else {
        return <div>
        You are not authenticated. Please log in.
        <Link to="/login" className="btn btn-primary">Back To Login</Link>
        </div>;
      }
    }
  };
};

export default withAuth;