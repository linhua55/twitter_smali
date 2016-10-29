package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v7.recyclerview.BuildConfig;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@oi
class ti extends WebView implements OnGlobalLayoutListener, DownloadListener, sz {
    private int A;
    private Map<String, gf> B;
    private final WindowManager C;
    private final tk a;
    private final Object b;
    private final y c;
    private final VersionInfoParcel d;
    private final k e;
    private ta f;
    private zzd g;
    private AdSizeParcel h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private Boolean m;
    private int n;
    private boolean o;
    private String p;
    private cu q;
    private cu r;
    private cu s;
    private cx t;
    private WeakReference<OnClickListener> u;
    private zzd v;
    private sf w;
    private int x;
    private int y;
    private int z;

    protected ti(tk tkVar, AdSizeParcel adSizeParcel, boolean z, boolean z2, y yVar, VersionInfoParcel versionInfoParcel, cy cyVar, k kVar) {
        super(tkVar);
        this.b = new Object();
        this.o = true;
        this.p = BuildConfig.VERSION_NAME;
        this.x = -1;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.a = tkVar;
        this.h = adSizeParcel;
        this.k = z;
        this.n = -1;
        this.c = yVar;
        this.d = versionInfoParcel;
        this.e = kVar;
        this.C = (WindowManager) getContext().getSystemService("window");
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        ar.e().a((Context) tkVar, versionInfoParcel.b, settings);
        ar.g().a(getContext(), settings);
        setDownloadListener(this);
        F();
        if (vu.e()) {
            addJavascriptInterface(new tl(this), "googleAdsJsInterface");
        }
        this.w = new sf(this.a.a(), this, null);
        a(cyVar);
    }

