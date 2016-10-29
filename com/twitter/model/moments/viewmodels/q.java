package com.twitter.model.moments.viewmodels;

import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.k;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class q extends o {
    static final /* synthetic */ boolean c;
    public final long a;
    public final k b;

    static {
        c = !q.class.desiredAssertionStatus();
    }

    public q(r rVar) {
        super(rVar);
        this.a = rVar.j;
        this.b = (k) e.b(rVar.k, k.b);
    }

    public MomentPage$Type d() {
        return MomentPage$Type.TWEET_PHOTO;
    }

    public MediaEntity p() {
        if (!a()) {
            return null;
        }
        Tweet n = n();
        if (c || n != null) {
            return n().w.d.a(this.a);
        }
        throw new AssertionError();
    }
}
