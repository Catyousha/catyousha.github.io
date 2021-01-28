import React from 'react';
import ContactList from './ContactList'

const Contacts = () => {
    const contacts = require('../Database/contacts.json').contacts
    return(
        <div id="contacts" className="main-page lg:col-span-10 lg:my-5 py-2 lg:px-10">
            <p className="text-title">Contact</p>
            <p className="side-text">Now you know where to find me.</p>
            <div className="mt-3 grid grid-cols-1 lg:grid-cols-2 gap-x-12 gap-y-6 p-10">
                {contacts.map((con) =>
                    <ContactList data={con}/>
                )}
            </div>
        </div>
    )
}

export default Contacts;