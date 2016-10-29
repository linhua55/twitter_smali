package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.uc;
import com.google.android.gms.internal.ul;
import com.google.android.gms.internal.vj;
import com.google.android.gms.internal.vl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

public final class b {
    public static final i<ul> a;
    public static final g<ul, d> b;
    public static final a<d> c;
    public static final g d;
    private final Context e;
    private final String f;
    private final int g;
    private String h;
    private int i;
    private String j;
    private String k;
    private final boolean l;
    private int m;
    private final g n;
    private final vj o;
    private final a p;
    private f q;

    static {
        a = new i();
        b = new c();
        c = new a("ClearcutLogger.API", b, a);
        d = new uc();
    }

    public b(Context context, int i, String str, String str2, String str3, boolean z, g gVar, vj vjVar, f fVar, a aVar) {
        this.i = -1;
        this.m = 0;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.e = applicationContext;
        this.f = context.getPackageName();
        this.g = a(context);
        this.i = i;
        this.h = str;
        this.j = str2;
        this.k = str3;
        this.l = z;
        this.n = gVar;
        this.o = vjVar;
        if (fVar == null) {
            fVar = new f();
        }
        this.q = fVar;
        this.p = aVar;
        this.m = 0;
        if (this.l) {
            bm.b(this.j == null, "can't be anonymous with an upload account");
        }
    }

    @Deprecated
    public b(Context context, String str, String str2, String str3) {
        this(context, -1, str, str2, str3, false, d, vl.d(), null, a.a);
    }

    private int a(Context context) {
        int i = 0;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.");
            return i;
        }
    }

    private static int[] b(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            iArr[i] = ((Integer) it.next()).intValue();
            i = i2;
        }
        return iArr;
    }

    public d a(byte[] bArr) {
        return new d(this, bArr, null);
    }

    public boolean a(n nVar, long j, TimeUnit timeUnit) {
        return this.n.a(nVar, j, timeUnit);
    }
}
