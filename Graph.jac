node home {
    has Intro= "Welcome to our job and resume builder";
}

node career {
    has Intro= "Welcome to our Internships and job bank";
}

node Intership {
    has internship_list= "Here is a list of available Internships";
}

node Jobs {
    has Jobs= "Welcome to our job bank. Here is a list of Jobs";
}

node resume {
    has title= "Resume Builder";
    has intro= "Welcome to our Resume Builder. Enter HELLO to Continue";
}

node Personal_Information {
    has title= "Personal Information";
    has name= "Enter your Name";
    has address= "Enter your Current Address";
    has telephone_number= "Enter your telephone number";
    has gmail= "Enter your email address";
}

node Objective {
    has short_sentence= "In one short sentence summarize your goal for your job search. The goal should be related to the specific position for which you are applying. It is also effective to highlight your skills in the goal statement.";
}

node Education {
    has High_School_Name= "What is the name of your Alma mater";
    has location= "Where is your School Located";
    has Date_of_graduation= "What date did you graduate School";
    has education_system= "What educational system did you undertake. (GCE, CSEC, A levels, CAPE, Vocational Studies, University Degree)";
    has Course_highlight= "What courses did you take and the grade received for each";
    has certificates= "What certificates did you receive";
}

node experience {
    has experience= "What experience do you have in the field.(This could include Summer jobs, Internships, Volunteer work). Please include position title, company/organization, city/state, dates and a brief list of the job duties.";
}

node awards_honors {
    has award= "List the awards you have received. These awards or Honors could include Academic, musical, athletic and or other recognition. (Include name of the award/honor, who awarded it, and when it was awarded.)";
}

node Activities_hobbies {
    has activities_hobbies= "List your activities and Hobbies.";
}

node Skills {
    has Skills= "What are your skills.";
}

node reference {
    has reference= "List your reference. These can include Teacher/Professor Work supervisor (current or past) Character reference (Pastor, Headmaster, youth group leader or someone who knows you well) Include the name, relationship to you, organization, contact phone numbers.";
}

node Finished_resume {
    has Finished_resume= "Here is your finished resume.";
}


node suitable_careers{
    has career_list;
    }
    
node apply_now {
    has application_fee;
}

edge resume_builder;
edge career;

walker init{
    home0 = spawn here -[career]-> node::home;
    home = spawn here -[resume_builder]-> node::resume;
    home = spawn here -[career]-> node::career;
    career = spawn here -[career]-> node::Intership;
    career = spawn here -[career]-> node::Jobs;
    Internship = spawn here -[career]-> node::apply_now;
    Jobs = spawn here -[career]-> node::apply_now;
    resume = spawn here -[resume_builder]-> node::Personal_Information;
    Personal_Information = spawn here -[resume_builder]-> node::Objective;
    Objective = spawn here -[resume_builder]-> node::Education;
    Education = spawn here -[resume_builder]-> node::experience;
    experience = spawn here -[resume_builder]-> node::awards_honors;
    awards_honors = spawn here -[resume_builder]-> node::Activities_hobbies;
    Activities_hobbies = spawn here -[resume_builder]-> node::Skills;
    Skills = spawn here -[resume_builder]-> node::reference;
    reference = spawn here -[resume_builder]-> node::Finished_resume;
    Finished_resume = spawn here -[resume_builder]-> node::suitable_careers;
    suitable_careers = spawn here -[resume_builder]-> node::apply_now;
    for i in -->:
    std.out(i.context);
}
