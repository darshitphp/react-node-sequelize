import React, {useEffect, useState} from 'react';
import withAuth from './withAuth';

function User() {
    useEffect( () => {
        fetchItems();
    }, []);

    const [items, setItems] = useState([]);

    const fetchItems = async () => {
        const data = await fetch('/api/user/test',{
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
        });
        const items = await data.json();
        setItems(items.data);
    };

    const spacing = 2; // Assuming you have a spacing value

    return(
        <section className="row">
        <table className="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Name</th>
                  <th scope="col">City</th>
                  <th scope="col">Email</th>
                </tr>
              </thead>
              <tbody>
    {
        items.map((item, index) => (
            <tr key={index}>
              <th scope="row">{index+1}</th>
              <td>{item.vName}</td>
              <td>{item.vCity}</td>
              <td>{item.vEmail}</td>
            </tr>
              
        ))
    }
    </tbody>
    </table>
    </section>
    );
}


const ProtectedUser = withAuth(User);

export default ProtectedUser;