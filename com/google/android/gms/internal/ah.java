package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public abstract class ah implements OnGlobalLayoutListener, OnScrollChangedListener {
    protected final Object a;
    protected final ar b;
    BroadcastReceiver c;
    private final WeakReference<ps> d;
    private WeakReference<ViewTreeObserver> e;
    private final be f;
    private final Context g;
    private final WindowManager h;
    private final PowerManager i;
    private final KeyguardManager j;
    private at k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private final HashSet<aq> r;
    private sc s;
    private final fj t;
    private final fj u;
    private final fj v;

    public ah(Context context, AdSizeParcel adSizeParcel, ps psVar, VersionInfoParcel versionInfoParcel, be beVar) {
        this.a = new Object();
        this.m = false;
        this.n = false;
        this.r = new HashSet();
        this.t = new aj(this);
        this.u = new ak(this);
        this.v = new al(this);
        this.d = new WeakReference(psVar);
        this.f = beVar;
        this.e = new WeakReference(null);
        this.o = true;
        this.q = false;
        this.s = new sc(200);
        this.b = new ar(UUID.randomUUID().toString(), versionInfoParcel, adSizeParcel.b, psVar.j, psVar.a(), adSizeParcel.i);
        this.h = (WindowManager) context.getSystemService("window");
        this.i = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.j = (KeyguardManager) context.getSystemService("keyguard");
        this.g = context;
    }

    protected int a(int i, DisplayMetrics displayMetrics) {
        return (int) (((float) i) / displayMetrics.density);
    }

    protected JSONObject a(View view) throws JSONException {
        if (view == null) {
            return k();
        }
        boolean a = ar.g().a(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Throwable e) {
            b.b("Failure getting view location.", e);
        }
        DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        rect2.right = this.h.getDefaultDisplay().getWidth();
        rect2.bottom = this.h.getDefaultDisplay().getHeight();
        Rect rect3 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect3, null);
        Rect rect4 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect4);
        Rect rect5 = new Rect();
        view.getHitRect(rect5);
        JSONObject i = i();
        i.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", a).put("viewBox", new JSONObject().put("top", a(rect2.top, displayMetrics)).put("bottom", a(rect2.bottom, displayMetrics)).put("left", a(rect2.left, displayMetrics)).put("right", a(rect2.right, displayMetrics))).put("adBox", new JSONObject().put("top", a(rect.top, displayMetrics)).put("bottom", a(rect.bottom, displayMetrics)).put("left", a(rect.left, displayMetrics)).put("right", a(rect.right, displayMetrics))).put("globalVisibleBox", new JSONObject().put("top", a(rect3.top, displayMetrics)).put("bottom", a(rect3.bottom, displayMetrics)).put("left", a(rect3.left, displayMetrics)).put("right", a(rect3.right, displayMetrics))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", a(rect4.top, displayMetrics)).put("bottom", a(rect4.bottom, displayMetrics)).put("left", a(rect4.left, displayMetrics)).put("right", a(rect4.right, displayMetrics))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", a(rect5.top, displayMetrics)).put("bottom", a(rect5.bottom, displayMetrics)).put("left", a(rect5.left, displayMetrics)).put("right", a(rect5.right, displayMetrics))).put("screenDensity", (double) displayMetrics.density).put("isVisible", ar.e().a(view, this.i, this.j));
        return i;
    }

    protected void a() {
        synchronized (this.a) {
            if (this.c != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.c = new ai(this);
            this.g.registerReceiver(this.c, intentFilter);
        }
    }

    protected void a(View view, Map<String, String> map) {
        b(false);
    }

    public void a(aq aqVar) {
        this.r.add(aqVar);
    }

    public void a(at atVar) {
        synchronized (this.a) {
            this.k = atVar;
        }
    }

    protected void a(jh jhVar) {
        jhVar.a("/updateActiveView", this.t);
        jhVar.a("/untrackActiveViewUnit", this.u);
        jhVar.a("/visibilityChanged", this.v);
    }

    protected void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONArray.put(jSONObject);
            jSONObject2.put("units", jSONArray);
            b(jSONObject2);
        } catch (Throwable th) {
            b.b("Skipping active view message.", th);
        }
    }

    protected void a(boolean z) {
        Iterator it = this.r.iterator();
        while (it.hasNext()) {
            ((aq) it.next()).a(this, z);
        }
    }

    protected boolean a(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        boolean z = !TextUtils.isEmpty(str) && str.equals(this.b.d());
        return z;
    }

    protected void b() {
        synchronized (this.a) {
            if (this.c != null) {
                try {
                    this.g.unregisterReceiver(this.c);
                } catch (Throwable e) {
                    b.b("Failed trying to unregister the receiver", e);
                } catch (Throwable e2) {
                    ar.h().a(e2, true);
                }
                this.c = null;
            }
        }
    }

    protected void b(jh jhVar) {
        jhVar.b("/visibilityChanged", this.v);
        jhVar.b("/untrackActiveViewUnit", this.u);
        jhVar.b("/updateActiveView", this.t);
    }

    protected abstract void b(JSONObject jSONObject);

    protected void b(boolean z) {
        synchronized (this.a) {
            if (j() && this.o) {
                View a = this.f.a();
                boolean z2 = a != null && ar.e().a(a, this.i, this.j) && a.getGlobalVisibleRect(new Rect(), null);
                if (z && !this.s.a() && z2 == this.q) {
                    return;
                }
                this.q = z2;
                if (this.f.b()) {
                    d();
                    return;
                }
                try {
                    a(a(a));
                } catch (JSONException e) {
                    Throwable e2 = e;
                    b.a("Active view update failed.", e2);
                    g();
                    e();
                    return;
                } catch (RuntimeException e3) {
                    e2 = e3;
                    b.a("Active view update failed.", e2);
                    g();
                    e();
                    return;
                }
                g();
                e();
                return;
            }
        }
    }

    protected void c() {
        synchronized (this.a) {
            h();
            b();
            this.o = false;
            e();
        }
    }

    public void d() {
        synchronized (this.a) {
            if (this.o) {
                this.p = true;
                try {
                    a(m());
                } catch (Throwable e) {
                    b.b("JSON failure while processing active view data.", e);
                } catch (Throwable e2) {
                    b.b("Failure while processing active view data.", e2);
                }
                b.a("Untracking ad unit: " + this.b.d());
            }
        }
    }

    protected void e() {
        if (this.k != null) {
            this.k.a(this);
        }
    }

    public boolean f() {
        boolean z;
        synchronized (this.a) {
            z = this.o;
        }
        return z;
    }

    protected void g() {
        View a = this.f.c().a();
        if (a != null) {
            ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.e.get();
            ViewTreeObserver viewTreeObserver2 = a.getViewTreeObserver();
            if (viewTreeObserver2 != viewTreeObserver) {
                h();
                if (!this.l || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
                    this.l = true;
                    viewTreeObserver2.addOnScrollChangedListener(this);
                    viewTreeObserver2.addOnGlobalLayoutListener(this);
                }
                this.e = new WeakReference(viewTreeObserver2);
            }
        }
    }

    protected void h() {
        ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.e.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this);
            viewTreeObserver.removeGlobalOnLayoutListener(this);
        }
    }

    protected JSONObject i() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.b.b()).put("activeViewJSON", this.b.c()).put("timestamp", ar.i().b()).put("adFormat", this.b.a()).put("hashCode", this.b.d()).put("isMraid", this.b.e()).put("isStopped", this.n).put("isPaused", this.m).put("isScreenOn", l()).put("isNative", this.b.f());
        return jSONObject;
    }

    protected abstract boolean j();

    protected JSONObject k() throws JSONException {
        return i().put("isAttachedToWindow", false).put("isScreenOn", l()).put("isVisible", false);
    }

    boolean l() {
        return this.i.isScreenOn();
    }

    protected JSONObject m() throws JSONException {
        JSONObject i = i();
        i.put("doneReasonCode", "u");
        return i;
    }

    public void n() {
        synchronized (this.a) {
            this.n = true;
            b(false);
        }
    }

    public void o() {
        synchronized (this.a) {
            this.m = true;
            b(false);
        }
    }

    public void onGlobalLayout() {
        b(false);
    }

    public void onScrollChanged() {
        b(true);
    }

    public void p() {
        synchronized (this.a) {
            this.m = false;
            b(false);
        }
    }
}
