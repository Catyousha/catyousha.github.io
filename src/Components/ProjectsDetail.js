import React from 'react'
import Carousel from 'react-multi-carousel';

const responsive = {
  superLargeDesktop: {
    // the naming can be any, depends on you.
    breakpoint: { max: 4000, min: 3000 },
    items: 1
  },
  desktop: {
    breakpoint: { max: 3000, min: 1024 },
    items: 1
  },
  tablet: {
    breakpoint: { max: 1024, min: 464 },
    items: 1
  },
  mobile: {
    breakpoint: { max: 464, min: 0 },
    items: 1
  }
};

const ProjectsDetail = ({data, handler}) => {
    return (
    <div id="project-detail" className="main-page side-bg cus-shadow p-5 lg:p-10 rounded-md">
        <div className="grid grid-cols-1 lg:grid-cols-6 gap-x-10">
            <div className="col-span-4">
                <Carousel responsive={responsive}
                swipeable={true}
                draggable={true}>
                  {
                    data.img.map((i) =>
                      <img class="object-fill w-full rounded-lg h-64 lg:h-72" src={"./pictures/projects/"+i}/>
                    )
                  }
                </Carousel>
            </div>
            <div className="col-span-2">
                <p className="text-title">{data.title}</p>
                <p className="sub-title-text">Team: <span className="side-text ml-2">{data.team}</span></p>
                <p className="sub-title-text">Technologies:</p>
                <ul className="side-text list-inside list-disc">
                    {
                      data.technologies.map((tech) =>
                        <li>{tech}</li>
                      )
                    }
                </ul>
            </div>
        </div>
        <div class="mt-6">
            <p className="text-desc text-justify leading-relaxed text-lg">{data.desc}</p>
            <button onClick={() => {handler.backBtn()}} style={{backgroundColor: "#37393E", color:"#cdcdcd"}}
                className="project-btn cus-shadow p-2 rounded-lg font-bold 
                text-lg text-center lg:float-right">
                 &#8592; Back
            </button>
        </div>

                
    </div>
    )
}

export default ProjectsDetail