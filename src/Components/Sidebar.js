import React from 'react';
import SidebarLink from './SidebarLink'

const Sidebar = ({active, link}) => {
    return(
        <div id="sidebar" className="z-10 lg:col-span-2 cus-shadow side-bg lg:py-3">
            <div id="sidebar-links" className="lg:text-center">
                
                <img onClick={()=>link(0)} id="sidebar-img" className={"cus-shadow rounded-full my-5 lg:my-8 lg:mx-auto " + ((active === 0)? "act-border":"")} src="./pictures/profile.jpg"/>
                <SidebarLink link={() => link(1)} text="Projects" active={(active === 1)}/><br/>
                <SidebarLink link={() => link(2)} text="Experience"  active={(active === 2)}/><br/>
                <SidebarLink link={() => link(3)} text="Contact"  active={(active === 3)}/><br/>
            </div>
        </div>
    )
}

export default Sidebar;