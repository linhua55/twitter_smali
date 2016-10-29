package com.twitter.model.moments.viewmodels;

import com.twitter.util.math.Size;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class k extends MomentPage {
    public final String a;
    public final Size b;
    public final com.twitter.model.moments.k c;

    public k(l lVar) {
        super(lVar);
        this.a = e.b(lVar.a);
        this.b = (Size) e.b(lVar.g, Size.b);
        this.c = (com.twitter.model.moments.k) e.b(lVar.h, com.twitter.model.moments.k.b);
    }

    public MomentPage$Type d() {
        return MomentPage$Type.PHOTO;
    }
}
