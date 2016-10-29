package com.twitter.android.browser;

import android.content.Context;
import android.net.Uri;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.p;

/* compiled from: Twttr */
class f extends p {
    private final Context a;
    private final String b;

    f(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    public void a() {
        OpenUriHelper.a(this.a, Uri.parse(this.b));
    }

    public int b() {
        return 1;
    }
}
