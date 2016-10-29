package com.twitter.android.businessprofiles.gallery;

import cgl;
import com.twitter.android.jx;
import com.twitter.library.media.util.q;
import com.twitter.media.request.b;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class c implements jx {
    public final long a;
    public final Tweet b;
    public final MediaEntity c;
    public cgl d;

    public float a() {
        if (this.d != null) {
            ImageSpec r = this.d.r();
            if (r != null) {
                return Size.a(r.d.x, r.d.y).e();
            }
        } else if (this.c != null) {
            return this.c.n.e();
        }
        return 0.0f;
    }

    public b b() {
        if (this.d != null) {
            return q.a(this.d);
        }
        if (this.c != null) {
            return q.a(this.c);
        }
        return null;
    }

    public long c() {
        return this.a;
    }

    public Tweet d() {
        return this.b;
    }

    public MediaEntity e() {
        return this.c;
    }
}
