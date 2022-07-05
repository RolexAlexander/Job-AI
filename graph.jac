edge transition {
    has intent;
}

node state {
    has title;
    has message;
}

edge resume_builder;
edge career;

graph main_graph {
    has anchor main_root;

    spawn{
    main_root = spawn node::state(title="Welcome", message= "Welcome to our Resume Builder. Enter HELLO to Continue");
    resume = spawn main_root -[transition(intent="resume")]-> node::state (title= "Resume Builder", message= "Welcome to our Resume Builder. Enter HELLO to Continue");
    career = spawn main_root -[transition(intent="career")]-> node::state (title= "Welcome to our Internships and job bank", message= "ddfndufbdbu");
    closing_home = spawn resume -[transition(intent="closing")]-> node::state (title="Closing Home", message="Goodbye");
    // #internship_list = spawn career -[career]-> node::state (message= "Here is a list of available Internships");
    // Jobs = spawn career -[career]-> node::state(message= "Welcome to our job bank. Here is a list of Jobs");
    // apply_now = spawn internship_list -[career]-> node::state(message= "Do you want to apply to all the recommentded Internships");
    // apply = spawn Jobs -[career]-> node::state(message= "Do you want to apply to all the recommended Jobs?");
    // title = spawn resume -[resume_builder]-> node::state (message= "Personal Information");
    // short_sentence = spawn title -[resume_builder]-> node::state(message= "In one short sentence summarize your goal for your job search. The goal should be related to the specific position for which you are applying. It is also effective to highlight your skills in the goal statement.");
    // High_School_Name = spawn short_sentence -[resume_builder]-> node::state(message= "What is the name of your Alma mater");
    // experience = spawn High_School_Name -[resume_builder]-> node::state(message= "What experience do you have in the field.(This could include Summer jobs, Internships, Volunteer work). Please include position title, company/organization, city/state, dates and a brief list of the job duties.");
    // award = spawn experience -[resume_builder]-> node::state(message= "List the awards you have received. These awards or Honors could include Academic, musical, athletic and or other recognition. (Include name of the award/honor, who awarded it, and when it was awarded.)");
    // activities_hobbies = spawn award -[resume_builder]-> node::state(message= "List your activities and Hobbies.");
    // skills = spawn activities_hobbies -[resume_builder]-> node::state(message= "What are your skills.");
    // reference = spawn skills -[resume_builder]-> node::state(message= "List your reference. These can include Teacher/Professor Work supervisor (current or past) Character reference (Pastor, Headmaster, youth group leader or someone who knows you well) Include the name, relationship to you, organization, contact phone numbers.");
    // Finished_resume = spawn reference -[resume_builder]-> node::state(message= "Here is your finished resume.");
    // suitable_careers = spawn Finished_resume -[resume_builder]-> node::state(message =" Here is a List of suitable carriers");
    // apply_n = spawn suitable_careers -[resume_builder]-> node::state(message= "Do you want to apply to all the recommended jobs?");
    // 
    }
}