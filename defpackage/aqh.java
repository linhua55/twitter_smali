package defpackage;

import com.twitter.app.common.app.l;
import com.twitter.app.tweetdetails.internal.a;
import com.twitter.app.tweetdetails.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
/* renamed from: aqh */
public final class aqh {
    private c a;
    private l b;

    private aqh() {
    }

    public arb a() {
        if (this.a == null) {
            throw new IllegalStateException(c.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new aqf();
        } else {
            throw new IllegalStateException(l.class.getCanonicalName() + " must be set");
        }
    }

    public aqh a(c cVar) {
        this.a = (c) d.a(cVar);
        return this;
    }

    @Deprecated
    public aqh a(a aVar) {
        d.a(aVar);
        return this;
    }

    public aqh a(l lVar) {
        this.b = (l) d.a(lVar);
        return this;
    }
}
