package com.twitter.model.moments.viewmodels;

import com.twitter.model.moments.ax;

/* compiled from: Twttr */
public class v extends o implements y {
    private final ax a;

    protected v(w wVar) {
        super(wVar);
        this.a = wVar.j;
    }

    public MomentPage$Type d() {
        return MomentPage$Type.TEXT;
    }

    public ax p() {
        return this.a;
    }
}
