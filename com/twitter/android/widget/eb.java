package com.twitter.android.widget;

import com.twitter.app.common.base.e;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class eb<T extends eb<T>> extends e<T> {
    protected eb(int i) {
        super(i);
    }

    public T a(int i) {
        this.a.putInt("title", i);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T a(String str) {
        this.a.putString("title_string", str);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T b(int i) {
        this.a.putInt("message", i);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T a(CharSequence charSequence) {
        this.a.putString("message_string", charSequence.toString());
        return (eb) ObjectUtils.a((Object) this);
    }

    public T c(int i) {
        this.a.putInt("items_resource", i);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T a(int[] iArr) {
        this.a.putIntArray("item_resource_ids", iArr);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T a(CharSequence[] charSequenceArr) {
        this.a.putCharSequenceArray("items", charSequenceArr);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T d(int i) {
        this.a.putInt("positive_button", i);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T e(int i) {
        this.a.putInt("neutral_button", i);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T f(int i) {
        this.a.putInt("negative_button", i);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T a(boolean z) {
        this.a.putBoolean("cancelable", z);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T g(int i) {
        this.a.putInt("view_id", i);
        return (eb) ObjectUtils.a((Object) this);
    }

    public T h(int i) {
        this.a.putInt("requested_permissions", i);
        return (eb) ObjectUtils.a((Object) this);
    }
}
