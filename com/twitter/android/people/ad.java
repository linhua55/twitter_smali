package com.twitter.android.people;

import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ad implements c<bb> {
    static final /* synthetic */ boolean a;
    private final cxj<Session> b;
    private final cxj<TwitterScribeAssociation> c;

    static {
        a = !ad.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ad(cxj<Session> cxj_com_twitter_library_client_Session, cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation) {
        if (a || cxj_com_twitter_library_client_Session != null) {
            this.b = cxj_com_twitter_library_client_Session;
            if (a || cxj_com_twitter_library_scribe_TwitterScribeAssociation != null) {
                this.c = cxj_com_twitter_library_scribe_TwitterScribeAssociation;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public bb a() {
        return (bb) d.a(aa.a((Session) this.b.b(), (TwitterScribeAssociation) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<bb> a(cxj<Session> cxj_com_twitter_library_client_Session, cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation) {
        return new ad(cxj_com_twitter_library_client_Session, cxj_com_twitter_library_scribe_TwitterScribeAssociation);
    }
}
