package defpackage;

import com.twitter.library.av.playback.be;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: bpu */
public class bpu implements bps {
    private final Tweet b;

    public bpu(Tweet tweet) {
        this.b = tweet;
    }

    public String a() {
        return be.r(this.b);
    }

    public String b() {
        return be.t(this.b);
    }

    public long c() {
        return be.u(this.b);
    }
}
