import {*} with "./Graph1.jac";
import {*} with "./Walker1.jac";

walker init {

    root {
        spawn here --> graph::main_graph;
        spawn main_graph --> walker::talker;
    }
}