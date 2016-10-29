package com.twitter.model.livepipeline;

/* compiled from: Twttr */
public class j extends e {
    public final String a;
    public final Long b;

    public j(k kVar) {
        super(kVar);
        this.a = kVar.a;
        this.b = kVar.b;
    }

    public String toString() {
        return "TypingIndicator: conversationId: " + this.a + "; userId: " + this.b;
    }
}
