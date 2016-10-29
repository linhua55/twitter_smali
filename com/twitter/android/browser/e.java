package com.twitter.android.browser;

import android.content.Context;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.twitter.library.api.ax;
import com.twitter.library.client.az;
import com.twitter.library.service.ac;
import com.twitter.util.collection.ImmutableList;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: Twttr */
public class e extends ac<Bundle, ax> {
    private final Context a;
    private final WeakReference<a> b;

    public e(Context context, a aVar) {
        this.a = context;
        this.b = new WeakReference(aVar);
    }

    public void a(ax axVar) {
        a aVar = (a) this.b.get();
        if (!(aVar == null || axVar.isCancelled())) {
            WebView webView = aVar.d;
            if (webView != null) {
                String s = axVar.s();
                List g = axVar.g();
                int size = g != null ? g.size() : 0;
                String h = axVar.h();
                if (size > 1) {
                    h = (String) g.get(size - 1);
                    WebSettings settings = webView.getSettings();
                    az.a(this.a).a(new l(s, g, settings != null ? settings.getUserAgentString() : TtmlNode.ANONYMOUS_REGION_ID));
                    a.a(aVar, size - 1);
                    a.a(s, g);
                } else if (h != null) {
                    a.a(s, ImmutableList.a(new String[]{h}));
                } else {
                    h = s;
                }
                webView.loadUrl(h);
            }
        }
        if (aVar != null && a.e(aVar) == axVar) {
            a.a(aVar, null);
        }
    }
}
