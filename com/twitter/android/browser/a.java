package com.twitter.android.browser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.LruCache;
import android.util.Pair;
import android.view.Window;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.Toast;
import cad;
import cau;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.o;
import com.twitter.android.composer.aw;
import com.twitter.android.dm.m;
import com.twitter.android.dm.r;
import com.twitter.app.common.base.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.ax;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.WebsiteAssetsLog;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;
import com.twitter.util.ao;
import com.twitter.util.n;
import defpackage.bdj;
import defpackage.caw;
import defpackage.cgl;
import defpackage.cmb;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
public class a {
    private static final LruCache<String, Pair<List<String>, Long>> e;
    protected WebsiteAssetsLog a;
    protected String b;
    protected String c;
    protected WebView d;
    private ProgressBar f;
    private final g g;
    private final h h;
    private final Context i;
    private long j;
    private long k;
    private long l;
    private int m;
    private boolean n;
    private boolean o;
    private ax p;
    private List<String> q;
    private final AtomicInteger r;
    private int s;

    static {
        e = new LruCache(20);
    }

    a(g gVar, h hVar) {
        this.r = new AtomicInteger(0);
        this.s = 0;
        this.g = gVar;
        this.h = hVar;
        this.i = gVar.f();
    }

    public void a(WebView webView, ProgressBar progressBar) {
        this.d = webView;
        this.f = progressBar;
    }

    public void a(t tVar, Window window) {
        window.requestFeature(2);
        tVar.b(12);
        tVar.d(true);
        tVar.d(h());
        tVar.c(false);
        tVar.b(false);
        tVar.a(false);
    }

    protected void a(Bundle bundle) {
        bundle.putString("url", this.b);
    }

    protected void a() {
        long j = 0;
        if (!this.n) {
            if (this.j != 0) {
                j = SystemClock.elapsedRealtime() - this.j;
            }
            this.h.a(j);
            this.h.a(PromotedEvent.CLOSE_WEBVIEW);
            this.h.a(j, (long) this.r.get());
            this.n = true;
        }
    }

    protected void b() {
        this.d.stopLoading();
        this.d.destroy();
    }

    void c() {
        if (this.d.canGoBack()) {
            this.d.goBack();
        } else {
            d();
        }
    }

    void d() {
        if (this.p != null) {
            this.p.cancel(true);
        }
        k();
        this.g.c();
    }

    protected void a(w wVar) {
        this.g.a(2131362928);
        wVar.a(2132017180);
    }

    public void a(Bundle bundle, Intent intent) {
        boolean d;
        int i = 0;
        Uri data = intent.getData();
        if (bundle == null) {
            this.b = data.toString();
            d = ao.d(data);
        } else {
            this.b = bundle.getString("url");
            boolean z = this.b != null && ao.d(Uri.parse(this.b));
            d = z;
        }
        this.c = this.b;
        this.a = a((Tweet) intent.getParcelableExtra("tweet"));
        WebSettings settings = this.d.getSettings();
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setDomStorageEnabled(true);
        settings.setPluginState(PluginState.OFF);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setUserAgentString(i.a(this.i));
        if (this.g.e()) {
            settings.setDisplayZoomControls(false);
        }
        this.d.setWebChromeClient(new b(this, this.f));
        this.d.setWebViewClient(new c(this));
        this.d.setOnTouchListener(new d(this));
        if (d) {
            this.q = new LinkedList();
        }
        if (d) {
            List c = c(this.b);
            if (c != null) {
                i = c.size();
            }
            if (i > 0) {
                this.m = i - 1;
                this.d.loadUrl((String) c.get(i - 1));
            } else {
                this.l = SystemClock.elapsedRealtime();
                this.p = (ax) new ax(this.i, bg.a().c(), this.b).a(new e(this.i, this));
                az.a(this.i).a(this.p);
            }
        } else {
            this.d.loadUrl(this.b);
        }
        this.h.a("native_browser_open");
        f();
    }

    private WebsiteAssetsLog a(Tweet tweet) {
        String str = null;
        if (tweet == null || !tweet.q()) {
            return null;
        }
        cgl aa = tweet.aa();
        if (aa == null) {
            return null;
        }
        cmb N = aa.N();
        if (N == null) {
            return null;
        }
        Map a = cau.a("_card_data", N);
        if (a != null) {
            str = (String) a.get("card_url");
        }
        a = cad.a("_card_data", N);
        return new WebsiteAssetsLog(caw.a("website_url", N), caw.a("website_dest_url", N), caw.a("website_assets", N), str, (long) (a != null ? ((Integer) a.get("card_id")).intValue() : 0), tweet.f.c);
    }

