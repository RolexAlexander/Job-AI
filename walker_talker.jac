walker talker {
    
    has utterance;

    state {
        
        std.out(here.Intro, here.title, here.question);

        utterance = std.input("> ");

        if(utterance == "quit") {
            disengage;
        } 
        elif (utterance == !"" or ""){
            std.out("hmmm, I didn't understand that!");
        }

        take -[transition(intent == utterance)]-> else {

            
                report here;
                take --> node::closing_home;
        }
    }

    closing_home {
        std.out(here.Intro, here.promp);
    }
    Personal_Information {
        std.out(here.title);
        utterance = std.input("> ");
        utterance = title;
        std.out(here.name);
        utterance = std.input("> ");
        utterance = name;
        std.out(here.address);
        utterance = std.input("> ");
        utterance = address;
        std.out(here.telephone_number);
        utterance = std.input("> ");
        utterance = phonenumber;
        std.out(here.gmail);
        utterance = std.input("> ");
        utterance = mail;
    }
    Internship_list {
        std.out(here.internship_list);
        utterance = std.input(">");
        utterance = internshiplist;
    }
    Jobs {
        std.out(here.Jobs);
        utterance = std.input(">");
        utterance = jobs;
    }
    title{
    std.out(here.title);
    utterance = std.input(">");
    utterance = title;
    std.out(here.name);
    utterance = std.input(">");
    utterance = myname;
    std.out(here.address);
    utterance = std.input(">");
    utterance = myaddress;
    std.out(here.telephone_number);
    utterance = std.input(">");
    utterance = telenumber;
    std.out(here.gmail);
    utterance = std.input(">");
    utterance = mygmail;
    }
    High_School_Name {
    std.out(here.title);
    utterance = std.input(">");
    utterance = title;
    std.out(here.location);  
    utterance = std.input(">");
    utterance = mylocation;
    std.out(here.Date_of_graduation); 
    utterance = std.input(">");
    utterance = mydateofgraduation;
    std.out(here.education_system);   
    utterance = std.input(">");
    utterance = myeducationsystem;
    std.out(here.Course_highlight); 
    utterance = std.input(">");
    utterance = mycoursehighlight;
    std.out(here.certificates); 
    utterance = std.input(">");
    utterance = mycertificates;
    }
    
}