import React from 'react';
import ReactDOM from 'react-dom';
// UI
import { Col, Row } from 'antd';
import Parallax from 'react-springy-parallax';
import polygon from './polygon.png';
import bannerA from './bannerA.png';
import bannerB from './bannerB.png';
import feathers from './feathers.png';
import DDDB from './ddd-b.png';

class LandingComponent extends React.Component
{
    render()
    {
        return(
            <div>
                <Parallax ref='parallax' pages={3} className="app-container">
                    <div className="menu text-center">
                        <div className="muni-static">Municipalidad de Valdivia</div>
                        <a href="/home">Inicio</a>
                        <a href="/">Postulaciones</a>
                        <a href="/">Toma de horas</a>
                        <a href="/">Contacto</a>
                    </div>
                    <Parallax.Layer  offset={0} style={{ backgroundImage: 'url('+ bannerA +')', backgroundSize: '100%, 100%', backgroundColor: '#feb00e', backgroundPosition: 'top center' }}/>
                    <Parallax.Layer  offset={0.9}>
                        <div className="block">
                            <div className="block-inter">
                                <div className="a"></div>
                                <div className="b"></div>
                                <div className="c"></div>
                                <div className="d"></div>
                            </div>
                        </div>
                    </Parallax.Layer>
                    <Parallax.Layer  offset={1} style={{ backgroundColor: '#feb00e', backgroundImage: 'url('+ bannerB +')', backgroundSize: '100%, auto', backgroundPosition: 'center center' }}/>

                    <Parallax.Layer  offset={2.9}>
                        <div className="block">
                            <div className="block-inter-b">
                                <div className="a"></div>
                                <div className="b"></div>
                                <div className="c"></div>
                                <div className="d"></div>
                            </div>
                        </div>
                    </Parallax.Layer>

                    <Parallax.Layer
                        style={{ background: 'transparent' }}
                        offset={0}
                        // Parallax factor, allows for positive and negative values
                        // Shifts the layer up or down in accordance to its offset
                        speed={0.5}>

                        <div className="block">
                            <Row type="flex" justify="space-around" align="middle" className="container">
                                <Col span={24} className="text-center">
                                    <div className="frame">
                                        <h1 className="banner--a">Club de Emprendedores Valdivia</h1>
                                        <h3 className="banner--a">Fomento <span>Productivo</span></h3>
                                    </div>
                                </Col>
                            </Row>
                            <div className="arrow bounce" style={{ cursor: 'pointer' }} onClick={() => this.refs.parallax.scrollTo(1)}></div>
                        </div>

                    </Parallax.Layer>

                    <Parallax.Layer
                        style={{ background: 'url(' + feathers + ') center center no-repeat' }}
                        // Page offset, or where the layer will be at when scrolled to
                        // 0 means start, 1 second page, 1.5 second and half, and so on ...
                        offset={1}
                        // Parallax factor, allows for positive and negative values
                        // Shifts the layer up or down in accordance to its offset
                        speed={0.5}>

                        <div className="block">
                            <Row type="flex" justify="space-between" align="middle" className="container">
                                <Col span={12} />
                                <Col span={12} className="text-center">
                                    -
                                </Col>
                            </Row>
                        </div>

                    </Parallax.Layer>

                    <Parallax.Layer
                        style={{ background: 'url(' + DDDB + ') center bottom no-repeat' }}
                        // Page offset, or where the layer will be at when scrolled to
                        // 0 means start, 1 second page, 1.5 second and half, and so on ...
                        offset={2}
                        // Parallax factor, allows for positive and negative values
                        // Shifts the layer up or down in accordance to its offset
                        speed={0.5}>

                        <div className="block">
                            <Row type="flex" justify="center" align="top" className="container">
                                <Col span={8} className="text-center" style={{ paddingTop: '60px' }}>
                                    <h1 className="white">Herramientas a tu alcance</h1>
                                    <div className="white" style={{ fontSize: '18px' }}>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Ab, accusamus consequuntur culpa dicta, doloremque ea eius eveniet excepturi
                                        laborum modi mollitia natus, nemo officia optio praesentium sapiente sed
                                        sunt veritatis?
                                    </div>
                                </Col>
                            </Row>
                        </div>

                    </Parallax.Layer>

                </Parallax>
            </div>
        );
    }
}

document.addEventListener('DOMContentLoaded', () =>
    {
        ReactDOM.render(
            <LandingComponent />,
            document.body.appendChild(document.createElement('div')),
        )
    }
);