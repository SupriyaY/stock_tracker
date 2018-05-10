
import React, { Component } from 'react';
import axios from "axios";
import { Link } from 'react-router-dom';


class Owner extends Component {
    constructor() {
        super();
        this.state = {
            owner: {},
            stocks: []
        }
    }

    componentWillMount() {
        console.log('mounting')
        const ownerId = this.props.match.params.id;
        this.grabOwner(ownerId)
    }

    grabOwner = async (ownerId) => {
        try {
            const ownerId = this.props.match.params.ownerId
            const ownerResponse = await axios.get(`/api/owners/${ownerId}`)
            console.log(ownerResponse.data)
            await this.setState({ owner: ownerResponse.data.owner, stocks: ownerResponse.data.stocks });
        } catch (error) {
            console.log(error)
            await this.setState({ error: error.message })
        }
    }

    render() {
        return (


            <div>

                <div>
                    <div>
                        <h1>{this.state.owner.name}</h1>
                    </div>
                    {/* <CrimeDescription>
                        <h2>{this.state.crime.description}</h2>
                    </CrimeDescription> */}
                    <div>
                        <Link to={`/owners/${this.props.match.params.ownerId}/stocks/create`}>
                            Add a supplier and inventory 
                        </Link>
                    </div>
                </div>

                <div>
                    <div>
                        {this.state.stocks.map(stock =>
                            <div>
                                <div>
                                    <div>
                                        <div key={stock.id}>
                                            <h4>{stock.supplier_name}</h4>
                                            <h4>{stock.supplier_address}</h4>
                                            <h4>{stock.poc_name}</h4>
                                            <h4>{stock.poc_email}</h4>
                                            <h4>{stock.poc_phone}</h4>
                                            <h4>{stock.inventory_category}</h4>
                                            <h4>{stock.inventory_name}</h4>
                                            <h4>{stock.inventory_amount}</h4>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    {/* <EditCommentButton>
                                        <div>
                                            <Link to={`/owners/${this.props.match.params.crimeId}/comments/${comment.id}/view`}>
                                                <FlatButton label="Edit" />
                                            </Link>
                                        </div>
                                    </EditCommentButton> */}
                                </div>
                            </div>
                        )}
                    </div>
                </div>
            </div>
        )
    }
}

export default Owner;