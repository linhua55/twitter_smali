package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@oi
public class pu {
    private final pw a;
    private final LinkedList<pv> b;
    private final Object c;
    private final String d;
    private final String e;
    private long f;
    private long g;
    private boolean h;
    private long i;
    private long j;
    private long k;
    private long l;

    public pu(pw pwVar, String str, String str2) {
        this.c = new Object();
        this.f = -1;
        this.g = -1;
        this.h = false;
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.l = -1;
        this.a = pwVar;
        this.d = str;
        this.e = str2;
        this.b = new LinkedList();
    }

    public pu(String str, String str2) {
        this(ar.h(), str, str2);
    }

    public void a() {
        synchronized (this.c) {
            if (this.l != -1 && this.g == -1) {
                this.g = SystemClock.elapsedRealtime();
                this.a.a(this);
            }
            this.a.d().c();
        }
    }

    public void a(long j) {
        synchronized (this.c) {
            this.l = j;
            if (this.l != -1) {
                this.a.a(this);
            }
        }
    }

    public void a(AdRequestParcel adRequestParcel) {
        synchronized (this.c) {
            this.k = SystemClock.elapsedRealtime();
            this.a.d().a(adRequestParcel, this.k);
        }
    }

    public void a(boolean z) {
        synchronized (this.c) {
            if (this.l != -1) {
                this.i = SystemClock.elapsedRealtime();
                if (!z) {
                    this.g = this.i;
                    this.a.a(this);
                }
            }
        }
    }

    public void b() {
        synchronized (this.c) {
            if (this.l != -1) {
                pv pvVar = new pv();
                pvVar.c();
                this.b.add(pvVar);
                this.j++;
                this.a.d().b();
                this.a.a(this);
            }
        }
    }

    public void b(long j) {
        synchronized (this.c) {
            if (this.l != -1) {
                this.f = j;
                this.a.a(this);
            }
        }
    }

    public void b(boolean z) {
        synchronized (this.c) {
            if (this.l != -1) {
                this.h = z;
                this.a.a(this);
            }
        }
    }

    public void c() {
        synchronized (this.c) {
            if (!(this.l == -1 || this.b.isEmpty())) {
                pv pvVar = (pv) this.b.getLast();
                if (pvVar.a() == -1) {
                    pvVar.b();
                    this.a.a(this);
                }
            }
        }
    }

    public Bundle d() {
        Bundle bundle;
        synchronized (this.c) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.d);
            bundle.putString("slotid", this.e);
            bundle.putBoolean("ismediation", this.h);
            bundle.putLong("treq", this.k);
            bundle.putLong("tresponse", this.l);
            bundle.putLong("timp", this.g);
            bundle.putLong("tload", this.i);
            bundle.putLong("pcc", this.j);
            bundle.putLong("tfetch", this.f);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                arrayList.add(((pv) it.next()).d());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
