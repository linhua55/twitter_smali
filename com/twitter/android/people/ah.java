package com.twitter.android.people;

import com.twitter.android.yj;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ah implements c<yj> {
    static final /* synthetic */ boolean a;
    private final cxj<TwitterScribeAssociation> b;
    private final cxj<FriendshipCache> c;
    private final cxj<Session> d;
    private final cxj<az> e;

    static {
        a = !ah.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ah(cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation, cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az) {
        if (a || cxj_com_twitter_library_scribe_TwitterScribeAssociation != null) {
            this.b = cxj_com_twitter_library_scribe_TwitterScribeAssociation;
            if (a || cxj_com_twitter_library_util_FriendshipCache != null) {
                this.c = cxj_com_twitter_library_util_FriendshipCache;
                if (a || cxj_com_twitter_library_client_Session != null) {
                    this.d = cxj_com_twitter_library_client_Session;
                    if (a || cxj_com_twitter_library_client_az != null) {
                        this.e = cxj_com_twitter_library_client_az;
                        return;
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public yj a() {
        return (yj) d.a(aa.a((TwitterScribeAssociation) this.b.b(), (FriendshipCache) this.c.b(), (Session) this.d.b(), (az) this.e.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<yj> a(cxj<TwitterScribeAssociation> cxj_com_twitter_library_scribe_TwitterScribeAssociation, cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az) {
        return new ah(cxj_com_twitter_library_scribe_TwitterScribeAssociation, cxj_com_twitter_library_util_FriendshipCache, cxj_com_twitter_library_client_Session, cxj_com_twitter_library_client_az);
    }
}
