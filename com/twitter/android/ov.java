package com.twitter.android;

import android.os.Bundle;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;

/* compiled from: Twttr */
public class ov extends h {
    public /* synthetic */ i e() {
        return a();
    }

    public /* synthetic */ com.twitter.app.common.base.h f() {
        return a();
    }

    protected ov(Bundle bundle) {
        super(bundle);
    }

    public static ov a(Bundle bundle) {
        return new ov(bundle);
    }

    public ow a() {
        return new ow(this);
    }

    public int b() {
        return this.b.getInt("search_type", 0);
    }

    public boolean c() {
        return this.b.getBoolean("recent");
    }

    public long d() {
        return this.b.getLong("search_id");
    }
}
