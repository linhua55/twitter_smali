package com.twitter.android.dialog;

import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import com.twitter.app.common.base.e;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class m<T extends m<T>> extends e<T> {
    protected m(int i) {
        super(i);
    }

    public T a(@DrawableRes int i) {
        this.a.putInt("twitter:icon", i);
        return (m) ObjectUtils.a((Object) this);
    }

    public T b(@StringRes int i) {
        this.a.putInt("twitter:title", i);
        return (m) ObjectUtils.a((Object) this);
    }

    public T a(CharSequence charSequence) {
        this.a.putString("twitter:title_string", charSequence.toString());
        return (m) ObjectUtils.a((Object) this);
    }

    public T b(CharSequence charSequence) {
        this.a.putString("twitter:message_string", charSequence.toString());
        return (m) ObjectUtils.a((Object) this);
    }

    public T c(@StringRes int i) {
        this.a.putInt("twitter:positive_button", i);
        return (m) ObjectUtils.a((Object) this);
    }

    public T c(CharSequence charSequence) {
        this.a.putString("twitter:positive_button_string", charSequence.toString());
        return (m) ObjectUtils.a((Object) this);
    }

    public T d(@StringRes int i) {
        this.a.putInt("twitter:negative_button", i);
        return (m) ObjectUtils.a((Object) this);
    }

    public T d(CharSequence charSequence) {
        this.a.putString("twitter:negative_button_string", charSequence.toString());
        return (m) ObjectUtils.a((Object) this);
    }
}
