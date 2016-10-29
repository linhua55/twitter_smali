package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.ly;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.sz;
import java.util.Collections;
import java.util.Map;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@oi
public class zzd extends ly implements z {
    static final int a;
    AdOverlayInfoParcel b;
    sz c;
    l d;
    zzo e;
    boolean f;
    FrameLayout g;
    CustomViewCallback h;
    boolean i;
    boolean j;
    RelativeLayout k;
    boolean l;
    int m;
    t n;
    private final Activity o;
    private boolean p;
    private boolean q;
    private boolean r;

    @oi
    final class zza extends Exception {
        public zza(String str) {
            super(str);
        }
    }

    static {
        a = Color.argb(0, 0, 0, 0);
    }

    public zzd(Activity activity) {
        this.f = false;
        this.i = false;
        this.j = false;
        this.l = false;
        this.m = 0;
        this.q = false;
        this.r = true;
        this.o = activity;
        this.n = new x();
    }

    public void a() {
        this.m = 2;
        this.o.finish();
    }

    public void a(int i) {
        this.o.setRequestedOrientation(i);
    }

    public void a(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            z = bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        }
        this.i = z;
        try {
            this.b = AdOverlayInfoParcel.a(this.o.getIntent());
            if (this.b == null) {
                throw new zza("Could not get info for ad overlay.");
            }
            if (this.b.n.d > 7500000) {
                this.m = 3;
            }
            if (this.o.getIntent() != null) {
                this.r = this.o.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.b.q != null) {
                this.j = this.b.q.b;
            } else {
                this.j = false;
            }
            if (((Boolean) cj.aE.c()).booleanValue() && this.j && this.b.q.d != null) {
                new m().g();
            }
            if (bundle == null) {
                if (this.b.d != null && this.r) {
                    this.b.d.f_();
                }
                if (!(this.b.l == 1 || this.b.c == null)) {
                    this.b.c.e();
                }
            }
            this.k = new k(this.o, this.b.p);
            this.k.setId(1000);
            switch (this.b.l) {
                case WireMessage.WIRE_CHAT /*1*/:
                    b(false);
                case WireMessage.WIRE_CONTROL /*2*/:
                    this.d = new l(this.b.e);
                    b(false);
                case WireMessage.WIRE_AUTH /*3*/:
                    b(true);
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (this.i) {
                        this.m = 3;
                        this.o.finish();
                    } else if (!ar.b().a(this.o, this.b.b, this.b.j)) {
                        this.m = 3;
                        this.o.finish();
                    }
                default:
                    throw new zza("Could not determine ad overlay type.");
            }
        } catch (zza e) {
            b.d(e.getMessage());
            this.m = 3;
            this.o.finish();
        }
    }

    public void a(View view, CustomViewCallback customViewCallback) {
        this.g = new FrameLayout(this.o);
        this.g.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.g.addView(view, -1, -1);
        this.o.setContentView(this.g);
        l();
        this.h = customViewCallback;
        this.f = true;
    }

    public void a(sz szVar, Map<String, String> map) {
        this.n.a(szVar, map);
    }

    public void a(boolean z) {
        this.e = new zzo(this.o, z ? 50 : 32, this);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        this.e.a(z, this.b.h);
        this.k.addView(this.e, layoutParams);
    }

    public void a(boolean z, boolean z2) {
        if (this.e != null) {
            this.e.a(z, z2);
        }
    }

    public void b() {
        if (this.b != null && this.f) {
            a(this.b.k);
        }
        if (this.g != null) {
            this.o.setContentView(this.k);
            l();
            this.g.removeAllViews();
            this.g = null;
        }
        if (this.h != null) {
            this.h.onCustomViewHidden();
            this.h = null;
        }
        this.f = false;
    }

    protected void b(int i) {
        this.c.a(i);
    }

    public void b(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.i);
    }

    protected void b(boolean z) throws zza {
        if (!this.p) {
            this.o.requestWindowFeature(1);
        }
        Window window = this.o.getWindow();
        if (window == null) {
            throw new zza("Invalid activity, no window available.");
        }
        if (!this.j || (this.b.q != null && this.b.q.c)) {
            window.setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        }
        boolean b = this.b.e.l().b();
        this.l = false;
        if (b) {
            if (this.b.k == ar.g().a()) {
                this.l = this.o.getResources().getConfiguration().orientation == 1;
            } else if (this.b.k == ar.g().b()) {
                this.l = this.o.getResources().getConfiguration().orientation == 2;
            }
        }
        b.a("Delay onShow to next orientation change: " + this.l);
        a(this.b.k);
        if (ar.g().a(window)) {
            b.a("Hardware acceleration on the AdActivity window enabled.");
        }
        if (this.j) {
            this.k.setBackgroundColor(a);
        } else {
            this.k.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        this.o.setContentView(this.k);
        l();
        if (z) {
            this.c = ar.f().a(this.o, this.b.e.k(), true, b, null, this.b.n, null, this.b.e.h());
            this.c.l().a(null, null, this.b.f, this.b.j, true, this.b.o, null, this.b.e.l().a(), null);
            this.c.l().a(new j(this));
            if (this.b.m != null) {
                this.c.loadUrl(this.b.m);
            } else if (this.b.i != null) {
                this.c.loadDataWithBaseURL(this.b.g, this.b.i, "text/html", "UTF-8", null);
            } else {
                throw new zza("No URL or HTML to display in ad overlay.");
            }
            if (this.b.e != null) {
                this.b.e.b(this);
            }
        } else {
            this.c = this.b.e;
            this.c.a(this.o);
        }
        this.c.a(this);
        ViewParent parent = this.c.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.c.b());
        }
        if (this.j) {
            this.c.setBackgroundColor(a);
        }
        this.k.addView(this.c.b(), -1, -1);
        if (!(z || this.l)) {
            p();
        }
        a(b);
        if (this.c.m()) {
            a(b, true);
        }
        k h = this.c.h();
        u uVar = h != null ? h.c : null;
        if (uVar != null) {
            this.n = uVar.a(this.o, this.c, this.k);
        } else {
            b.d("Appstreaming controller is null.");
        }
    }

    public void c() {
        this.m = 1;
        this.o.finish();
    }

    public void d() {
        this.m = 0;
    }

    public boolean e() {
        boolean z = true;
        this.m = 0;
        if (this.c != null) {
            if (!(this.c.t() && this.n.d())) {
                z = false;
            }
            if (!z) {
                this.c.a("onbackblocked", Collections.emptyMap());
            }
        }
        return z;
    }

    public void f() {
    }

    public void g() {
    }

    public void h() {
        if (this.b != null && this.b.l == 4) {
            if (this.i) {
                this.m = 3;
                this.o.finish();
            } else {
                this.i = true;
            }
        }
        if (this.b.d != null) {
            this.b.d.h_();
        }
        if (this.c == null || this.c.r()) {
            b.d("The webview does not exit. Ignoring action.");
        } else {
            ar.g().b(this.c);
        }
        this.n.b();
    }

    public void i() {
        this.n.a();
        b();
        if (this.b.d != null) {
            this.b.d.g_();
        }
        if (this.c != null && (!this.o.isFinishing() || this.d == null)) {
            ar.g().a(this.c);
        }
        n();
    }

    public void j() {
        n();
    }

    public void k() {
        if (this.c != null) {
            this.k.removeView(this.c.b());
        }
        n();
    }

    public void l() {
        this.p = true;
    }

    public void m() {
        this.k.removeView(this.e);
        a(true);
    }

    protected void n() {
        if (this.o.isFinishing() && !this.q) {
            this.q = true;
            if (this.c != null) {
                b(this.m);
                this.k.removeView(this.c.b());
                if (this.d != null) {
                    this.c.a(this.d.d);
                    this.c.a(false);
                    this.d.c.addView(this.c.b(), this.d.a, this.d.b);
                    this.d = null;
                } else if (this.o.getApplicationContext() != null) {
                    this.c.a(this.o.getApplicationContext());
                }
                this.c = null;
            }
            if (!(this.b == null || this.b.d == null)) {
                this.b.d.e_();
            }
            this.n.c();
        }
    }

    public void o() {
        if (this.l) {
            this.l = false;
            p();
        }
    }

    protected void p() {
        this.c.d();
    }
}
