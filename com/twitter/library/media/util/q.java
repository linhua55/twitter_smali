package com.twitter.library.media.util;

import cgl;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.dms.x;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class q {
    public static b a(MediaEntity mediaEntity) {
        b a = a.a(mediaEntity.l).a(mediaEntity.n);
        if (mediaEntity.m == Type.c) {
            a.a(DmAndAnimatedGifImageVariant.e);
        } else {
            a.a(TweetImageVariant.g);
        }
        return a;
    }

    public static b a(x xVar) {
        return a.a(xVar.j(), xVar.k(), xVar.l()).a(DmAndAnimatedGifImageVariant.e);
    }

    public static b a(cgl cgl) {
        ImageSpec r = cgl.r();
        return r != null ? a.a(r.c, Size.a(r.d.x, r.d.y)) : null;
    }
}
