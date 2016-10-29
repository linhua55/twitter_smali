package com.twitter.android.composer;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.scribe.ScribeItem;

/* compiled from: Twttr */
public class bf {
    private ScribeItem a;
    private String b;

    public bf() {
        this.a = null;
        this.b = BuildConfig.VERSION_NAME;
    }

    public bf a(ScribeItem scribeItem) {
        this.a = scribeItem;
        return this;
    }

    public bf a(String str) {
        this.b = str;
        return this;
    }

    public bd a() {
        return new bd();
    }
}
