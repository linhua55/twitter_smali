package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
/* renamed from: ceh */
public class ceh extends ceb {
    public ceh(cec cec) {
        super(cec);
        this.b = 1;
    }

    public TweetActionType a() {
        return TweetActionType.m;
    }

    protected int a(Tweet tweet, cea cea) {
        if (tweet.G) {
            return 2;
        }
        return 1;
    }

    protected int b(Tweet tweet, cea cea) {
        return 0;
    }
}
