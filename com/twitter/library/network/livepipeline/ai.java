package com.twitter.library.network.livepipeline;

/* compiled from: Twttr */
class ai extends ad {
    private final String b;

    ai(aj ajVar) {
        super(ajVar, ai.class.getName());
        this.b = ajVar.c;
    }

    protected String u() {
        return "dm/conversation/" + this.b + "/typing.json";
    }

    public String e() {
        return "lp:typing:publish:";
    }
}
