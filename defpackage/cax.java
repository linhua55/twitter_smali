package defpackage;

import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: cax */
public class cax extends bzy<cay, Tweet> {
    private static cax c;

    cax() {
    }

    public static cax a() {
        if (c == null) {
            c = new cax();
        }
        return c;
    }

    protected void a(cay cay, long j, Tweet tweet) {
        cay.a(j, tweet);
    }
}
