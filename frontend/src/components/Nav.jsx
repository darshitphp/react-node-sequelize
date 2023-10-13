import React from 'react'; // ES6 js
import {NavLink,useHistory} from 'react-router-dom';

function Nav() {
    const history = useHistory();
    const iUserId = localStorage.getItem('iUserId');
    const handleLogout = () => {
        // Remove the iUserId from localStorage
        localStorage.removeItem('iUserId');
        // Redirect user to the login page or any other desired page
        window.location.href = 'login';
        // history.push('/login');
    };
    return(
        <nav className="navbar navbar-expand-lg navbar-dark bg-dark top">
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navMainMenu" aria-controls="navMainMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"></span>
            </button>
            <div id="navMainMenu" className="navbar-collapse collapse">
                <div className="navbar-nav ml-auto">
                    <NavLink exact to="/" className="nav-item nav-link" activeClassName="active">Home</NavLink>
                    {!iUserId && (
                      <>
                        <NavLink to="/login" className="nav-item nav-link" activeClassName="active">Login</NavLink>
                        <NavLink to="/register" className="nav-item nav-link" activeClassName="active">Register</NavLink>
                      </>
                    )}
                    {iUserId && (
                        <>
                            <NavLink to="/user" className="nav-item nav-link" activeClassName="active">User List</NavLink>
                            <NavLink to="/tag" className="nav-item nav-link" activeClassName="active">Tags</NavLink>
                            <button type="button" onClick={handleLogout} className="btn btn-danger">Logout</button>
                        </>
                    )}
                </div>
            </div>
        </nav>
    );
}

export default Nav;
