package com.twitter.model.livepipeline;

/* compiled from: Twttr */
public class h extends e {
    public final g[] a;

    h(i iVar) {
        super(iVar);
        this.a = iVar.a;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Error total: " + this.a.length);
        for (Object obj : this.a) {
            stringBuilder.append("\n");
            stringBuilder.append(obj);
        }
        return stringBuilder.toString();
    }
}
