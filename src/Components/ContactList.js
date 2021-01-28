import React from 'react'

const ContactList = ({data}) => {
    return (
    <div className="list-anim col-span-1 p-3 text-center act-bg cus-shadow rounded-md">
        <img src={"./pictures/contacts/"+data.img} className="object-fill rounded-full h-32 w-32 cus-shadow mt-2 mx-auto"/>
        <h3 className="sub-title-text mt-4">{data.address}</h3>
    </div>
    )
}

export default ContactList