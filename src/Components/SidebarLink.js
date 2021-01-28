import React from 'react';


const SidebarLink = ({text, active, link}) => {

    return (
        <button onClick={link} className={"sidebar-link my-5 lg:py-2 lg:px-5  " + (active===true ? "act-bg cus-shadow":"")}>
                {(text === "Projects") ? <>
                        <img className="mx-auto sidebar-icon"  src="./pictures/projects-icon.svg"/>
                        </>
                    : (text === "Experience") ? <>
                        <img className="mx-auto sidebar-icon"  src="./pictures/experience-icon.svg"/>
                        </>
                    : (text === "Contact") ? <>
                        <img className="mx-auto sidebar-icon"  src="./pictures/contact-icon.svg"/>
                    </> : 0
                }
            <p className="sidebar-text">{text}</p>
        </button>
    )

}

export default SidebarLink