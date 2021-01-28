import React from 'react'

const ExperienceList = ({data}) => {
    return (
    <div className="list-anim col-span-1 p-3 act-bg cus-shadow">
        <div className="grid grid-cols-12">
            <div className="col-span-3 lg:col-span-1">
                <img src={"./pictures/experiences/"+data.img} className="object-fill rounded-full h-16 w-16 lg:w-16 cus-shadow mt-2"/>
            </div>
            <div className="col-span-9 lg:col-span-11">
                <h3 className="sub-title-text mt-2">{data.title}</h3>
                <p className="side-text">At <b className="font-bold">{data.place}, {data.time}</b></p>
            </div>
        </div>
    </div>
    )
}

export default ExperienceList