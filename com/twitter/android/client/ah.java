package com.twitter.android.client;

import android.net.Uri.Builder;
import com.twitter.config.a;

/* compiled from: Twttr */
public class ah {
    private final Builder a;

    public ah() {
        this.a = new Builder();
        this.a.scheme("notification").authority(a.a());
    }

    public ah a(long j) {
        return a("user_id", j);
    }

    public ah a(String str, long j) {
        this.a.appendQueryParameter(str, Long.toString(j));
        return this;
    }

    public String toString() {
        return this.a.toString();
    }
}
