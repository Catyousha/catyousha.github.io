import React from 'react';

const Profile = () => {
    return(
        <div id="profile" className="main-page lg:col-span-10 text-center">
            <img className="cus-shadow rounded-md mx-auto mt-14 lg:mt-28" width="120" height="120" src="./pictures/profile.jpg"/>
            <div className="pt-4 lg:mx-32">
                <p className="text-title">Hi there, my name is Jaka</p>
                <p className="side-text">My name is Jaka Asa Baldan Ahmad, i’m just a random informatics student at Universitas Negeri Malang since 2019. Currently interested in web development especially things about javascript frameworks; for example NodeJS, ReactJS, and VueJS.</p>
                <p className="side-text mt-6"> This portfolio is made using ReactJS and Tailwind CSS</p>
            </div>
        </div>
    )
}

export default Profile;