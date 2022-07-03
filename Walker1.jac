walker talker{
    has utterance;
    resume {
        std.out(here.message, here.prompts);
        utterance = std.input(">");
        if(utterance == "quit"): disengage;
        else take -[transition(intent == utterance)]-> node::response else {
        take -->;
        }
    }
}

        