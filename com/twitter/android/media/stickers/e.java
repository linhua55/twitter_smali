package com.twitter.android.media.stickers;

import cjw;
import ctc;
import defpackage.cjs;
import defpackage.cjv;
import java.util.Map;

/* compiled from: Twttr */
class e implements ctc<cjs, cjv> {
    final /* synthetic */ Map a;
    final /* synthetic */ StickerMediaView b;

    e(StickerMediaView stickerMediaView, Map map) {
        this.b = stickerMediaView;
        this.a = map;
    }

    public cjv a(cjs cjs) {
        cjw cjw = (cjw) this.a.get(Long.valueOf(((cjs) com.twitter.util.object.e.a(cjs)).b));
        if (cjw != null) {
            return cjv.a(cjw.j, cjs, cjw.k);
        }
        return null;
    }
}
