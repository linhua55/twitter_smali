package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.aj;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.hx;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.sz;
import com.google.android.gms.internal.y;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

@oi
public class j implements h {
    private final Object a;
    private final aj b;
    private final Context c;
    private final JSONObject d;
    private final hx e;
    private final i f;
    private final y g;
    private final VersionInfoParcel h;
    private boolean i;
    private sz j;
    private String k;
    private WeakReference<View> l;

    public j(Context context, aj ajVar, hx hxVar, y yVar, JSONObject jSONObject, i iVar, VersionInfoParcel versionInfoParcel) {
        this.a = new Object();
        this.l = null;
        this.c = context;
        this.b = ajVar;
        this.e = hxVar;
        this.g = yVar;
        this.d = jSONObject;
        this.f = iVar;
        this.h = versionInfoParcel;
    }

    public b a(OnClickListener onClickListener) {
        a l = this.f.l();
        if (l == null) {
            return null;
        }
        b bVar = new b(this.c, l);
        bVar.setLayoutParams(new LayoutParams(-1, -1));
        bVar.a().setOnClickListener(onClickListener);
        bVar.a().setContentDescription("Ad attribution icon");
        return bVar;
    }

    public void a() {
        bm.b("recordImpression must be called on the main UI thread.");
        a(true);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.d);
            this.e.a("google.afma.nativeAds.handleImpressionPing", jSONObject);
        } catch (Throwable e) {
            b.b("Unable to create impression JSON.", e);
        }
        this.b.a((h) this);
    }

    public void a(MotionEvent motionEvent) {
        this.g.a(motionEvent);
    }

    public void a(View view) {
    }

    public void a(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        bm.b("performClick must be called on the main UI thread.");
        for (Entry entry : map.entrySet()) {
            if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                a((String) entry.getKey(), jSONObject, jSONObject2, jSONObject3);
                return;
            }
        }
    }

    public void a(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        bm.b("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("asset", str);
            jSONObject4.put("template", this.f.j());
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("ad", this.d);
            jSONObject5.put("click", jSONObject4);
            jSONObject5.put("has_custom_click_handler", this.b.c(this.f.k()) != null);
            if (jSONObject != null) {
                jSONObject5.put("view_rectangles", jSONObject);
            }
            if (jSONObject2 != null) {
                jSONObject5.put("click_point", jSONObject2);
            }
            if (jSONObject3 != null) {
                jSONObject5.put("native_view_rectangle", jSONObject3);
            }
            this.e.a("google.afma.nativeAds.handleClickGmsg", jSONObject5);
        } catch (Throwable e) {
            b.b("Unable to create click JSON.", e);
        }
    }

    protected void a(boolean z) {
        this.i = z;
    }

    public void b(View view) {
        synchronized (this.a) {
            if (this.i) {
            } else if (!view.isShown()) {
            } else if (view.getGlobalVisibleRect(new Rect(), null)) {
                a();
            }
        }
    }

    public void c(View view) {
        this.l = new WeakReference(view);
    }

    public sz d() {
        this.j = g();
        this.j.b().setVisibility(8);
        this.e.a("/loadHtml", new k(this));
        this.e.a("/showOverlay", new m(this));
        this.e.a("/hideOverlay", new n(this));
        this.j.l().a("/hideOverlay", new o(this));
        this.j.l().a("/sendMessageToSdk", new p(this));
        return this.j;
    }

    public View e() {
        return this.l != null ? (View) this.l.get() : null;
    }

    public Context f() {
        return this.c;
    }

    sz g() {
        return ar.f().a(this.c, AdSizeParcel.a(this.c), false, false, this.g, this.h);
    }
}
