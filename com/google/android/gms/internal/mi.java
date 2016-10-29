package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@oi
public class mi implements mf {
    final Set<WebView> a;
    private final Context b;

    public mi(Context context) {
        this.a = Collections.synchronizedSet(new HashSet());
        this.b = context;
    }

    public WebView a() {
        WebView webView = new WebView(this.b);
        webView.getSettings().setJavaScriptEnabled(true);
        return webView;
    }

    public void a(String str, String str2, String str3) {
        b.a("Fetching assets for the given html");
        qw.a.post(new mj(this, str2, str3));
    }
}
