package com.twitter.app.lists;

import android.os.Bundle;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;

/* compiled from: Twttr */
public class g extends h {
    public /* synthetic */ i e() {
        return a();
    }

    public /* synthetic */ com.twitter.app.common.base.h f() {
        return a();
    }

    protected g(Bundle bundle) {
        super(bundle);
    }

    public static g a(Bundle bundle) {
        return new g(bundle);
    }

    public h a() {
        return new h(this);
    }

    public boolean b() {
        return this.b.getBoolean("is_me", false);
    }

    public boolean c() {
        return this.b.getBoolean("force_restart", false);
    }

    public String d() {
        return this.b.getString("screen_name");
    }

    public boolean g() {
        return this.b.getBoolean("is_pick_list", false);
    }
}
