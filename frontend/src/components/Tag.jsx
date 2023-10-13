import React, { useEffect, useState } from 'react';
import withAuth from './withAuth';
import {Link} from 'react-router-dom';

function Tag() {
  useEffect(() => {
    fetchItems();
  }, []);

  const handleEdit = (id) => {
    // Handle edit logic using the id
    console.log(`Edit button clicked for ID: ${id}`);
  };

  const handleDelete = (iTagId) => {
    // Handle delete logic using the id
    const deleteData = async () => {
        try {
            const response = await fetch('/api/tags/deleteTagData', {
                method: 'POST',
                body: JSON.stringify({ iTagId: iTagId }),
                headers: {
                    'Content-Type': 'application/json',
                },
            });
            const data = await response.json();
            if(data.status == 'success'){
                alert(data.message);
                fetchItems();
            }
        } catch (error) {
            console.error(error);
            // Handle the error, e.g., set an error state or display an error message
        }
    };
    const confirmed = window.confirm('Are you sure you want to delete?');
    if (confirmed) {
        // Perform the delete operation
        deleteData();
    }
  };

  const [items, setItems] = useState([]);

  const fetchItems = async () => {
    try {
      const response = await fetch('/api/tags/tagData', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
      });
      const data = await response.json();
      setItems(data.data);
    } catch (error) {
      console.error(error);
      // Handle the error, e.g., set an error state or display an error message
    }
  };

  return (
    <section className="row">
      <table className="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Action <Link to="/tag/add" className="btn btn-primary">
              Add
            </Link></th>
          </tr>
        </thead>
        <tbody>
          {items.map((item, index) => (
            <tr key={index}>
              <th scope="row">{index+1}</th>
              <td>{item.vName}</td>
              <td>
                <Link to={`/tag/edit/${item.iTagId}`} className="btn btn-primary">
                    Edit
                </Link>
                <button type="button" className="btn btn-danger" onClick={() => handleDelete(item.iTagId)}>
                  Delete
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </section>
  );
}

const ProtectedTag = withAuth(Tag);

export default ProtectedTag;