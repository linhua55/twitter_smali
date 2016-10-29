package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@TargetApi(11)
@oi
public class tu extends ta {
    public tu(sz szVar, boolean z) {
        super(szVar, z);
    }

    protected WebResourceResponse a(Context context, String str, String str2) throws IOException, ExecutionException, InterruptedException, TimeoutException {
        Map hashMap = new HashMap();
        hashMap.put("User-Agent", ar.e().a(context, str));
        hashMap.put("Cache-Control", "max-stale=3600");
        String str3 = (String) new rr(context).a(str2, hashMap).get(60, TimeUnit.SECONDS);
        return str3 == null ? null : new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
    }

    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        Exception e;
        try {
            if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
                return super.shouldInterceptRequest(webView, str);
            }
            if (webView instanceof sz) {
                sz szVar = (sz) webView;
                szVar.l().g();
                String str2 = szVar.k().e ? (String) cj.F.c() : szVar.p() ? (String) cj.E.c() : (String) cj.D.c();
                qd.e("shouldInterceptRequest(" + str2 + ")");
                return a(szVar.getContext(), this.a.o().b, str2);
            }
            b.d("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return super.shouldInterceptRequest(webView, str);
        } catch (IOException e2) {
            e = e2;
            b.d("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        } catch (ExecutionException e3) {
            e = e3;
            b.d("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        } catch (InterruptedException e4) {
            e = e4;
            b.d("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        } catch (TimeoutException e5) {
            e = e5;
            b.d("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        }
    }
}
