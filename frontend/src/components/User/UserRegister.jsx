import React, { useEffect, useState } from 'react';
import {Link} from 'react-router-dom';

function UserLogin() {

  //validation
  const handleSubmit = () => {
    var vName = document.getElementById("vName").value;
    var iAge = document.getElementById("iAge").value;
    var vCity = document.getElementById("vCity").value;
    var vHobbies = document.getElementById("vHobbies").value;
    var vFav_Food = document.getElementById("vFav_Food").value;
    var vEmail = document.getElementById("vEmail").value;
    var vPassword = document.getElementById("vPassword").value;
    var vConfirmPassword = document.getElementById("vConfirmPassword").value;
    var vGender = document.getElementById("vGender").value;
    
    var vNameError = document.getElementById("vNameError");
    var iAgeError = document.getElementById("iAgeError");
    var vCityError = document.getElementById("vCityError");
    var vHobbiesError = document.getElementById("vHobbiesError");
    var vFav_FoodError = document.getElementById("vFav_FoodError");
    var vEmailError = document.getElementById("vEmailError");
    var vPasswordError = document.getElementById("vPasswordError");
    var vConfirmPasswordError = document.getElementById("vConfirmPasswordError");
    var vGenderError = document.getElementById("vGenderError");

    let error = false;

    if (vName.length === 0) {
      vNameError.classList.remove("d-none");
      error = true;
    } else {
      vNameError.classList.add("d-none");
    }

    if (iAge.length === 0) {
      iAgeError.classList.remove("d-none");
      error = true;
    } else {
      iAgeError.classList.add("d-none");
    }

    if (vCity.length === 0) {
      vCityError.classList.remove("d-none");
      error = true;
    } else {
      vCityError.classList.add("d-none");
    }

    if (vHobbies.length === 0) {
      vHobbiesError.classList.remove("d-none");
      error = true;
    } else {
      vHobbiesError.classList.add("d-none");
    }

    if (vFav_Food.length === 0) {
      vFav_FoodError.classList.remove("d-none");
      error = true;
    } else {
      vFav_FoodError.classList.add("d-none");
    }

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
      if (vPassword === vConfirmPassword) {
        vConfirmPasswordError.classList.add("d-none");
      } else {
        vConfirmPasswordError.classList.remove("d-none");
        error = true;
      }
      vPasswordError.classList.add("d-none");
    }

    if (vGender.length === 0) {
      vGenderError.classList.remove("d-none");
      error = true;
    } else {
      vGenderError.classList.add("d-none");
    }

    if (error === false) {

      const fetchItems = async () => {
        try {
          const response = await fetch('/api/user/addUserData', {
            method: 'POST',
            body: JSON.stringify({ 
              vName: vName,
              iAge: iAge,
              vCity: vCity,
              vHobbies: vHobbies,
              vFav_Food: vFav_Food,
              vEmail: vEmail,
              vPassword: vPassword,
              vGender: vGender,
            }),
            headers: {
              'Content-Type': 'application/json',
            },
          });
          const data = await response.json();
          if(data.status == 'success'){
            window.location.href = '/login';
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
        <h2 className="text-primary">Register</h2>
        <div className="form-group">
          <p className="text-left" >Name</p>
          <input type="email" className="form-control" id="vName" placeholder="Enter name" />
          <p className="text-left text-danger d-none" id="vNameError">Please enter your name</p>
        </div>
        <div className="form-group">
          <p className="text-left" >Age</p>
          <input type="number" className="form-control" id="iAge" placeholder="Enter Age" />
          <p className="text-left text-danger d-none" id="iAgeError">Please enter your age</p>
        </div>
        <div className="form-group">
          <p className="text-left" >City</p>
          <input type="text" className="form-control" id="vCity" placeholder="Enter City" /> 
          <p className="text-left text-danger d-none" id="vCityError">Please enter your age</p>
        </div>
        <div className="form-group">
          <p className="text-left" >City</p>
          <input type="text" className="form-control" id="vHobbies" placeholder="Enter Hobby" /> 
          <p className="text-left text-danger d-none" id="vHobbiesError">Please enter your age</p>
        </div>
        <div className="form-group">
          <p className="text-left" >Favorite Food</p>
          <input type="text" className="form-control" id="vFav_Food" placeholder="Enter Your Favorite Food" /> 
          <p className="text-left text-danger d-none" id="vFav_FoodError">Please enter your age</p>
        </div>
        <div className="form-group">
          <p className="text-left" >Favorite Food</p>
            <select className="custom-select custom-select-lg mb-3" id="vGender">
              <option defaultValue value="">Select Gender</option>
              <option value="male">Male</option>
              <option value="female">Female</option>
            </select>
            <p className="text-left text-danger d-none" id="vGenderError">Please select gender</p>
        </div>
        <div className="form-group">
          <p className="text-left" >Email address</p>
          <input type="email" className="form-control" id="vEmail" placeholder="Enter email" />
          <p className="text-left text-danger d-none" id="vEmailError">Please enter email address</p>
          <small id="emailHelp" className="form-text text-muted text-left">We'll never share your email with anyone else.</small>
        </div>
        <div className="form-group">
          <p className="text-left" >Password</p>
          <input type="password" className="form-control" id="vPassword" placeholder="Password" />
          <p className="text-left text-danger d-none" id="vPasswordError">Please enter confirm password</p>
        </div>
        <div className="form-group">
          <p className="text-left" >Confirm Password</p>
          <input type="password" className="form-control" id="vConfirmPassword" placeholder="Confirm Password" />
          <p className="text-left text-danger d-none" id="vConfirmPasswordError">Please password and confirm password should be match</p>
        </div>
        <button type="button" onClick={() => handleSubmit()} className="btn btn-primary">Register</button>
      </form>
    </div>
  );
}

export default UserLogin;