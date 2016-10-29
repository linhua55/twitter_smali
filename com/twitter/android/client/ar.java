package com.twitter.android.client;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.twitter.android.WebViewActivity;
import com.twitter.config.d;
import java.io.Serializable;
import java.util.HashMap;

/* compiled from: Twttr */
class ar extends p {
    private final Context a;
    private final String b;

    ar(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    public void a() {
        Serializable hashMap = new HashMap(3);
        hashMap.put("url", OpenUriHelper.a(this.b));
        hashMap.put("onerr", "1");
        hashMap.put("format", "html");
        this.a.startActivity(new Intent(this.a, WebViewActivity.class).setData(Uri.parse(d.b("readability_v2_proxy_uri"))).putExtra("com.twitter.android.EXTRA_POST_PARAMS", hashMap));
    }

    public int b() {
        return 1;
    }
}
