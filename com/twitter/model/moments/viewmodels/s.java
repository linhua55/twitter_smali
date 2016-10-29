package com.twitter.model.moments.viewmodels;

import com.twitter.model.moments.k;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class s extends o {
    public final k a;

    public s(t tVar) {
        super(tVar);
        this.a = (k) e.b(tVar.j, k.b);
    }

    public MomentPage$Type d() {
        return MomentPage$Type.AUDIO;
    }
}
