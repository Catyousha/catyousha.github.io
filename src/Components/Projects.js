import React, { useState, useEffect } from 'react';
import ProjectsDetail from './ProjectsDetail';
import ProjectsList from './ProjectsList'

const Projects = () => {
    const [projectView, setProjectView] = useState(-1);
    const projectData = require('../Database/projects.json').projects
    console.log(projectData)
    const viewHandler = {
        viewBtn: (id) => {
            setProjectView(id)
        },
        backBtn: () => {
            setProjectView(-1)
        }
    }

    
    return(
        <div id="projects" className="main-page lg:col-span-10 lg:my-5 py-2 lg:px-10">
            {(projectView != -1)?
                <ProjectsDetail data={projectData[projectView]}  handler={viewHandler}/> 
                :(
                <>
                <p className="text-title">Projects</p>
                <p className="side-text">Some projects that I work on...</p>
                <div className="mt-3 grid grid-cols-1 lg:grid-cols-2 gap-x-10 gap-y-6">
                    {projectData.map((project) => 
                        <ProjectsList data={project} handler={viewHandler}/>
                    )
                    }
                    
                </div>
                </>
                )
            }
        </div>
    )
}

export default Projects;