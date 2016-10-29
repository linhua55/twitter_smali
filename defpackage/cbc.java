package defpackage;

import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
/* renamed from: cbc */
public class cbc extends bzy<cbd, TwitterUser> {
    private static cbc c;

    cbc() {
    }

    public static cbc a() {
        if (c == null) {
            c = new cbc();
        }
        return c;
    }

    protected void a(cbd cbd, long j, TwitterUser twitterUser) {
        cbd.a(j, twitterUser);
    }
}
