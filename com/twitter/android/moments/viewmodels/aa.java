package com.twitter.android.moments.viewmodels;

import com.twitter.library.av.playback.be;
import com.twitter.media.request.b;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.q;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class aa implements f {
    private final q a;

    public aa(q qVar) {
        this.a = qVar;
    }

    public b a() {
        MediaEntity p = this.a.p();
        if (p != null) {
            return com.twitter.library.media.util.q.a(p);
        }
        return new b(a(this.a));
    }

    public Size b() {
        MediaEntity p = this.a.p();
        if (p != null) {
            return p.n;
        }
        return (Size) e.b(b(this.a), Size.b);
    }

    public k c() {
        return this.a.b;
    }

    private static String a(q qVar) {
        Tweet n = qVar.n();
        if (n != null) {
            ImageSpec o = be.o(n);
            if (o != null) {
                return o.c;
            }
        }
        return null;
    }

    private static Size b(q qVar) {
        Tweet n = qVar.n();
        if (n != null) {
            ImageSpec o = be.o(n);
            if (o != null) {
                return Size.a(o.d.x, o.d.y);
            }
        }
        return null;
    }
}
