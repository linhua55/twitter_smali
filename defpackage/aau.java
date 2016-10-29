package defpackage;

import com.twitter.config.c;
import com.twitter.media.request.b;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: aau */
public class aau extends aai {
    public aau(Tweet tweet, b bVar) {
        super(tweet, null, bVar, null);
    }

    public int b() {
        if (this.a.Q()) {
            return 3;
        }
        if (this.a.L()) {
            return 4;
        }
        return 2;
    }

    public boolean e() {
        return (this.a.O() || this.a.L()) ? false : true;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return !c.a("vine_fullscreen_4595", "enabled") && this.a.L();
    }
}
