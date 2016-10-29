package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.ads.internal.aj;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.sz;
import com.google.android.gms.internal.y;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

@oi
public class g extends j {
    private kq a;
    private kt b;
    private final aj c;
    private h d;
    private boolean e;
    private Object f;

    private g(Context context, aj ajVar, y yVar) {
        super(context, ajVar, null, yVar, null, null, null);
        this.e = false;
        this.f = new Object();
        this.c = ajVar;
    }

    public g(Context context, aj ajVar, y yVar, kq kqVar) {
        this(context, ajVar, yVar);
        this.a = kqVar;
    }

    public g(Context context, aj ajVar, y yVar, kt ktVar) {
        this(context, ajVar, yVar);
        this.b = ktVar;
    }

    public b a(OnClickListener onClickListener) {
        return null;
    }

    public void a() {
        bm.b("recordImpression must be called on the main UI thread.");
        synchronized (this.f) {
            a(true);
            if (this.d != null) {
                this.d.a();
            } else {
                try {
                    if (this.a != null && !this.a.j()) {
                        this.a.i();
                    } else if (!(this.b == null || this.b.h())) {
                        this.b.g();
                    }
                } catch (Throwable e) {
                    b.d("Failed to call recordImpression", e);
                }
            }
            this.c.y();
        }
    }

    public void a(View view) {
        synchronized (this.f) {
            this.e = true;
            try {
                if (this.a != null) {
                    this.a.b(m.a(view));
                } else if (this.b != null) {
                    this.b.b(m.a(view));
                }
            } catch (Throwable e) {
                b.d("Failed to call prepareAd", e);
            }
            this.e = false;
        }
    }

    public void a(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        bm.b("performClick must be called on the main UI thread.");
        synchronized (this.f) {
            if (this.d != null) {
                this.d.a(view, map, jSONObject, jSONObject2, jSONObject3);
                this.c.e();
            } else {
                try {
                    if (!(this.a == null || this.a.k())) {
                        this.a.a(m.a(view));
                        this.c.e();
                    }
                    if (!(this.b == null || this.b.i())) {
                        this.b.a(m.a(view));
                        this.c.e();
                    }
                } catch (Throwable e) {
                    b.d("Failed to call performClick", e);
                }
            }
        }
    }

    public void a(h hVar) {
        synchronized (this.f) {
            this.d = hVar;
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this.f) {
            z = this.e;
        }
        return z;
    }

    public h c() {
        h hVar;
        synchronized (this.f) {
            hVar = this.d;
        }
        return hVar;
    }

    public sz d() {
        return null;
    }
}
