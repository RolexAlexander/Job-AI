edge transition {
    has intent;
}

node home {
    has Intro= "Welcome to our job and resume builder";
    has internship_list=""; 
    has Jobs="";
    has title= "";
    has intro="";
    has title= "";
    has name= "";
    has address= "";
    has telephone_number= "";
    has gmail= "";
    has short_sentence="";
    has High_School_Name= "";
    has location= "";
    has Date_of_graduation= "";
    has education_system= "";
    has Course_highlight= "";
    has certificates= "";
    has experience="";
    has award="";
    has activities_hobbies="";
    has Skills="";
    has reference="";
    has Finished_resume="";
    has career_list="";
    has application_fee="";
}

edge resume_builder;
edge career;

graph main_graph {
    has anchor main_rooot;

    spawn{
    main_root = spawn here -[career]-> node::home;
    home = spawn here -[resume_builder]-> node::home(title= "Resume Builder", intro= "Welcome to our Resume Builder. Enter HELLO to Continue");
    home = spawn here -[career]-> node::home (Intro= "Welcome to our Internships and job bank");
    career = spawn here -[career]-> node::home (internship_list= "Here is a list of available Internships");
    career = spawn here -[career]-> node::home(Jobs= "Welcome to our job bank. Here is a list of Jobs");
    Internship = spawn here -[career]-> node::home(apply_now= "Do you want to apply to all the recommentded Internships");
    Jobs = spawn here -[career]-> node::home(apply_now= "Do you want to apply to all the recommended Jobs?");
    resume = spawn here -[resume_builder]-> node::home (title= "Personal Information", name= "Enter your Name", address= "Enter your Current Address", telephone_number= "Enter your telephone number", gmail= "Enter your email address");
    Personal_Information = spawn here -[resume_builder]-> node::home(short_sentence= "In one short sentence summarize your goal for your job search. The goal should be related to the specific position for which you are applying. It is also effective to highlight your skills in the goal statement.");
    Objective = spawn here -[resume_builder]-> node::home(High_School_Name= "What is the name of your Alma mater", location= "Where is your School Located", Date_of_graduation= "What date did you graduate School", education_system= "What educational system did you undertake. (GCE, CSEC, A levels, CAPE, Vocational Studies, University Degree)", Course_highlight= "What courses did you take and the grade received for each", certificates= "What certificates did you receive");
    Education = spawn here -[resume_builder]-> node::home(experience= "What experience do you have in the field.(This could include Summer jobs, Internships, Volunteer work). Please include position title, company/organization, city/state, dates and a brief list of the job duties.");
    experience = spawn here -[resume_builder]-> node::home(award= "List the awards you have received. These awards or Honors could include Academic, musical, athletic and or other recognition. (Include name of the award/honor, who awarded it, and when it was awarded.)");
    awards_honors = spawn here -[resume_builder]-> node::home(activities_hobbies= "List your activities and Hobbies.");
    Activities_hobbies = spawn here -[resume_builder]-> node::home(Skills= "What are your skills.");
    Skills = spawn here -[resume_builder]-> node::home(reference= "List your reference. These can include Teacher/Professor Work supervisor (current or past) Character reference (Pastor, Headmaster, youth group leader or someone who knows you well) Include the name, relationship to you, organization, contact phone numbers.");
    reference = spawn here -[resume_builder]-> node::home(Finished_resume= "Here is your finished resume.");
    Finished_resume = spawn here -[resume_builder]-> node::home(suitable_careers =" Here is a List of suitable carriers");
    suitable_careers = spawn here -[resume_builder]-> node::home(apply_now= "Do you want to apply to all the recommended jobs?");
    }
}