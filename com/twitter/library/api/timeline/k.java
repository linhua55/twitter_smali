package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class k extends l {
    private final int a;
    private final long b;

    public k(Context context, ab abVar, Tweet tweet) {
        super(context, k.class.getName(), abVar, tweet.t, tweet.ag);
        this.a = tweet.Q;
        this.b = tweet.P;
    }

    protected boolean b(aa aaVar) {
        e b = b();
        a(this.a, new long[]{this.b}, b);
        b.a();
        return true;
    }

    e b() {
        return T();
    }

    int a(int i, long[] jArr, e eVar) {
        return S().a(i, jArr, eVar);
    }
}
