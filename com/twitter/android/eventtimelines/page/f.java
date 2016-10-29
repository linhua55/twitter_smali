package com.twitter.android.eventtimelines.page;

import android.net.Uri;
import android.support.annotation.StringRes;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.library.scribe.TwitterScribeItem;

/* compiled from: Twttr */
public class f {
    public Uri a;
    public String b;
    public String c;
    public String d;
    public String e;
    public int f;
    public Class<? extends BaseFragment> g;
    public String h;
    public String i;
    public TwitterScribeItem j;
    @StringRes
    public int k;
    public int l;

    public f a(Uri uri) {
        this.a = uri;
        return this;
    }

    public f a(String str) {
        this.d = str;
        return this;
    }

    public f a(int i) {
        this.f = i;
        return this;
    }

    public f a(Class<? extends BaseFragment> cls) {
        this.g = cls;
        return this;
    }

    public f b(String str) {
        this.h = str;
        return this;
    }

    public f c(String str) {
        this.i = str;
        return this;
    }

    public f a(TwitterScribeItem twitterScribeItem) {
        this.j = twitterScribeItem;
        return this;
    }

    public f b(@StringRes int i) {
        this.k = i;
        return this;
    }

    public f c(int i) {
        this.l = i;
        return this;
    }

    public f d(String str) {
        this.b = str;
        return this;
    }

    public f e(String str) {
        this.c = str;
        return this;
    }
}
