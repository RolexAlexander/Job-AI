walker talker {
    has utterance;
    has response;

    
    state {
        
        std.out(here.Intro, here.intro, here.title, here.question);

        utterance = std.input("> ");
        take -[transition(intent == utterance)]->;
        if(utterance == "quit") {
            disengage;
        } 
        elif(utterance == "" or ""){
            std.out("hmmm, I didn't understand that!");
            std.input(">");
        }
        elif(utterance == "Personal Information"){
            take -[transition(intent == "Personal Information")]->;
            std.out("Personal Information");
        std.out("Enter your Name");
        response = std.input("> ");
        std.out("Enter your Current Address");
        response = std.input("> ");
        std.out("Enter your telephone number");
        response = std.input("> ");
        std.out("Enter your email address");
        response = std.input("> "); 
        utterance = std.input("Enter short sentence to continue:  ");
        }
        
    else{
        std.out(here);
    }
}
}

