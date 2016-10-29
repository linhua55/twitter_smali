package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
/* renamed from: cdz */
public class cdz extends ceb {
    public cdz(cec cec) {
        super(cec);
    }

    public TweetActionType a() {
        return TweetActionType.b;
    }

    protected int a(Tweet tweet, cea cea) {
        return tweet.a ? 1 : 0;
    }

    protected int b(Tweet tweet, cea cea) {
        return tweet.o;
    }
}
