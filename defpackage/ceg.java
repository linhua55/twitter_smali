package defpackage;

import buz;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
/* renamed from: ceg */
public class ceg extends ceb {
    public ceg(cec cec) {
        super(cec);
    }

    public TweetActionType a() {
        return TweetActionType.c;
    }

    protected int a(Tweet tweet, cea cea) {
        int i = buz.a().d() ? (tweet.s == cea.a() || !tweet.G) ? 0 : 1 : (tweet.G || tweet.s == cea.a()) ? 1 : 0;
        if (i != 0) {
            return 2;
        }
        if (tweet.d) {
            return 1;
        }
        return 0;
    }

    protected int b(Tweet tweet, cea cea) {
        return tweet.l;
    }
}
