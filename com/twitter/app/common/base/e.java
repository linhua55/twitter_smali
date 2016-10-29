package com.twitter.app.common.base;

import android.os.Bundle;
import android.support.v4.app.Fragment.InstantiationException;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class e<T extends e<T>> {
    protected final Bundle a;
    private int b;

    public e(Bundle bundle) {
        this.a = bundle != null ? new Bundle(bundle) : new Bundle();
    }

    public e(d dVar) {
        this(dVar.b);
    }

    public e(int i) {
        this.a = new Bundle();
        this.a.putInt("twitter:id", i);
    }

    public d d() {
        return new d(this.a);
    }

    public T e() {
        this.a.putInt("twitter:forward_events", this.a.getInt("twitter:forward_events") | 1);
        return (e) ObjectUtils.a((Object) this);
    }

    public T f() {
        this.a.putInt("twitter:forward_events", this.a.getInt("twitter:forward_events") | 2);
        return (e) ObjectUtils.a((Object) this);
    }

    public T g() {
        this.a.putInt("twitter:forward_events", this.a.getInt("twitter:forward_events") | 4);
        return (e) ObjectUtils.a((Object) this);
    }

    public T i(int i) {
        this.b = i;
        return (e) ObjectUtils.a((Object) this);
    }

    protected void h() {
        if (!this.a.containsKey("twitter:id")) {
            throw new InstantiationException("Missing fragment id", null);
        }
    }

    protected BaseDialogFragment c() {
        return new BaseDialogFragment();
    }

    public final <F extends BaseDialogFragment> F i() {
        h();
        Object c = c();
        c.setArguments(this.a);
        if (this.b != 0) {
            c.setStyle(0, this.b);
        }
        return (BaseDialogFragment) ObjectUtils.a(c);
    }
}
