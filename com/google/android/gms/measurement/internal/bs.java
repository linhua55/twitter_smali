package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;
import com.google.android.gms.internal.wn;
import com.google.android.gms.internal.wo;
import com.google.android.gms.internal.wp;
import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;
import java.util.Map;

public class bs extends cl {
    private final Map<String, Map<String, String>> a;
    private final Map<String, Map<String, Boolean>> b;
    private final Map<String, wo> c;

    bs(bx bxVar) {
        super(bxVar);
        this.a = new ArrayMap();
        this.b = new ArrayMap();
        this.c = new ArrayMap();
    }

    private Map<String, String> a(wo woVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (!(woVar == null || woVar.d == null)) {
            for (wp wpVar : woVar.d) {
                if (wpVar != null) {
                    arrayMap.put(wpVar.a, wpVar.b);
                }
            }
        }
        return arrayMap;
    }

    @WorkerThread
    private wo b(String str, byte[] bArr) {
        if (bArr == null) {
            return new wo();
        }
        xm a = xm.a(bArr);
        wo woVar = new wo();
        try {
            woVar.a(a);
            s().z().a("Parsed config. version, gmp_app_id", woVar.a, woVar.b);
            return woVar;
        } catch (IOException e) {
            s().c().a("Unable to merge remote config", str, e);
            return null;
        }
    }

    private Map<String, Boolean> b(wo woVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (!(woVar == null || woVar.e == null)) {
            for (wn wnVar : woVar.e) {
                if (wnVar != null) {
                    arrayMap.put(wnVar.a, wnVar.b);
                }
            }
        }
        return arrayMap;
    }

    @WorkerThread
    private void b(String str) {
        G();
        f();
        bm.a(str);
        if (!this.c.containsKey(str)) {
            byte[] d = n().d(str);
            if (d == null) {
                this.a.put(str, null);
                this.b.put(str, null);
                this.c.put(str, null);
                return;
            }
            wo b = b(str, d);
            this.a.put(str, a(b));
            this.b.put(str, b(b));
            this.c.put(str, b);
        }
    }

    @WorkerThread
    protected wo a(String str) {
        G();
        f();
        bm.a(str);
        b(str);
        return (wo) this.c.get(str);
    }

    @WorkerThread
    String a(String str, String str2) {
        f();
        b(str);
        Map map = (Map) this.a.get(str);
        return map != null ? (String) map.get(str2) : null;
    }

    protected void a() {
    }

    @WorkerThread
    protected boolean a(String str, byte[] bArr) {
        G();
        f();
        bm.a(str);
        wo b = b(str, bArr);
        if (b == null) {
            return false;
        }
        this.b.put(str, b(b));
        this.c.put(str, b);
        this.a.put(str, a(b));
        g().a(str, b.f);
        try {
            b.f = null;
            byte[] bArr2 = new byte[b.e()];
            b.a(zzsn.a(bArr2));
            bArr = bArr2;
        } catch (IOException e) {
            s().c().a("Unable to serialize reduced-size config.  Storing full config instead.", e);
        }
        n().a(str, bArr);
        return true;
    }

    @WorkerThread
    boolean b(String str, String str2) {
        f();
        b(str);
        Map map = (Map) this.b.get(str);
        if (map == null) {
            return false;
        }
        Boolean bool = (Boolean) map.get(str2);
        return bool == null ? false : bool.booleanValue();
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public /* bridge */ /* synthetic */ void e() {
        super.e();
    }

    public /* bridge */ /* synthetic */ void f() {
        super.f();
    }

    public /* bridge */ /* synthetic */ ai g() {
        return super.g();
    }

    public /* bridge */ /* synthetic */ d h() {
        return super.h();
    }

    public /* bridge */ /* synthetic */ ba i() {
        return super.i();
    }

    public /* bridge */ /* synthetic */ aq j() {
        return super.j();
    }

    public /* bridge */ /* synthetic */ i k() {
        return super.k();
    }

    public /* bridge */ /* synthetic */ vj l() {
        return super.l();
    }

    public /* bridge */ /* synthetic */ Context m() {
        return super.m();
    }

    public /* bridge */ /* synthetic */ ak n() {
        return super.n();
    }

    public /* bridge */ /* synthetic */ ag o() {
        return super.o();
    }

    public /* bridge */ /* synthetic */ bs p() {
        return super.p();
    }

    public /* bridge */ /* synthetic */ u q() {
        return super.q();
    }

    public /* bridge */ /* synthetic */ bt r() {
        return super.r();
    }

    public /* bridge */ /* synthetic */ bc s() {
        return super.s();
    }

    public /* bridge */ /* synthetic */ bn t() {
        return super.t();
    }

    public /* bridge */ /* synthetic */ aj u() {
        return super.u();
    }
}
