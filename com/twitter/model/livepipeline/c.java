package com.twitter.model.livepipeline;

/* compiled from: Twttr */
public class c extends e {
    public final String a;
    public final Long b;

    public c(d dVar) {
        super(dVar);
        this.a = dVar.a;
        this.b = dVar.b;
    }

    public String toString() {
        return "DmUpdate: conversationId: " + this.a + "; userId: " + this.b;
    }
}
