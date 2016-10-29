package com.twitter.android.people;

import com.twitter.library.scribe.TwitterScribeAssociation;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class af implements c<TwitterScribeAssociation> {
    static final /* synthetic */ boolean a;
    private final cxj<q> b;

    static {
        a = !af.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public af(cxj<q> cxj_com_twitter_android_people_q) {
        if (a || cxj_com_twitter_android_people_q != null) {
            this.b = cxj_com_twitter_android_people_q;
            return;
        }
        throw new AssertionError();
    }

    public TwitterScribeAssociation a() {
        return (TwitterScribeAssociation) d.a(aa.a((q) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<TwitterScribeAssociation> a(cxj<q> cxj_com_twitter_android_people_q) {
        return new af(cxj_com_twitter_android_people_q);
    }
}