    public boolean a(ac acVar) {
        switch (acVar.a()) {
            case 2131951913:
                aq.a(this.i, this.b, false);
                this.h.a("share");
                break;
            case 2131952943:
                openBrowser();
                this.h.a("open_in_browser");
                break;
            case 2131953465:
                j();
                this.h.a("share_via_tweet");
                break;
            case 2131953466:
                i();
                this.h.a("share_tweet_privately");
                break;
            case 2131953467:
                aq.a(this.i, this.b);
                Toast.makeText(this.i, 2131362329, 1).show();
                this.h.a("copy_link");
                break;
            default:
                return true;
        }
        return false;
    }

    private void i() {
        this.g.a(r.a(this.i, ((m) ((m) new m().a("\n" + this.b)).d(true).a(true)).d()));
    }

    private void j() {
        this.g.a(aw.a().a('\n' + this.b, null).a(this.i));
    }

    void openBrowser() {
        o fVar = new f(this.i, this.b);
        if (bdj.a(this.i).g()) {
            OpenUriHelper.a(this.i, fVar);
        } else {
            fVar.a();
        }
    }

    WebResourceResponse a(String str) {
        if (this.a != null) {
            String b = i.b(str);
            if (!("javascript".equals(b) || i.c(str))) {
                this.a.a(str, 0, 0, b, false);
            }
        }
        return null;
    }

    void b(String str) {
        long j = 0;
        if (str != null) {
            Uri parse = Uri.parse(str);
            boolean z = parse != null && "data".equals(parse.getScheme());
            if (!(this.o || z || ao.d(parse))) {
                long elapsedRealtime;
                this.o = true;
                long j2 = this.l != 0 ? this.l : this.j;
                if (j2 != 0) {
                    elapsedRealtime = SystemClock.elapsedRealtime() - j2;
                } else {
                    elapsedRealtime = 0;
                }
                if (this.k > 0 && j2 > 0) {
                    j = this.k - j2;
                }
                Map hashMap = new HashMap();
                hashMap.put("redirects", Long.toString((long) this.s));
                hashMap.put("skipped_redirects", Integer.toString(this.m));
                hashMap.put("pre_load_duration", Long.toString(j));
                hashMap.put("request_count", Integer.toString(this.r.get()));
                hashMap.put("original_url", this.c);
                this.h.a(elapsedRealtime, hashMap);
                if (this.a != null) {
                    this.h.a(this.a);
                }
                k();
                g();
            }
        }
        this.f.setVisibility(8);
    }

    private void k() {
        if (this.q != null && this.m == 0) {
            this.h.a(this.c, this.q);
        }
        this.q = null;
    }

    void a(WebView webView, String str) {
        if (this.q != null) {
            this.q.add(str);
        }
        if (this.j == 0) {
            this.j = SystemClock.elapsedRealtime();
        } else {
            this.s++;
            this.r.set(0);
        }
        this.k = SystemClock.elapsedRealtime();
        if (!this.o) {
            this.h.a();
        }
        this.b = str;
        this.f.setVisibility(0);
        if (!OpenUriHelper.a(this.i, this.b)) {
            webView.stopLoading();
            if (n.b(this.b) || OpenUriHelper.b(this.i, Uri.parse(this.b))) {
                OpenUriHelper.a(this.i, Uri.parse(this.b));
                this.g.i();
                return;
            }
            com.twitter.util.ui.r.a(this.i, 2131362895);
        }
    }

    void e() {
        openBrowser();
        c();
    }

    protected void f() {
    }

    protected void g() {
    }

    protected int h() {
        return 2130969066;
    }

    private static void b(String str, List<String> list) {
        if (list != null && !list.isEmpty()) {
            e.put(str, Pair.create(list, Long.valueOf(SystemClock.elapsedRealtime())));
        }
    }

    private static List<String> c(String str) {
        Pair pair = (Pair) e.get(str);
        if (pair != null) {
            if (SystemClock.elapsedRealtime() - ((Long) pair.second).longValue() < 300000) {
                return (List) pair.first;
            }
            e.remove(str);
        }
        return null;
    }
}
