package defpackage;

import ces;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: cet */
public class cet extends cer {
    public final boolean c;

    private cet(ces ces, Tweet tweet, boolean z) {
        super(ces, tweet);
        this.c = z;
    }

    public static cet a(ces ces, Tweet tweet, boolean z) {
        return new cet(ces, tweet, z);
    }

    public long a() {
        return this.a.t;
    }

    public long b() {
        return this.a.s;
    }

    public String c() {
        return this.a.v;
    }
}
