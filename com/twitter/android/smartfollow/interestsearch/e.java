package com.twitter.android.smartfollow.interestsearch;

import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.app.common.base.g;

/* compiled from: Twttr */
public class e extends g {
    protected e(Bundle bundle) {
        super(bundle);
    }

    public static e a(Bundle bundle) {
        return new e(bundle);
    }

    public long a() {
        return this.b.getLong("parent_id");
    }

    public String b() {
        String string = this.b.getString("scribe_page");
        return string != null ? string : BuildConfig.VERSION_NAME;
    }
}
