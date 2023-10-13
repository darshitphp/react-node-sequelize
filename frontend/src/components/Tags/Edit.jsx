import React, { useEffect, useState } from 'react';
import {Link} from 'react-router-dom';
import { useParams } from 'react-router-dom';


function TagEdit() {
	var { id } = useParams();
	const [items, setItems] = useState([]);
	useEffect(() => {
		fetchByIdItems();
	}, []);
	const fetchByIdItems = async () => {
	    try {
	      const response = await fetch('/api/tags/getTagDataById', {
	        method: 'POST',
	        body: JSON.stringify({ iTagId : id }),
	        headers: {
	          'Content-Type': 'application/json',
	        },
	      });
	      const data = await response.json();
	      setItems(data.data[0]);
	    } catch (error) {
	      console.error(error);
	      // Handle the error, e.g., set an error state or display an error message
	    }
	};
  //validation
  const handleSubmit = () => {
    var vName = document.getElementById("vName").value;
    var iTagId = document.getElementById("iTagId").value;
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
          const response = await fetch('/api/tags/updateTagData', {
            method: 'POST',
            body: JSON.stringify({ 
            	vName: vName,
            	iTagId:iTagId
            }),
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
			<input type="text" className="form-control" id="vName" placeholder="Enter Tag Name" onChange={(e) => { const updatedItems = { ...items, vName: e.target.value }; setItems(updatedItems); }} value={items.vName} />
			<input type="hidden" id="iTagId" value={items.iTagId} />
		  	<div id="vNameError" className="text-danger text-left d-none">
		    	Please Enter Tag Name
		  	</div>
			</div>
          <div className="col-lg-4">
          <button type="button" onClick={() => handleSubmit()} className="btn btn-success">Update</button>
          </div>
        </div>
      </form>
    </div>
  );
}

export default TagEdit;