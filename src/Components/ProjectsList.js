import React from 'react'

const ProjectsList = ({data, handler}) => {
    return (
    <div className="list-anim col-span-1 p-3 act-bg cus-shadow">
        <img src={"./pictures/projects/"+data.img[0]} className="object-fill rounded-md h-32 w-full"/>
        <div className="flex justify-between">
            <div className="pl-3">
                <h3 className="sub-title-text mt-2">{data.title}</h3>
                <p className="side-text">As <b className="font-bold">{data.role}</b></p>
            </div>
            <button onClick={() => {handler.viewBtn(data.id)}} style={{backgroundColor: "#37393E", color:"#cdcdcd"}}
                className="project-btn cus-shadow w-12 h-12 mt-5 mr-3 rounded-full font-bold 
                text-3xl text-center">
                &gt;
            </button>
        </div>
    </div>
    )
}

export default ProjectsList