package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
/* renamed from: cdx */
public class cdx extends ceb {
    public cdx(cec cec) {
        super(cec);
        this.b = 3;
    }

    public TweetActionType a() {
        return TweetActionType.n;
    }

    protected int a(Tweet tweet, cea cea) {
        int i;
        if (tweet.s == cea.a() && bdq.a(cea.c)) {
            i = 1;
        } else {
            i = 0;
        }
        if (i != 0) {
            return 0;
        }
        return 3;
    }

    protected int b(Tweet tweet, cea cea) {
        return 0;
    }
}
