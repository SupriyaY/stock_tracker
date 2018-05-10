import React, { Component } from 'react';
import styled from 'styled-components';
import { Link } from 'react-router-dom';






class Homepage extends Component {
    render() {
        return (


            <div>

                    <div>
                        Welcome to the Homepage!
                        <Link to="/Owners" style={{ textDecoration: 'none' }}>Business Owners</Link>
                    </div>
            </div>


        )
    }


}

export default Homepage;