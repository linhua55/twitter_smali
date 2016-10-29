package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.o;
import com.google.android.gms.ads.internal.overlay.q;
import com.google.android.gms.ads.internal.overlay.w;
import com.google.android.gms.ads.internal.util.client.b;
import com.twitter.android.mx;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@oi
public class ta extends WebViewClient {
    private static final String[] b;
    private static final String[] c;
    protected sz a;
    private final HashMap<String, List<fj>> d;
    private final Object e;
    private a f;
    private q g;
    private tc h;
    private eu i;
    private td j;
    private boolean k;
    private fr l;
    private ft m;
    private boolean n;
    private boolean o;
    private w p;
    private final lu q;
    private l r;
    private ll s;
    private lw t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;

    static {
        b = new String[]{"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
        c = new String[]{"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    }

    public ta(sz szVar, boolean z) {
        this(szVar, z, new lu(szVar, szVar.g(), new bw(szVar.getContext())), null);
    }

    ta(sz szVar, boolean z, lu luVar, ll llVar) {
        this.d = new HashMap();
        this.e = new Object();
        this.k = false;
        this.a = szVar;
        this.n = z;
        this.q = luVar;
        this.s = llVar;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return BuildConfig.VERSION_NAME;
        }
        Uri parse = Uri.parse(str);
        return parse.getHost() != null ? parse.getHost() : BuildConfig.VERSION_NAME;
    }

    private void a(Context context, String str, String str2, String str3) {
        if (((Boolean) cj.ao.c()).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString(NotificationCompatApi21.CATEGORY_ERROR, str);
            bundle.putString("code", str2);
            bundle.putString("host", a(str3));
            ar.e().a(context, this.a.o().b, "gmob-apps", bundle, true);
        }
    }

    private static boolean b(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    private void h() {
        synchronized (this.e) {
            this.o = true;
        }
        this.x++;
        e();
    }

    private void i() {
        this.x--;
        e();
    }

    private void j() {
        this.w = true;
        e();
    }

    public l a() {
        return this.r;
    }

    public void a(int i, int i2) {
        if (this.s != null) {
            this.s.c(i, i2);
        }
    }

    public void a(int i, int i2, boolean z) {
        this.q.a(i, i2);
        if (this.s != null) {
            this.s.a(i, i2, z);
        }
    }

    public void a(Uri uri) {
        String path = uri.getPath();
        List<fj> list = (List) this.d.get(path);
        if (list != null) {
            Map a = ar.e().a(uri);
            if (b.a(2)) {
                qd.e("Received GMSG: " + path);
                for (String path2 : a.keySet()) {
                    qd.e("  " + path2 + ": " + ((String) a.get(path2)));
                }
            }
            for (fj a2 : list) {
                a2.a(this.a, a);
            }
            return;
        }
        qd.e("No GMSG handler found for GMSG: " + uri);
    }

    public void a(a aVar, q qVar, eu euVar, w wVar, boolean z, fr frVar, ft ftVar, l lVar, lw lwVar) {
        if (lVar == null) {
            lVar = new l(false);
        }
        this.s = new ll(this.a, lwVar);
        a("/appEvent", new et(euVar));
        a("/backButton", ex.k);
        a("/canOpenURLs", ex.b);
        a("/canOpenIntents", ex.c);
        a("/click", ex.d);
        a("/close", ex.e);
        a("/customClose", ex.g);
        a("/instrument", ex.n);
        a("/delayPageLoaded", new tf(this, null));
        a("/httpTrack", ex.h);
        a("/log", ex.i);
        a("/mraid", new fv(lVar, this.s));
        a("/mraidLoaded", this.q);
        a("/open", new fw(frVar, lVar, this.s));
        a("/precache", ex.m);
        a("/touch", ex.j);
        a("/video", ex.l);
        a("/appStreaming", ex.f);
        if (ftVar != null) {
            a("/setInterstitialProperties", new fs(ftVar));
        }
        this.f = aVar;
        this.g = qVar;
        this.i = euVar;
        this.l = frVar;
        this.p = wVar;
        this.r = lVar;
        this.t = lwVar;
        this.m = ftVar;
        a(z);
    }

    public final void a(AdLauncherIntentInfoParcel adLauncherIntentInfoParcel) {
        q qVar = null;
        boolean p = this.a.p();
        a aVar = (!p || this.a.k().e) ? this.f : null;
        if (!p) {
            qVar = this.g;
        }
        a(new AdOverlayInfoParcel(adLauncherIntentInfoParcel, aVar, qVar, this.p, this.a.o()));
    }

    public void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z = false;
        boolean b = this.s != null ? this.s.b() : false;
        o c = ar.c();
        Context context = this.a.getContext();
        if (!b) {
            z = true;
        }
        c.a(context, adOverlayInfoParcel, z);
    }

    public void a(sz szVar) {
        this.a = szVar;
    }

    public void a(tc tcVar) {
        this.h = tcVar;
    }

    public void a(td tdVar) {
        this.j = tdVar;
    }

    public void a(String str, fj fjVar) {
        synchronized (this.e) {
            List list = (List) this.d.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList();
                this.d.put(str, list);
            }
            list.add(fjVar);
        }
    }

    public void a(boolean z) {
        this.k = z;
    }

    public final void a(boolean z, int i) {
        a aVar = (!this.a.p() || this.a.k().e) ? this.f : null;
        a(new AdOverlayInfoParcel(aVar, this.g, this.p, this.a, z, i, this.a.o()));
    }

    public final void a(boolean z, int i, String str) {
        q qVar = null;
        boolean p = this.a.p();
        a aVar = (!p || this.a.k().e) ? this.f : null;
        if (!p) {
            qVar = new te(this.a, this.g);
        }
        a(new AdOverlayInfoParcel(aVar, qVar, this.i, this.p, this.a, z, i, str, this.a.o(), this.l));
    }

    public final void a(boolean z, int i, String str, String str2) {
        boolean p = this.a.p();
        a aVar = (!p || this.a.k().e) ? this.f : null;
        a(new AdOverlayInfoParcel(aVar, p ? null : new te(this.a, this.g), this.i, this.p, this.a, z, i, str, str2, this.a.o(), this.l));
    }

    public void b(String str, fj fjVar) {
        synchronized (this.e) {
            List list = (List) this.d.get(str);
            if (list == null) {
                return;
            }
            list.remove(fjVar);
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this.e) {
            z = this.n;
        }
        return z;
    }

    public boolean c() {
        boolean z;
        synchronized (this.e) {
            z = this.o;
        }
        return z;
    }

    public void d() {
        synchronized (this.e) {
            qd.e("Loading blank page in WebView, 2...");
            this.u = true;
            this.a.a("about:blank");
        }
    }

    public final void e() {
        if (this.h != null && ((this.v && this.x <= 0) || this.w)) {
            this.h.a(this.a, !this.w);
            this.h = null;
        }
        this.a.z();
    }

    public final void f() {
        synchronized (this.e) {
            this.d.clear();
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.k = false;
            this.n = false;
            this.o = false;
            this.l = null;
            this.p = null;
            this.j = null;
            if (this.s != null) {
                this.s.a(true);
                this.s = null;
            }
        }
    }

    public final void g() {
        synchronized (this.e) {
            this.k = false;
            this.n = true;
            qw.a(new tb(this));
        }
    }

    public final void onLoadResource(WebView webView, String str) {
        qd.e("Loading resource: " + str);
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            a(parse);
        }
    }

    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.e) {
            if (this.u) {
                qd.e("Blank page loaded, 1...");
                this.a.s();
                return;
            }
            this.v = true;
            e();
        }
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        String valueOf = (i >= 0 || (-i) - 1 >= b.length) ? String.valueOf(i) : b[(-i) - 1];
        a(this.a.getContext(), "http_err", valueOf, str2);
        super.onReceivedError(webView, i, str, str2);
    }

    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError != null) {
            int primaryError = sslError.getPrimaryError();
            String valueOf = (primaryError < 0 || primaryError >= c.length) ? String.valueOf(primaryError) : c[primaryError];
            a(this.a.getContext(), "ssl_err", valueOf, ar.g().a(sslError));
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            case mx.AppCompatTheme_panelMenuListWidth /*79*/:
            case mx.AppCompatTheme_colorControlNormal /*85*/:
            case mx.AppCompatTheme_colorControlActivated /*86*/:
            case mx.AppCompatTheme_colorControlHighlight /*87*/:
            case mx.AppCompatTheme_colorButtonNormal /*88*/:
            case mx.AppCompatTheme_colorSwitchThumbNormal /*89*/:
            case mx.AppCompatTheme_controlBackground /*90*/:
            case mx.AppCompatTheme_alertDialogStyle /*91*/:
            case TransportMediator.KEYCODE_MEDIA_PLAY /*126*/:
            case TransportMediator.KEYCODE_MEDIA_PAUSE /*127*/:
            case AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS /*128*/:
            case 129:
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
            case 222:
                return true;
            default:
                return false;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        qd.e("AdWebView shouldOverrideUrlLoading: " + str);
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            a(parse);
        } else if (this.k && webView == this.a.a() && b(parse)) {
            if (this.f != null && ((Boolean) cj.W.c()).booleanValue()) {
                this.f.e();
                this.f = null;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        } else if (this.a.a().willNotDraw()) {
            b.d("AdWebView unable to handle URL: " + str);
        } else {
            Uri uri;
            try {
                y n = this.a.n();
                if (n != null && n.b(parse)) {
                    parse = n.a(parse, this.a.getContext());
                }
                uri = parse;
            } catch (zzao e) {
                b.d("Unable to append parameter to URL: " + str);
                uri = parse;
            }
            if (this.r == null || this.r.b()) {
                a(new AdLauncherIntentInfoParcel("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
            } else {
                this.r.a(str);
            }
        }
        return true;
    }
}
