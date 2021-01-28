import React from 'react';
import ExperienceList from './ExperienceList'

const Experiences = () => {
    const experiences = require('../Database/experiences.json').experiences
    return(
        <div id="experiences" className="main-page lg:col-span-10 lg:my-5 py-2 lg:px-10">
            <p className="text-title">Experience</p>
            <p className="side-text">The real teacher was the experience i made along the way!</p>
            <div className="mt-3 grid grid-cols-1 gap-y-6">
                {experiences.map((exp) => 
                    <ExperienceList data = {exp}/>
                )}
            </div>
        </div>
    )
}

export default Experiences;