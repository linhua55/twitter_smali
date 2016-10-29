package com.twitter.library.scribe;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.recyclerview.BuildConfig;
import android.telephony.TelephonyManager;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.internal.network.k;
import com.twitter.library.network.an;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.m;
import defpackage.bbw;
import defpackage.cfb;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ScribeLog<T extends ScribeLog<T>> implements Parcelable, bbw {
    private static final JsonFactory e;
    private String A;
    private boolean B;
    private String C;
    private int D;
    private byte[] E;
    private String F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;
    private String L;
    private boolean M;
    private String N;
    private long O;
    private String P;
    private String Q;
    private String R;
    private int S;
    private int T;
    private List<ScribeItem> U;
    private List<ScribeAssociation> V;
    private Map<String, String> W;
    private boolean X;
    private int Y;
    private String Z;
    protected String a;
    private String aa;
    private String ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    protected int b;
    protected String c;
    protected int d;
    private final List<ScribeSection> f;
    private final List<ScribeItem> g;
    private final long h;
    private long i;
    private int j;
    private int k;
    private String l;
    private int m;
    private int n;
    private String o;
    private final long p;
    private int q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private SearchDetails w;
    private int x;
    private String y;
    private String z;

    protected abstract void a(JsonGenerator jsonGenerator) throws IOException;

    static {
        e = new JsonFactory();
    }

    protected ScribeLog(long j) {
        this.b = -1;
        this.d = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.x = -1;
        this.S = -1;
        this.T = -1;
        this.X = false;
        this.Y = -1;
        this.p = j;
        this.h = m.b();
        this.q = -1;
        this.y = "client_event";
    }

    protected ScribeLog(long j, String... strArr) {
        this(j);
        this.P = a(strArr);
    }

    protected ScribeLog(Parcel parcel) {
        boolean z = true;
        this.b = -1;
        this.d = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.x = -1;
        this.S = -1;
        this.T = -1;
        this.X = false;
        this.Y = -1;
        this.p = parcel.readLong();
        this.y = parcel.readString();
        this.P = parcel.readString();
        this.Q = parcel.readString();
        this.h = parcel.readLong();
        this.o = parcel.readString();
        this.c = parcel.readString();
        this.R = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readInt();
        this.n = parcel.readInt();
        this.i = parcel.readLong();
        this.j = parcel.readInt();
        this.k = parcel.readInt();
        this.q = parcel.readInt();
        this.r = parcel.readString();
        this.s = parcel.readString();
        this.a = parcel.readString();
        this.u = parcel.readString();
        this.v = parcel.readString();
        this.x = parcel.readInt();
        this.z = parcel.readString();
        this.A = parcel.readString();
        this.C = parcel.readString();
        this.D = parcel.readInt();
        int readInt = parcel.readInt();
        if (readInt != -1) {
            this.E = new byte[readInt];
            parcel.readByteArray(this.E);
        }
        this.F = parcel.readString();
        this.b = parcel.readInt();
        this.d = parcel.readInt();
        this.G = parcel.readString();
        this.H = parcel.readString();
        this.I = parcel.readString();
        this.J = parcel.readString();
        this.K = parcel.readString();
        this.L = parcel.readString();
        this.M = parcel.readInt() == 1;
        this.N = parcel.readString();
        this.O = parcel.readLong();
        this.t = parcel.readString();
        parcel.readList(this.f, ScribeSection.class.getClassLoader());
        parcel.readList(this.g, ScribeItem.class.getClassLoader());
        this.V = new ArrayList();
        parcel.readList(this.V, ScribeAssociation.class.getClassLoader());
        int readInt2 = parcel.readInt();
        if (readInt2 > 0) {
            for (readInt = 0; readInt < readInt2; readInt++) {
                a(parcel.readString(), parcel.readString());
            }
        }
        this.Y = parcel.readInt();
        this.ae = parcel.readString();
        this.Z = parcel.readString();
        this.aa = parcel.readString();
        this.ab = parcel.readString();
        this.ac = parcel.readString();
        this.ad = parcel.readString();
        this.S = parcel.readInt();
        this.w = (SearchDetails) parcel.readParcelable(SearchDetails.class.getClassLoader());
        this.T = parcel.readInt();
        this.U = new ArrayList();
        parcel.readList(this.U, ScribeItem.class.getClassLoader());
        this.af = parcel.readString();
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.B = z;
    }

    public static String a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return BuildConfig.VERSION_NAME;
        }
        if (strArr.length == 1) {
            return strArr[0];
        }
        return a(new StringBuilder(), strArr);
    }

    public static String a(StringBuilder stringBuilder, String... strArr) {
        int i = 0;
        if (strArr == null || strArr.length == 0) {
            return BuildConfig.VERSION_NAME;
        }
        if (strArr.length == 1) {
            return strArr[0];
        }
        stringBuilder.setLength(0);
        int length = strArr.length;
        while (i < length) {
            if (strArr[i] == null) {
                stringBuilder.append(BuildConfig.VERSION_NAME);
            } else {
                stringBuilder.append(strArr[i]);
            }
            if (i < length - 1) {
                stringBuilder.append(':');
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeLong(this.p);
        parcel.writeString(this.y);
        parcel.writeString(this.P);
        parcel.writeString(this.Q);
        parcel.writeLong(this.h);
        parcel.writeString(this.o);
        parcel.writeString(this.c);
        parcel.writeString(this.R);
        parcel.writeString(this.l);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
        parcel.writeLong(this.i);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.q);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.a);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeInt(this.x);
        parcel.writeString(this.z);
        parcel.writeString(this.A);
        parcel.writeString(this.C);
        parcel.writeInt(this.D);
        if (this.E != null) {
            parcel.writeInt(this.E.length);
            parcel.writeByteArray(this.E);
        } else {
            parcel.writeInt(-1);
        }
        parcel.writeString(this.F);
        parcel.writeInt(this.b);
        parcel.writeInt(this.d);
        parcel.writeString(this.G);
        parcel.writeString(this.H);
        parcel.writeString(this.I);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeString(this.L);
        parcel.writeInt(this.M ? 1 : 0);
        parcel.writeString(this.N);
        parcel.writeLong(this.O);
        parcel.writeString(this.t);
        parcel.writeList(this.f);
        parcel.writeList(this.g);
        parcel.writeList(this.V);
        if (this.W != null) {
            parcel.writeInt(this.W.size());
            for (Entry entry : this.W.entrySet()) {
                parcel.writeString((String) entry.getKey());
                parcel.writeString((String) entry.getValue());
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.Y);
        parcel.writeString(this.ae);
        parcel.writeString(this.Z);
        parcel.writeString(this.aa);
        parcel.writeString(this.ab);
        parcel.writeString(this.ac);
        parcel.writeString(this.ad);
        parcel.writeInt(this.S);
        parcel.writeParcelable(this.w, i);
        parcel.writeInt(this.T);
        parcel.writeList(this.U);
        parcel.writeString(this.af);
        if (!this.B) {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.io.OutputStream r5) {
        /*
        r4 = this;
        r1 = 0;
        r0 = new java.io.OutputStreamWriter;	 Catch:{ IOException -> 0x0019, all -> 0x0022 }
        r0.<init>(r5);	 Catch:{ IOException -> 0x0019, all -> 0x0022 }
        r2 = e;	 Catch:{ IOException -> 0x0037, all -> 0x002b }
        r1 = r2.a(r5);	 Catch:{ IOException -> 0x0037, all -> 0x002b }
        r4.b(r1);	 Catch:{ IOException -> 0x0037, all -> 0x0031 }
        r1.flush();	 Catch:{ IOException -> 0x0037, all -> 0x0031 }
        defpackage.cun.a(r1);
        defpackage.cun.a(r0);
    L_0x0018:
        return;
    L_0x0019:
        r0 = move-exception;
        r0 = r1;
    L_0x001b:
        defpackage.cun.a(r1);
        defpackage.cun.a(r0);
        goto L_0x0018;
    L_0x0022:
        r0 = move-exception;
        r2 = r1;
    L_0x0024:
        defpackage.cun.a(r2);
        defpackage.cun.a(r1);
        throw r0;
    L_0x002b:
        r2 = move-exception;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0024;
    L_0x0031:
        r2 = move-exception;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0024;
    L_0x0037:
        r2 = move-exception;
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.scribe.ScribeLog.a(java.io.OutputStream):void");
    }

    public String toString() {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(byteArrayOutputStream);
        return byteArrayOutputStream.toString();
    }

    private void b(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("_category_", this.y);
        jsonGenerator.a("format_version", 2);
        if (this.r != null) {
            jsonGenerator.a("client_version", this.r);
        }
        if ("client_event".equals(this.y) || "app_download_client_event".equals(this.y) || "asset_prefetching_event".equals(this.y)) {
            if (this.Q != null) {
                jsonGenerator.a("referring_event", "android:" + this.Q);
            }
            if (this.P != null) {
                jsonGenerator.a("event_name", "android:" + this.P);
            }
            if (this.R != null) {
                jsonGenerator.a("limit_ad_tracking", Integer.parseInt(this.R));
            }
            jsonGenerator.a("ts", this.h);
            if (this.c != null) {
                jsonGenerator.a("server", this.c);
            }
            if (this.l != null) {
                jsonGenerator.a("protocol", this.l);
            }
            if (this.m >= 0) {
                jsonGenerator.a("stream_id", this.m);
            }
            if (this.n >= 0) {
                jsonGenerator.a("content_length", this.n);
            }
            if (this.i != -1) {
                jsonGenerator.a("duration_ms", this.i);
            }
            if (this.j != -1) {
                jsonGenerator.a("status_code", this.j);
            }
            if (this.k != -1) {
                jsonGenerator.a("failure_type", this.k);
            }
            if (this.s != null) {
                jsonGenerator.a("message", this.s);
            }
            if (this.a != null) {
                jsonGenerator.a("event_info", this.a);
            }
            if (this.u != null) {
                jsonGenerator.a("impression_id", this.u);
            }
            if (this.t != null) {
                jsonGenerator.a("event_value", this.t);
            }
            if (this.o != null) {
                jsonGenerator.a("url", this.o);
            }
            if (this.q != -1) {
                jsonGenerator.a("event_initiator", this.q);
            }
            if (this.v != null) {
                jsonGenerator.a("query", URLEncoder.encode(this.v, "UTF-8"));
            }
            if (this.x != -1) {
                jsonGenerator.a("position", this.x);
            }
            if (this.z != null) {
                jsonGenerator.a("context", this.z);
            }
            if (this.A != null) {
                jsonGenerator.a("profile_id", this.A);
            }
            if (this.F != null) {
                jsonGenerator.a("orientation", this.F);
            }
            if (this.b != -1) {
                jsonGenerator.a("network_status", this.b);
            }
            if (this.d != ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                jsonGenerator.a("signal_strength", this.d);
            }
            boolean z = false;
            if (this.G != null) {
                jsonGenerator.a("mobile_network_operator_iso_country_code", this.G);
                z = true;
            }
            if (this.H != null) {
                jsonGenerator.a("mobile_network_operator_code", this.H);
                z = true;
            }
            if (this.I != null) {
                jsonGenerator.a("mobile_network_operator_name", this.I);
                z = true;
            }
            if (this.J != null) {
                jsonGenerator.a("mobile_sim_provider_iso_country_code", this.J);
                z = true;
            }
            if (this.K != null) {
                jsonGenerator.a("mobile_sim_provider_code", this.K);
                z = true;
            }
            if (this.L != null) {
                jsonGenerator.a("mobile_sim_provider_name", this.L);
                z = true;
            }
            if (z) {
                jsonGenerator.a("is_roaming", this.M);
            }
            c(jsonGenerator);
            if (this.w != null) {
                this.w.a(jsonGenerator);
            }
            if (!this.g.isEmpty()) {
                jsonGenerator.d("items");
                for (ScribeItem b : this.g) {
                    b.b(jsonGenerator);
                }
                jsonGenerator.b();
            }
            if (!(this.V == null || this.V.isEmpty())) {
                jsonGenerator.e("associations");
                for (ScribeAssociation a : this.V) {
                    a.a(jsonGenerator);
                }
                jsonGenerator.d();
            }
            if (this.W != null) {
                jsonGenerator.e("external_ids");
                for (Entry entry : this.W.entrySet()) {
                    jsonGenerator.a((String) entry.getKey(), (String) entry.getValue());
                }
                jsonGenerator.d();
            }
            if (this.Y != -1) {
                jsonGenerator.a("referral_type", this.Y);
            }
            if (this.Z != null) {
                jsonGenerator.a("medium", this.Z);
            }
            if (this.aa != null) {
                jsonGenerator.a("campaign", this.aa);
            }
            if (this.ab != null) {
                jsonGenerator.a("query_term", this.ab);
            }
            if (this.ac != null) {
                jsonGenerator.a("campaign_content", this.ac);
            }
            if (this.ad != null) {
                jsonGenerator.a("gclid", this.ad);
            }
            if (this.ae != null) {
                jsonGenerator.a("source", this.ae);
                jsonGenerator.a("external_referer", this.ae);
            }
            if (this.S != -1) {
                jsonGenerator.a("cursor_or_page", this.S);
            }
            if (this.T != -1) {
                jsonGenerator.a("item_count", this.T);
            }
            if (!(this.U == null || this.U.isEmpty())) {
                jsonGenerator.d("targets");
                for (ScribeItem b2 : this.U) {
                    b2.b(jsonGenerator);
                }
                jsonGenerator.b();
            }
            if (this.af != null) {
                jsonGenerator.a("website_dest_url", this.af);
            }
            if (this.B) {
                jsonGenerator.a("business_profile", true);
            }
        } else if ("client_watch_error".equals(this.y) && this.D > 0) {
            jsonGenerator.a("product_name", "android");
            switch (this.D) {
                case WireMessage.WIRE_CHAT /*1*/:
                    jsonGenerator.a("type", "crash");
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    jsonGenerator.a("type", "error");
                    break;
            }
            jsonGenerator.a("error", this.C);
            if (this.E != null) {
                jsonGenerator.a("error_details", new String(this.E));
            }
        }
        for (ScribeSection a2 : this.f) {
            a2.a(jsonGenerator);
        }
        a(jsonGenerator);
        jsonGenerator.d();
    }

    private void c(JsonGenerator jsonGenerator) throws IOException {
        if (this.O != 0 || this.N != null) {
            jsonGenerator.e("sms_delivery_details");
            if (this.O > 0) {
                jsonGenerator.a("time_since", this.O);
            }
            if (this.N != null) {
                jsonGenerator.a("phone_number", this.N);
            }
            jsonGenerator.d();
        }
    }

    public String a() {
        return this.P;
    }

    public long b() {
        return this.p;
    }

    public T b(String... strArr) {
        this.P = a(strArr);
        return this;
    }

    public T a(String str) {
        this.Q = str;
        return this;
    }

    public T a(int i) {
        this.j = i;
        return this;
    }

    public T b(int i) {
        this.k = i;
        return this;
    }

    public T b(String str) {
        this.o = str;
        return this;
    }

    public T c(int i) {
        this.q = i;
        return this;
    }

    public T c(String str) {
        this.r = str;
        return this;
    }

    public T a(Context context) {
        this.r = an.a(context).e.toString();
        return this;
    }

    public T d(String str) {
        this.s = str;
        return this;
    }

    public T e(String str) {
        this.u = str;
        return this;
    }

    public T f(String str) {
        this.a = str;
        return this;
    }

    public T a(long j) {
        this.t = String.valueOf(j);
        return this;
    }

    public T g(String str) {
        this.v = str;
        return this;
    }

    public T a(String str, String str2, boolean z, boolean z2) {
        this.w = new SearchDetails(str, str2, null, z, z2);
        return this;
    }

    public T a(SearchDetails searchDetails) {
        this.w = searchDetails;
        return this;
    }

    public T d(int i) {
        this.x = i;
        return this;
    }

    public T h(String str) {
        this.y = str;
        return this;
    }

    public T i(String str) {
        this.z = str;
        return this;
    }

    public T j(String str) {
        this.A = str;
        return this;
    }

    public T a(k kVar) {
        this.l = kVar.o + "-" + kVar.p;
        return this;
    }

    public T k(String str) {
        this.C = str;
        return this;
    }

    public T l(String str) {
        this.F = str;
        return this;
    }

    public T a(boolean z) {
        this.R = z ? "1" : "0";
        return this;
    }

    public T e(int i) {
        this.T = i;
        return this;
    }

    public T b(long j) {
        this.i = j;
        return this;
    }

    public T m(String str) {
        this.af = str;
        return this;
    }

    public T b(boolean z) {
        this.B = z;
        return this;
    }

    public T a(List<? extends ScribeItem> list) {
        if (list != null) {
            this.g.addAll(list);
        }
        return this;
    }

    public T a(ScribeItem scribeItem) {
        if (scribeItem != null) {
            this.g.add(scribeItem);
        }
        return this;
    }

    public <I extends ScribeItem> I c() {
        return (ScribeItem) CollectionUtils.b(this.g);
    }

    public T b(ScribeItem scribeItem) {
        if (scribeItem != null) {
            if (this.U == null) {
                this.U = new ArrayList();
            }
            this.U.add(scribeItem);
        }
        return this;
    }

    public T a(ScribeAssociation scribeAssociation) {
        if (scribeAssociation != null) {
            if (this.V == null) {
                this.V = new ArrayList();
            }
            this.V.add(scribeAssociation);
        }
        return this;
    }

    public T a(String str, String str2) {
        if (this.W == null) {
            this.W = new HashMap();
        }
        this.W.put(str, str2);
        return this;
    }

    public T a(Throwable th, int i, String str, String str2) {
        this.y = "client_watch_error";
        this.D = i;
        this.C = th.getClass().getSimpleName();
        this.E = cfb.a(th).getBytes();
        this.a = str;
        this.r = str2;
        return this;
    }

    public T b(String str, String str2) {
        this.o = str;
        this.s = str2;
        return this;
    }

    public T b(List<? extends ScribeItem> list) {
        this.q = 2;
        if (list != null) {
            for (ScribeItem a : list) {
                a(a);
            }
        }
        return this;
    }

    public T a(String str, k kVar) {
        this.o = str;
        this.c = kVar.q;
        this.j = kVar.a;
        this.i = kVar.e;
        this.q = 2;
        a(kVar);
        this.m = kVar.n;
        this.n = kVar.k;
        if (this.Q == null && kVar.j != 0) {
            this.Q = Integer.toString(kVar.j);
        }
        return this;
    }

    public T a(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.Y = i;
        this.ae = str;
        this.Z = str2;
        this.aa = str3;
        this.ab = str4;
        this.ac = str5;
        this.ad = str6;
        this.s = str7;
        return this;
    }

    public T a(ScribeSection scribeSection) {
        this.y = "extended_media_details";
        this.f.add(scribeSection);
        return this;
    }

    public T b(Context context) {
        return a(context, false);
    }

    public T a(Context context, boolean z) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        this.G = telephonyManager.getNetworkCountryIso();
        this.H = telephonyManager.getNetworkOperator();
        this.I = telephonyManager.getNetworkOperatorName();
        this.J = telephonyManager.getSimCountryIso();
        this.K = telephonyManager.getSimOperator();
        this.L = telephonyManager.getSimOperatorName();
        this.M = telephonyManager.isNetworkRoaming();
        if (z) {
            this.N = telephonyManager.getLine1Number();
        }
        return this;
    }

    public T c(long j) {
        this.O = j;
        return this;
    }

    public static String d() {
        return "android";
    }

    public T e() {
        this.X = true;
        return this;
    }

    public boolean f() {
        return this.X;
    }
}
