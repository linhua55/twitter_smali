package com.twitter.android.smartfollow.interestsearch;

import com.twitter.app.common.base.g;
import com.twitter.app.common.base.h;

/* compiled from: Twttr */
public class f extends h<f> {
    public /* synthetic */ g c() {
        return a();
    }

    public f a(long j) {
        this.a.putLong("parent_id", j);
        return this;
    }

    public f a(String str) {
        this.a.putString("scribe_page", str);
        return this;
    }

    public e a() {
        return new e(this.a);
    }
}
