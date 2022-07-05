walker talker {
    
    has utterance;

    state {
        
        std.out(here.title, here.message);

        utterance = std.input("> ");

        if(utterance == "quit") {
            disengage;
        } 

        take -[transition(intent == utterance)]-> else {

            
                report here;
                take --> node::closing_home;
        }
    }

    closing_home {
        std.out(here.title, here.message);
    }
}