package com.twitter.android.periscope;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.c;
import java.util.Map;

/* compiled from: Twttr */
class k implements c {
    final /* synthetic */ Map a;
    final /* synthetic */ j b;

    k(j jVar, Map map) {
        this.b = jVar;
        this.a = map;
    }

    public void a(ImageResponse imageResponse) {
        this.a.put(((a) imageResponse.e()).a(), imageResponse.f());
    }
}