    private void D() {
        synchronized (this.b) {
            this.m = ar.h().j();
            if (this.m == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    a(Boolean.valueOf(true));
                } catch (IllegalStateException e) {
                    a(Boolean.valueOf(false));
                }
            }
        }
    }

    private void E() {
        cp.a(this.t.a(), this.q, "aeh");
    }

    private void F() {
        synchronized (this.b) {
            if (this.k || this.h.e) {
                if (VERSION.SDK_INT < 14) {
                    b.a("Disabling hardware acceleration on an overlay.");
                    G();
                } else {
                    b.a("Enabling hardware acceleration on an overlay.");
                    H();
                }
            } else if (VERSION.SDK_INT < 18) {
                b.a("Disabling hardware acceleration on an AdView.");
                G();
            } else {
                b.a("Enabling hardware acceleration on an AdView.");
                H();
            }
        }
    }

    private void G() {
        synchronized (this.b) {
            if (!this.l) {
                ar.g().c((View) this);
            }
            this.l = true;
        }
    }

    private void H() {
        synchronized (this.b) {
            if (this.l) {
                ar.g().b((View) this);
            }
            this.l = false;
        }
    }

    private void I() {
        synchronized (this.b) {
            if (this.B != null) {
                for (gf a : this.B.values()) {
                    a.a();
                }
            }
        }
    }

    private void J() {
        if (this.t != null) {
            cy a = this.t.a();
            if (a != null && ar.h().e() != null) {
                ar.h().e().a(a);
            }
        }
    }

    static ti a(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, y yVar, VersionInfoParcel versionInfoParcel, cy cyVar, k kVar) {
        return new ti(new tk(context), adSizeParcel, z, z2, yVar, versionInfoParcel, cyVar, kVar);
    }

    private void a(cy cyVar) {
        J();
        this.t = new cx(new cy(true, "make_wv", this.h.b));
        this.t.a().a(cyVar);
        this.r = cp.a(this.t.a());
        this.t.a("native:view_create", this.r);
        this.s = null;
        this.q = null;
    }

    public OnClickListener A() {
        return (OnClickListener) this.u.get();
    }

    public boolean B() {
        if (!l().b()) {
            return false;
        }
        int i;
        int i2;
        DisplayMetrics a = ar.e().a(this.C);
        int b = aa.a().b(a, a.widthPixels);
        int b2 = aa.a().b(a, a.heightPixels);
        Activity f = f();
        if (f == null || f.getWindow() == null) {
            i = b2;
            i2 = b;
        } else {
            int[] a2 = ar.e().a(f);
            i2 = aa.a().b(a, a2[0]);
            i = aa.a().b(a, a2[1]);
        }
        if (this.y == b && this.x == b2 && this.z == i2 && this.A == i) {
            return false;
        }
        boolean z = (this.y == b && this.x == b2) ? false : true;
        this.y = b;
        this.x = b2;
        this.z = i2;
        this.A = i;
        new lv(this).a(b, b2, i2, i, a.density, this.C.getDefaultDisplay().getRotation());
        return z;
    }

    Boolean C() {
        Boolean bool;
        synchronized (this.b) {
            bool = this.m;
        }
        return bool;
    }

    public WebView a() {
        return this;
    }

    public void a(int i) {
        E();
        Map hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.d.b);
        a("onhide", hashMap);
    }

    public void a(Context context) {
        this.a.setBaseContext(context);
        this.w.a(this.a.a());
    }

    public void a(Context context, AdSizeParcel adSizeParcel, cy cyVar) {
        synchronized (this.b) {
            this.w.b();
            a(context);
            this.g = null;
            this.h = adSizeParcel;
            this.k = false;
            this.i = false;
            this.p = BuildConfig.VERSION_NAME;
            this.n = -1;
            ar.g().b((sz) this);
            loadUrl("about:blank");
            this.f.f();
            setOnTouchListener(null);
            setOnClickListener(null);
            this.o = true;
            a(cyVar);
        }
    }

    public void a(AdSizeParcel adSizeParcel) {
        synchronized (this.b) {
            this.h = adSizeParcel;
            requestLayout();
        }
    }

    public void a(zzd com_google_android_gms_ads_internal_overlay_zzd) {
        synchronized (this.b) {
            this.g = com_google_android_gms_ads_internal_overlay_zzd;
        }
    }

    public void a(ah ahVar, boolean z) {
        Map hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        a("onAdVisibilityChanged", hashMap);
    }

    void a(Boolean bool) {
        this.m = bool;
        ar.h().a(bool);
    }

    public void a(String str) {
        synchronized (this.b) {
            try {
                super.loadUrl(str);
            } catch (Throwable th) {
                b.d("Could not call loadUrl. " + th);
            }
        }
    }

    @TargetApi(19)
    protected void a(String str, ValueCallback<String> valueCallback) {
        synchronized (this.b) {
            if (r()) {
                b.d("The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
            } else {
                evaluateJavascript(str, valueCallback);
            }
        }
    }

    public void a(String str, fj fjVar) {
        if (this.f != null) {
            this.f.a(str, fjVar);
        }
    }

    public void a(String str, String str2) {
        d(str + "(" + str2 + ");");
    }

    public void a(String str, Map<String, ?> map) {
        try {
            b(str, ar.e().a((Map) map));
        } catch (JSONException e) {
            b.d("Could not convert parameters to JSON.");
        }
    }

    public void a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        a(str, jSONObject.toString());
    }

    public void a(boolean z) {
        synchronized (this.b) {
            this.k = z;
            F();
        }
    }

    public View b() {
        return this;
    }

    public void b(int i) {
        synchronized (this.b) {
            this.n = i;
            if (this.g != null) {
                this.g.a(this.n);
            }
        }
    }

    public void b(zzd com_google_android_gms_ads_internal_overlay_zzd) {
        synchronized (this.b) {
            this.v = com_google_android_gms_ads_internal_overlay_zzd;
        }
    }

    public void b(String str) {
        synchronized (this.b) {
            if (str == null) {
                str = BuildConfig.VERSION_NAME;
            }
            this.p = str;
        }
    }

    public void b(String str, fj fjVar) {
        if (this.f != null) {
            this.f.b(str, fjVar);
        }
    }

    public void b(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AFMA_ReceiveMessage('");
        stringBuilder.append(str);
        stringBuilder.append("'");
        stringBuilder.append(",");
        stringBuilder.append(jSONObject2);
        stringBuilder.append(");");
        qd.e("Dispatching AFMA event: " + stringBuilder.toString());
        d(stringBuilder.toString());
    }

    public void b(boolean z) {
        synchronized (this.b) {
            if (this.g != null) {
                this.g.a(this.f.b(), z);
            } else {
                this.i = z;
            }
        }
    }

    public void c() {
        E();
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.d.b);
        a("onhide", hashMap);
    }

    protected void c(String str) {
        synchronized (this.b) {
            if (r()) {
                b.d("The webview is destroyed. Ignoring action.");
            } else {
                loadUrl(str);
            }
        }
    }

    public void c(boolean z) {
        synchronized (this.b) {
            this.o = z;
        }
    }

    public void d() {
        if (this.q == null) {
            cp.a(this.t.a(), this.s, "aes");
            this.q = cp.a(this.t.a());
            this.t.a("native:view_show", this.q);
        }
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.d.b);
        a("onshow", hashMap);
    }

    protected void d(String str) {
        if (vu.g()) {
            if (C() == null) {
                D();
            }
            if (C().booleanValue()) {
                a(str, null);
                return;
            } else {
                c("javascript:" + str);
                return;
            }
        }
        c("javascript:" + str);
    }

    public void destroy() {
        synchronized (this.b) {
            J();
            this.w.b();
            if (this.g != null) {
                this.g.a();
                this.g.k();
                this.g = null;
            }
            this.f.f();
            if (this.j) {
                return;
            }
            ar.t().a((sz) this);
            I();
            this.j = true;
            qd.e("Initiating WebView self destruct sequence in 3...");
            this.f.d();
        }
    }

    public void e() {
        Map hashMap = new HashMap(2);
        hashMap.put("app_volume", String.valueOf(ar.e().f()));
        hashMap.put("device_volume", String.valueOf(ar.e().i(getContext())));
        a("volume", hashMap);
    }

    @TargetApi(19)
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this.b) {
            if (r()) {
                b.d("The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                return;
            }
            super.evaluateJavascript(str, valueCallback);
        }
    }

    public Activity f() {
        return this.a.a();
    }

    protected void finalize() throws Throwable {
        synchronized (this.b) {
            if (!this.j) {
                ar.t().a((sz) this);
                I();
            }
        }
        super.finalize();
    }

    public Context g() {
        return this.a.b();
    }

    public k h() {
        return this.e;
    }

    public zzd i() {
        zzd com_google_android_gms_ads_internal_overlay_zzd;
        synchronized (this.b) {
            com_google_android_gms_ads_internal_overlay_zzd = this.g;
        }
        return com_google_android_gms_ads_internal_overlay_zzd;
    }

    public zzd j() {
        zzd com_google_android_gms_ads_internal_overlay_zzd;
        synchronized (this.b) {
            com_google_android_gms_ads_internal_overlay_zzd = this.v;
        }
        return com_google_android_gms_ads_internal_overlay_zzd;
    }

    public AdSizeParcel k() {
        AdSizeParcel adSizeParcel;
        synchronized (this.b) {
            adSizeParcel = this.h;
        }
        return adSizeParcel;
    }

    public ta l() {
        return this.f;
    }

    public void loadData(String str, String str2, String str3) {
        synchronized (this.b) {
            if (r()) {
                b.d("The webview is destroyed. Ignoring action.");
            } else {
                super.loadData(str, str2, str3);
            }
        }
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this.b) {
            if (r()) {
                b.d("The webview is destroyed. Ignoring action.");
            } else {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            }
        }
    }

    public void loadUrl(String str) {
        synchronized (this.b) {
            if (r()) {
                b.d("The webview is destroyed. Ignoring action.");
            } else {
                try {
                    super.loadUrl(str);
                } catch (Throwable th) {
                    b.d("Could not call loadUrl. " + th);
                }
            }
        }
    }

    public boolean m() {
        return this.i;
    }

    public y n() {
        return this.c;
    }

    public VersionInfoParcel o() {
        return this.d;
    }

    protected void onAttachedToWindow() {
        synchronized (this.b) {
            super.onAttachedToWindow();
            if (!r()) {
                this.w.c();
            }
        }
    }

    protected void onDetachedFromWindow() {
        synchronized (this.b) {
            if (!r()) {
                this.w.d();
            }
            super.onDetachedFromWindow();
        }
    }

    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            ar.e().a(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            b.a("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
        }
    }

    @TargetApi(21)
    protected void onDraw(Canvas canvas) {
        if (!r()) {
            if (VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
                super.onDraw(canvas);
            }
        }
    }

    public void onGlobalLayout() {
        boolean B = B();
        zzd i = i();
        if (i != null && B) {
            i.o();
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        synchronized (this.b) {
            if (r()) {
                setMeasuredDimension(0, 0);
            } else if (isInEditMode() || this.k || this.h.i || this.h.j) {
                super.onMeasure(i, i2);
            } else if (this.h.e) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                this.C.getDefaultDisplay().getMetrics(displayMetrics);
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
            } else {
                int mode = MeasureSpec.getMode(i);
                int size = MeasureSpec.getSize(i);
                int mode2 = MeasureSpec.getMode(i2);
                int size2 = MeasureSpec.getSize(i2);
                mode = (mode == RtlSpacingHelper.UNDEFINED || mode == 1073741824) ? size : Integer.MAX_VALUE;
                if (mode2 == RtlSpacingHelper.UNDEFINED || mode2 == 1073741824) {
                    i3 = size2;
                }
                if (this.h.g > mode || this.h.d > r0) {
                    float f = this.a.getResources().getDisplayMetrics().density;
                    b.d("Not enough space to show ad. Needs " + ((int) (((float) this.h.g) / f)) + "x" + ((int) (((float) this.h.d) / f)) + " dp, but only has " + ((int) (((float) size) / f)) + "x" + ((int) (((float) size2) / f)) + " dp.");
                    if (getVisibility() != 8) {
                        setVisibility(4);
                    }
                    setMeasuredDimension(0, 0);
                } else {
                    if (getVisibility() != 8) {
                        setVisibility(0);
                    }
                    setMeasuredDimension(this.h.g, this.h.d);
                }
            }
        }
    }

    public void onPause() {
        if (!r()) {
            try {
                if (vu.a()) {
                    super.onPause();
                }
            } catch (Throwable e) {
                b.b("Could not pause webview.", e);
            }
        }
    }

    public void onResume() {
        if (!r()) {
            try {
                if (vu.a()) {
                    super.onResume();
                }
            } catch (Throwable e) {
                b.b("Could not resume webview.", e);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.c != null) {
            this.c.a(motionEvent);
        }
        return r() ? false : super.onTouchEvent(motionEvent);
    }

    public boolean p() {
        boolean z;
        synchronized (this.b) {
            z = this.k;
        }
        return z;
    }

    public int q() {
        int i;
        synchronized (this.b) {
            i = this.n;
        }
        return i;
    }

    public boolean r() {
        boolean z;
        synchronized (this.b) {
            z = this.j;
        }
        return z;
    }

    public void s() {
        synchronized (this.b) {
            qd.e("Destroying WebView!");
            qw.a.post(new tj(this));
        }
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.u = new WeakReference(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof ta) {
            this.f = (ta) webViewClient;
        }
    }

    public void stopLoading() {
        if (!r()) {
            try {
                super.stopLoading();
            } catch (Throwable e) {
                b.b("Could not stop loading webview.", e);
            }
        }
    }

    public boolean t() {
        boolean z;
        synchronized (this.b) {
            cp.a(this.t.a(), this.q, "aebb");
            z = this.o;
        }
        return z;
    }

    public String u() {
        String str;
        synchronized (this.b) {
            str = this.p;
        }
        return str;
    }

    public sy v() {
        return null;
    }

    public cu w() {
        return this.s;
    }

    public cx x() {
        return this.t;
    }

    public void y() {
        this.w.a();
    }

    public void z() {
        if (this.s == null) {
            this.s = cp.a(this.t.a());
            this.t.a("native:view_load", this.s);
        }
    }
}
