package com.twitter.model.livepipeline;

/* compiled from: Twttr */
public class a extends e {
    public final String a;
    public final Long b;

    public a(b bVar) {
        super(bVar);
        this.a = bVar.a;
        this.b = bVar.b;
    }

    public String toString() {
        return "ConfigEvent: sessionId: " + this.a + "; subscriptionTtlMillis: " + this.b;
    }
}
