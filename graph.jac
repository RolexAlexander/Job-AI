edge transition {
    has intent;
}

node state {
    has Intro;
    has internship_list; 
    has Jobs;
    has title;
    has intro;
    has title;
    has name;
    has address;
    has telephone_number;
    has gmail;
    has short_sentence;
    has High_School_Name;
    has location;
    has Date_of_graduation;
    has education_system;
    has Course_highlight;
    has certificates;
    has experience;
    has award;
    has activities_hobbies;
    has Skills;
    has reference;
    has Finished_resume;
    has career_list;
    has application_fee;
    has promp;
    has question;
    has ready;
}


graph main_graph {
    has anchor main_root;

    spawn{
    main_root = spawn node::state(Intro = "Welcome to our Job Recruiter. Enter resume to go to our resume builder, interview to go to our inter view section, document help to go to our document help section, or career to go to our job and internship bank.");
    resume = spawn main_root -[transition(intent="resume")]-> node::state (Intro= "Resume Builder", promp= "Welcome to our Resume Builder. Enter HELLO to Continue");
    career = spawn main_root -[transition(intent="career")]-> node::state (Intro= "Welcome to our Internships and job bank", promp= "ddfndufbdbu");
    closing_home = spawn resume -[transition(intent="closing")]-> node::state (Intro="Closing Home", promp="Goodbye");
    internship_list = spawn career -[transition(intent="Internship" or "internship")]-> node::state (promp= "Here is a list of suitable Internships");
    Jobs = spawn career -[transition(intent="Job" or "Jobs" or "job")]-> node::state(promp= "Welcome to our job bank. Here is a list of suitable Jobs");
    apply_now = spawn internship_list -[transition(intent="Apply" or "apply" or "Apply Now")]-> node::state(promp= "Do you want to apply to all the recommended Internships");
    Jobs -[transition(intent="Apply" or "apply" or "Apply Now")]-> apply_now;
    title = spawn resume -[transition(intent="Personal Information" or "personal info")]-> node::state (title= "Personal Information");
    short_sentence = spawn title -[transition(intent="short sentence" or "goal")]-> node::state(title= "In one short sentence summarize your goal for your job search. The goal should be related to the specific position for which you are applying. It is also effective to highlight your skills in the goal statement.");
    High_School_Name = spawn short_sentence -[transition(intent="school info")]-> node::state(title= "What is the name of your Alma mater");
    experience = spawn High_School_Name -[transition(intent="experience" or "Experience")]-> node::state(title= "What experience do you have in the field.(This could include Summer jobs, Internships, Volunteer work). Please include position title, company/organization, city/state, dates and a brief list of the job duties.");
    award = spawn experience -[transition(intent="award" or "awards")]-> node::state(title= "List the awards you have received. These awards or Honors could include Academic, musical, athletic and or other recognition. (Include name of the award/honor, who awarded it, and when it was awarded.)");
    activities_hobbies = spawn award -[transition(intent="activities" or "Hobbies")]-> node::state(title= "List your activities and Hobbies.");
    skills = spawn activities_hobbies -[transition(intent="skills" or "skill")]-> node::state(title= "What are your skills.");
    reference = spawn skills -[transition(intent="reference")]-> node::state(title= "List your reference. These can include Teacher/Professor Work supervisor (current or past) Character reference (Pastor, Headmaster, youth group leader or someone who knows you well) Include the name, relationship to you, organization, contact phone numbers.");
    Finished_resume = spawn reference -[transition(intent="Finished resume" or "resume")]-> node::state(title= "Here is your finished resume.");
    suitable_careers = spawn Finished_resume -[transition(intent="Suitable Careers" or "careers")]-> node::state(title =" Here is a List of suitable carriers");
    suitable_careers -[transition(intent="Apply now")]-> apply_now;
    interview = spawn main_root -[transition(intent="interview")]-> node::state(Intro="Welcome to our interview Section. Enter ready to initiate your interview");
    question1 = spawn interview -[transition(intent="ready")]-> node::state(question="Tell me about yourself");    
    question2 = spawn question1 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Why do you want to leave your current job? or Why did you leave your last job", ready="Are you ready to continue");
    question3 = spawn question2 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="What are your strengths? ", ready="Are you ready to continue");
    question4 = spawn question3 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="What are your weaknesses? ", ready="Are you ready to continue");
    question5 = spawn question4 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Which adjectives would you use to describe yourself?", ready="Are you ready to continue");
    question6 = spawn question5 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="What do you know about our company? ", ready="Are you ready to continue");
    question7 = spawn question6 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Why do you want to work for us? ", ready="Are you ready to continue");
    question8 = spawn question7 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Why should I hire you?", ready="Are you ready to continue");
    question9 = spawn question8 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="What past accomplishments gave you satisfaction? ", ready="Are you ready to continue");
    question10 = spawn question9 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="What makes you want to work hard? ", ready="Are you ready to continue");
    question11 = spawn question10 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="What type of work environment do you like best?", ready="Are you ready to continue");
    question12 = spawn question11 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Why do you want this job? ", ready="Are you ready to continue");
    question13 = spawn question12 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="How do you handle pressure and stress?", ready="Are you ready to continue");
    question14 = spawn question13 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Explain how you overcame a major obstacle. ", ready="Are you ready to continue");
    question15 = spawn question14 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Where do you see yourself five (ten or fifteen) years from now? ", ready="Are you ready to continue");
    question16 = spawn question15 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="What qualifies you for this job? ", ready="Are you ready to continue");
    question17 = spawn question16 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="Why did you choose your college major? ", ready="Are you ready to continue");
    question18 = spawn question17 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="evthsthvss", ready="Are you ready to continue");
    question19 = spawn question18 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="dfhvfhfhsdhd", ready="Are you ready to continue");
    question20 = spawn question19 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="rhvvshdhvjfv", ready="Are you ready to continue");
    question21 = spawn question20 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="ftbkjrtyubdfvhs", ready="Are you ready to continue");
    question22 = spawn question21 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="mfnbvdsyey", ready="Are you ready to continue");
    question23 = spawn question22 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="dhjdbtyjcfx", ready="Are you ready to continue");
    question24 = spawn question23 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="fykutyiodf", ready="Are you ready to continue");
    question25 = spawn question24 -[transition(intent="next" or "ready" or "yes" or "ok")]-> node::state(question="tbkgdfhjdf", ready="Are you ready to continue");
    relevant_documents = spawn main_root -[transition(intent="document help")]-> node::state(Intro="Welcome to our document help section. Here we will get filled forms required for you to get the documents required for your jobs and the date you can submit and recieve the document. Furthermore, please enter the job you applied for.");
    document_list= spawn relevant_documents -[transition(intent="document list")]-> node::state(question="Here is the list of documents required for the Job. Enter ready to proceed to our information section, where we aquire information to auto fill the required documents form");
    question1 = spawn document_list -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="dfhdfhdrh");
    question2 = spawn question1 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="dfvkewbg");
    question3 = spawn question2 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="dcm ndfv");
    question4 = spawn question3 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="dfv bverndiv");
    question5 = spawn question4 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="ef,vne fo");
    question6 = spawn question5 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="dvvdjf hvv");
    question7 = spawn question6 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="fvjenrgrgbohj");
    question8 = spawn question7 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="dfbmjgdx");
    question9 = spawn question8 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="dfjndvi fv dfg");
    question10 = spawn question9 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="vnurbgndfuvn");
    question11 = spawn question10 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="fslnv bfrgbifgnb");
    question12 = spawn question11 -[transition(intent="ready" or "yes" or "ok")]-> node::state(question="fvndf,,dffiidfvjdfv");
    }
}