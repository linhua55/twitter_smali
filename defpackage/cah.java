package defpackage;

import android.content.res.Configuration;
import com.twitter.library.widget.tweet.content.f;

/* compiled from: Twttr */
/* renamed from: cah */
public abstract class cah implements f<cai> {
    private bzp a;

    protected bzp q() {
        return this.a;
    }

    protected void a(bzp bzp) {
        if (this.a == null || this.a.equals(bzp)) {
            this.a = bzp;
            return;
        }
        throw new IllegalStateException("The cache key has already been assigned");
    }

    public void al_() {
    }

    public void a(boolean z) {
    }

    public void b(boolean z) {
    }

    public void ak_() {
    }

    public void am_() {
    }

    public void a(Configuration configuration) {
    }
}
