package com.twitter.model.dms;

import cgl;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class t<E extends s, B extends t<E, B>> extends m<E, B> {
    private long b;
    private String c;

    public /* synthetic */ m a(cgl cgl) {
        return b(cgl);
    }

    public boolean bo_() {
        return super.bo_() && this.b != -1;
    }

    public B b(cgl cgl) {
        String a;
        String str = null;
        super.a(cgl);
        if (cgl != null) {
            a = cgl.a("feedback_id");
            str = cgl.a("display_name");
        } else {
            a = null;
        }
        this.b = aj.a(a, -1);
        this.c = str;
        return (t) ObjectUtils.a(this);
    }
}
