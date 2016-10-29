package com.twitter.android.media.stickers.timeline;

import android.os.Bundle;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;

/* compiled from: Twttr */
public class f extends h {
    public /* synthetic */ i e() {
        return a();
    }

    public /* synthetic */ com.twitter.app.common.base.h f() {
        return a();
    }

    protected f(Bundle bundle) {
        super(bundle);
    }

    public static f a(Bundle bundle) {
        return new f(bundle);
    }

    public g a() {
        return new g(this);
    }

    public String b() {
        return this.b.getString("query");
    }

    public long c() {
        return this.b.getLong("sticker_id");
    }

    public long d() {
        return com.twitter.android.media.stickers.i.a(c());
    }

    public boolean g() {
        return this.b.getBoolean("recent");
    }
}
