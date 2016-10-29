package com.twitter.android.dm;

import android.os.Bundle;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.i;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class c<U extends c<U>> extends i<U> {
    public /* synthetic */ h b() {
        return a();
    }

    public /* synthetic */ g c() {
        return a();
    }

    protected c() {
    }

    protected c(Bundle bundle, int i) {
        super(bundle);
        this.a.putInt("intent_type", i);
    }

    public U a(boolean z) {
        this.a.putBoolean("is_keyboard_open", z);
        return (c) ObjectUtils.a((Object) this);
    }

    public U b(boolean z) {
        this.a.putBoolean("is_from_external_url", z);
        return (c) ObjectUtils.a((Object) this);
    }

    public U a(String str) {
        this.a.putString("intial_text", str);
        return (c) ObjectUtils.a((Object) this);
    }

    public b a() {
        return new b(this.a);
    }
}
