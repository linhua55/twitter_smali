package com.twitter.app.common.list;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.StringRes;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.h;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class i<T extends i<T>> extends h<T> {
    public /* synthetic */ g c() {
        return b();
    }

    protected i() {
    }

    protected i(Bundle bundle) {
        super(bundle);
    }

    protected i(h hVar) {
        super((g) hVar);
    }

    public T h(boolean z) {
        this.a.putBoolean("is_refreshable", z);
        return (i) ObjectUtils.a((Object) this);
    }

    public T c(long j) {
        this.a.putLong("owner_id", j);
        return (i) ObjectUtils.a((Object) this);
    }

    public T b(@StringRes int i) {
        this.a.putInt("empty_title_res_id", i);
        return (i) ObjectUtils.a((Object) this);
    }

    public T c(@StringRes int i) {
        this.a.putInt("empty_description_res_id", i);
        return (i) ObjectUtils.a((Object) this);
    }

    public T d(@IdRes int i) {
        this.a.putInt("list_inflated_id", i);
        return (i) ObjectUtils.a((Object) this);
    }

    public T e(int i) {
        this.a.putInt("shim_height", i);
        return (i) ObjectUtils.a((Object) this);
    }

    public T f(int i) {
        this.a.putInt("list_bottom_extra_padding", i);
        return (i) ObjectUtils.a((Object) this);
    }

    public T i(boolean z) {
        this.a.putBoolean("is_horizontal_padding_enabled", z);
        return (i) ObjectUtils.a((Object) this);
    }

    public h b() {
        return new h(this.a);
    }
}
