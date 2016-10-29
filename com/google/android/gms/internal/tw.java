package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bj;
import java.net.URI;
import java.net.URISyntaxException;

@oi
public class tw extends WebViewClient {
    private final String a;
    private boolean b;
    private final sz c;
    private final nj d;

    public tw(nj njVar, sz szVar, String str) {
        this.a = b(str);
        this.b = false;
        this.c = szVar;
        this.d = njVar;
    }

    private String b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (str.endsWith("/")) {
                    str = str.substring(0, str.length() - 1);
                }
            } catch (IndexOutOfBoundsException e) {
                b.b(e.getMessage());
            }
        }
        return str;
    }

    protected boolean a(String str) {
        Object b = b(str);
        if (TextUtils.isEmpty(b)) {
            return false;
        }
        try {
            URI uri = new URI(b);
            if ("passback".equals(uri.getScheme())) {
                b.a("Passback received");
                this.d.b();
                return true;
            } else if (TextUtils.isEmpty(this.a)) {
                return false;
            } else {
                URI uri2 = new URI(this.a);
                String host = uri2.getHost();
                String host2 = uri.getHost();
                String path = uri2.getPath();
                String path2 = uri.getPath();
                if (!bj.a(host, host2) || !bj.a(path, path2)) {
                    return false;
                }
                b.a("Passback received");
                this.d.b();
                return true;
            }
        } catch (URISyntaxException e) {
            b.b(e.getMessage());
            return false;
        }
    }

    public void onLoadResource(WebView webView, String str) {
        b.a("JavascriptAdWebViewClient::onLoadResource: " + str);
        if (!a(str)) {
            this.c.l().onLoadResource(this.c.a(), str);
        }
    }

    public void onPageFinished(WebView webView, String str) {
        b.a("JavascriptAdWebViewClient::onPageFinished: " + str);
        if (!this.b) {
            this.d.a();
            this.b = true;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        b.a("JavascriptAdWebViewClient::shouldOverrideUrlLoading: " + str);
        if (!a(str)) {
            return this.c.l().shouldOverrideUrlLoading(this.c.a(), str);
        }
        b.a("shouldOverrideUrlLoading: received passback url");
        return true;
    }
}
