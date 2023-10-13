import React, { useEffect, useState } from 'react';
import {Link} from 'react-router-dom';

function TagAdd() {
  //validation
  const handleSubmit = () => {
    var vName = document.getElementById("vName").value;
    var vNameError = document.getElementById("vNameError");
    let error = false;

    if (vName.length === 0) {
      vNameError.classList.remove("d-none");
      error = true;
    } else {
      vNameError.classList.add("d-none");
    }

    if (error === false) {

      const fetchItems = async () => {
        try {
          const response = await fetch('/api/tags/addTagData', {
            method: 'POST',
            body: JSON.stringify({ vName: vName }),
            headers: {
              'Content-Type': 'application/json',
            },
          });
          const data = await response.json();
          if(data.status == 'success'){
            window.location.href = '/tag';
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
      <Link to="/tag" className="btn btn-dark float-right">
        Back
      </Link>
      <form>
        <div className="form-group row mt-3">
          <div className="col-lg-4">
            <label>Tag Name</label>  
          </div>
          <div className="col-lg-4">
            <input type="text" className="form-control" id="vName" placeholder="Enter Tag Name" />
            <div id="vNameError" className="text-danger text-left d-none">Please Enter Tag Name</div>
          </div>
          <div className="col-lg-4">
          <button type="button" onClick={() => handleSubmit()} className="btn btn-primary">Submit</button>
          </div>
        </div>
      </form>
    </div>
  );
}

export default TagAdd;