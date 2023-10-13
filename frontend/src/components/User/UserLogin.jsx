import React, { useEffect, useState } from 'react';
import { Link,useHistory } from 'react-router-dom';

function UserLogin() {
    const history = useHistory();

    // Check if iUserId exists in localStorage
    useEffect(() => {
      const iUserId = localStorage.getItem('iUserId');
      if (iUserId) {
        // Redirect user to Home component
        history.push('/');
      }
    }, []);
  
    //validation
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');

    const handleLogin = () => {
        // Perform API call or authentication logic here
        // If the authentication is successful, you can store the user's ID in local storage
        // In this example, we're using a hardcoded user ID for demonstration purposes
        var vEmail = document.getElementById("vEmail").value;
        var vPassword = document.getElementById("vPassword").value;
        var vEmailError = document.getElementById("vEmailError");
        var vPasswordError = document.getElementById("vPasswordError");
        let error = false;

        if (vEmail.length === 0) {
          vEmailError.classList.remove("d-none");
          error = true;
        } else {
          vEmailError.classList.add("d-none");
        }

        if (vPassword.length === 0) {
          vPasswordError.classList.remove("d-none");
          error = true;
        } else {
          vPasswordError.classList.add("d-none");
        }

        if (error === false) {

        const fetchItems = async () => {
          try {
            const response = await fetch('/api/user/checkUser', {
              method: 'POST',
              body: JSON.stringify({ 
                vEmail: vEmail,
                vPassword:vPassword
              }),
              headers: {
                'Content-Type': 'application/json',
              },
            });
            const data = await response.json();
            // Example authentication logic:
            if (data.status === 'success') {
              // Store the user ID in local storage
              localStorage.setItem('iUserId', data.data.iUserId);

              // Do something to handle successful login (e.g., redirect or update state)
              alert('Login successful!');
              // history.push('/');
              window.location.href = '/';
            } else {
              // Do something to handle login failure (e.g., display error message or clear form inputs)
              alert('Login failed!');
            }
          } catch (error) {
            console.error(error);
            // Handle the error, e.g., set an error state or display an error message
          }
        };
        fetchItems();
      }
    };



      
  
  return (  
    <div className="container mt-2">
      <form>
        <h2 className="text-primary">Login</h2>
        <div className="form-group">
          <p className="text-left" >Email address</p>
          <input type="email" className="form-control" id="vEmail" onChange={(event) => setUsername(event.target.value)} placeholder="Enter email" />
          <p className="text-left text-danger d-none" id="vEmailError">Please enter email address</p>
          <small id="emailHelp" className="form-text text-muted text-left">We'll never share your email with anyone else.</small>
        </div>
        <div className="form-group">
          <p className="text-left" >Password</p>
          <input type="password" className="form-control" id="vPassword" placeholder="Password" onChange={(event) => setPassword(event.target.value)} />
          <p className="text-left text-danger d-none" id="vPasswordError">Please enter password</p>
        </div>
        <button type="button" onClick={() => handleLogin()} className="btn btn-primary">Submit</button>
      </form>
    </div>
  );
}

export default UserLogin;