package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.util.aj;
import com.twitter.util.t;

/* compiled from: Twttr */
/* renamed from: ceb */
public abstract class ceb {
    protected long a;
    protected int b;
    protected int c;
    protected String d;
    private final cec e;

    protected abstract int a(Tweet tweet, cea cea);

    public abstract TweetActionType a();

    protected abstract int b(Tweet tweet, cea cea);

    protected ceb(cec cec) {
        this.e = cec;
    }

    public boolean c(Tweet tweet, cea cea) {
        int a = a(tweet, cea);
        boolean z = false;
        if (this.b != a) {
            this.b = a;
            this.e.setState(a);
            z = true;
        }
        a = b(tweet, cea);
        if (this.c != a) {
            this.c = a;
            String a2 = ceb.a(cea, a);
            if (!aj.a(this.d, a2)) {
                this.d = a2;
                this.e.setLabel(a2);
                z = true;
            }
        }
        this.a = tweet.H;
        return z;
    }

    public void b() {
        this.e.setState(this.b);
        this.e.setLabel(this.d);
    }

    public int c() {
        return this.b;
    }

    public String d() {
        return this.d;
    }

    public cec e() {
        return this.e;
    }

    protected static String a(cea cea, int i) {
        return i > 0 ? t.a(cea.b, (long) i, true) : null;
    }
}
