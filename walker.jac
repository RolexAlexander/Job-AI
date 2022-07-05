walker talker{
    has utterance;
    home {
        std.out(here.message, here.prompts);
        utterance = std.input(">");
        if(utterance == "quit"): disengage;
        else take -[transition(intent == utterance)]-> node::home else {
        take here;
        }
    }
}

        