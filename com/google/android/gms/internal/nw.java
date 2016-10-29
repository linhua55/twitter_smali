package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.aj;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.i;
import com.google.android.gms.ads.internal.formats.j;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class nw implements Callable<ps> {
    private static final long a;
    private final Context b;
    private final rr c;
    private final aj d;
    private final y e;
    private final hz f;
    private final Object g;
    private final pt h;
    private boolean i;
    private int j;
    private List<String> k;
    private JSONObject l;

    static {
        a = TimeUnit.SECONDS.toMillis(60);
    }

    public nw(Context context, aj ajVar, hz hzVar, rr rrVar, y yVar, pt ptVar) {
        this.g = new Object();
        this.b = context;
        this.d = ajVar;
        this.c = rrVar;
        this.f = hzVar;
        this.h = ptVar;
        this.e = yVar;
        this.i = false;
        this.j = -2;
        this.k = null;
    }

    private i a(hx hxVar, oc ocVar, JSONObject jSONObject) throws ExecutionException, InterruptedException, JSONException {
        if (b()) {
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("tracking_urls_and_actions");
        String[] b = b(jSONObject2, "impression_tracking_urls");
        this.k = b == null ? null : Arrays.asList(b);
        this.l = jSONObject2.optJSONObject("active_view");
        i a = ocVar.a(this, jSONObject);
        if (a == null) {
            b.b("Failed to retrieve ad assets.");
            return null;
        }
        a.a(new j(this.b, this.d, hxVar, this.e, jSONObject, a, this.h.a.k));
        return a;
    }

    private ps a(i iVar) {
        int i;
        synchronized (this.g) {
            i = this.j;
            if (iVar == null && this.j == -2) {
                i = 0;
            }
        }
        return new ps(this.h.a.c, null, this.h.b.d, i, this.h.b.f, this.k, this.h.b.l, this.h.b.k, this.h.a.i, false, null, null, null, null, null, 0, this.h.d, this.h.b.g, this.h.f, this.h.g, this.h.b.o, this.l, i != -2 ? null : iVar, null, null, null, this.h.b.G);
    }

    private sm<c> a(JSONObject jSONObject, boolean z, boolean z2) throws JSONException {
        String string = z ? jSONObject.getString("url") : jSONObject.optString("url");
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? new sh(new c(null, Uri.parse(string), optDouble)) : this.c.a(string, new ob(this, z, optDouble, string));
        } else {
            a(0, z);
            return new sh(null);
        }
    }

    private Integer a(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject a(hx hxVar) throws TimeoutException, JSONException {
        if (b()) {
            return null;
        }
        sg sgVar = new sg();
        od odVar = new od(this);
        nx nxVar = new nx(this, hxVar, odVar, sgVar);
        odVar.a = nxVar;
        hxVar.a("/nativeAdPreProcess", nxVar);
        hxVar.a("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(this.h.b.c));
        return (JSONObject) sgVar.get(a, TimeUnit.MILLISECONDS);
    }

    private void a(i iVar, hx hxVar) {
        if (iVar instanceof f) {
            f fVar = (f) iVar;
            od odVar = new od(this);
            nz nzVar = new nz(this, fVar);
            odVar.a = nzVar;
            hxVar.a("/nativeAdCustomClick", nzVar);
        }
    }

    private void a(ea eaVar, String str) {
        try {
            ej c = this.d.c(eaVar.k());
            if (c != null) {
                c.a(eaVar, str);
            }
        } catch (Throwable e) {
            b.d("Failed to call onCustomClick for asset " + str + ".", e);
        }
    }

    private static List<Drawable> b(List<c> list) throws RemoteException {
        List<Drawable> arrayList = new ArrayList();
        for (c a : list) {
            arrayList.add((Drawable) m.a(a.a()));
        }
        return arrayList;
    }

    private String[] b(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            strArr[i] = optJSONArray.getString(i);
        }
        return strArr;
    }

    private hx c() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        if (b()) {
            return null;
        }
        hx hxVar = (hx) this.f.a(this.b, this.h.a.k, (this.h.b.b.indexOf("https") == 0 ? "https:" : "http:") + ((String) cj.ac.c()), this.e).get(a, TimeUnit.MILLISECONDS);
        hxVar.a(this.d, this.d, this.d, this.d, false, null, null, null, null);
        return hxVar;
    }

    protected oc a(JSONObject jSONObject) throws JSONException, TimeoutException {
        if (b()) {
            return null;
        }
        String string = jSONObject.getString("template_id");
        boolean z = this.h.a.z != null ? this.h.a.z.b : false;
        boolean z2 = this.h.a.z != null ? this.h.a.z.d : false;
        if ("2".equals(string)) {
            return new oe(z, z2);
        }
        if ("1".equals(string)) {
            return new of(z, z2);
        }
        if ("3".equals(string)) {
            String string2 = jSONObject.getString("custom_template_id");
            sg sgVar = new sg();
            qw.a.post(new ny(this, sgVar, string2));
            if (sgVar.get(a, TimeUnit.MILLISECONDS) != null) {
                return new og(z);
            }
            b.b("No handler for custom template: " + jSONObject.getString("custom_template_id"));
        } else {
            a(0);
        }
        return null;
    }

    public ps a() {
        try {
            hx c = c();
            JSONObject a = a(c);
            i a2 = a(c, a(a), a);
            a(a2, c);
            return a(a2);
        } catch (CancellationException e) {
            if (!this.i) {
                a(0);
            }
            return a(null);
        } catch (ExecutionException e2) {
            if (this.i) {
                a(0);
            }
            return a(null);
        } catch (InterruptedException e3) {
            if (this.i) {
                a(0);
            }
            return a(null);
        } catch (Throwable e4) {
            b.d("Malformed native JSON response.", e4);
            if (this.i) {
                a(0);
            }
            return a(null);
        } catch (Throwable e42) {
            b.d("Timeout when loading native ad.", e42);
            if (this.i) {
                a(0);
            }
            return a(null);
        }
    }

    public sm<c> a(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return a(jSONObject2, z, z2);
    }

    public List<sm<c>> a(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray jSONArray = z ? jSONObject.getJSONArray(str) : jSONObject.optJSONArray(str);
        List<sm<c>> arrayList = new ArrayList();
        if (jSONArray == null || jSONArray.length() == 0) {
            a(0, z);
            return arrayList;
        }
        int length = z3 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(a(jSONObject2, z, z2));
        }
        return arrayList;
    }

    public Future<c> a(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean optBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return a(jSONObject2, optBoolean, z);
    }

    public void a(int i) {
        synchronized (this.g) {
            this.i = true;
            this.j = i;
        }
    }

    public void a(int i, boolean z) {
        if (z) {
            a(i);
        }
    }

    public sm<a> b(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return new sh(null);
        }
        String optString = optJSONObject.optString("text");
        int optInt = optJSONObject.optInt("text_size", -1);
        Integer a = a(optJSONObject, "text_color");
        Integer a2 = a(optJSONObject, "bg_color");
        int optInt2 = optJSONObject.optInt("animation_ms", 1000);
        int optInt3 = optJSONObject.optInt("presentation_ms", 4000);
        List arrayList = new ArrayList();
        if (optJSONObject.optJSONArray("images") != null) {
            arrayList = a(optJSONObject, "images", false, false, true);
        } else {
            arrayList.add(a(optJSONObject, "image", false, false));
        }
        return si.a(si.a(arrayList), new oa(this, optString, a2, a, optInt, optInt3, optInt2));
    }

    public boolean b() {
        boolean z;
        synchronized (this.g) {
            z = this.i;
        }
        return z;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}
