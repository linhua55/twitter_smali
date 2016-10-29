package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xe;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public class ah implements ap {
    final Map<i<?>, h> a;
    final Map<i<?>, ConnectionResult> b;
    final w c;
    final Map<a<?>, Integer> d;
    final g<? extends xd, xe> e;
    int f;
    final y g;
    final aq h;
    private final Lock i;
    private final Condition j;
    private final Context k;
    private final f l;
    private final aj m;
    private volatile ag n;
    private ConnectionResult o;

    public ah(Context context, y yVar, Lock lock, Looper looper, f fVar, Map<i<?>, h> map, w wVar, Map<a<?>, Integer> map2, g<? extends xd, xe> gVar, ArrayList<g> arrayList, aq aqVar) {
        this.b = new HashMap();
        this.o = null;
        this.k = context;
        this.i = lock;
        this.l = fVar;
        this.a = map;
        this.c = wVar;
        this.d = map2;
        this.e = gVar;
        this.g = yVar;
        this.h = aqVar;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((g) it.next()).a(this);
        }
        this.m = new aj(this, looper);
        this.j = lock.newCondition();
        this.n = new x(this);
    }

    public <A extends h, R extends com.google.android.gms.common.api.w, T extends c<R, A>> T a(@NonNull T t) {
        return this.n.a((c) t);
    }

    public void a() {
        this.n.c();
    }

    public void a(int i) {
        this.i.lock();
        try {
            this.n.a(i);
        } finally {
            this.i.unlock();
        }
    }

    public void a(@Nullable Bundle bundle) {
        this.i.lock();
        try {
            this.n.a(bundle);
        } finally {
            this.i.unlock();
        }
    }

    void a(ConnectionResult connectionResult) {
        this.i.lock();
        try {
            this.o = connectionResult;
            this.n = new x(this);
            this.n.a();
            this.j.signalAll();
        } finally {
            this.i.unlock();
        }
    }

    public void a(@NonNull ConnectionResult connectionResult, @NonNull a<?> aVar, int i) {
        this.i.lock();
        try {
            this.n.a(connectionResult, aVar, i);
        } finally {
            this.i.unlock();
        }
    }

    void a(ai aiVar) {
        this.m.sendMessage(this.m.obtainMessage(1, aiVar));
    }

    void a(RuntimeException runtimeException) {
        this.m.sendMessage(this.m.obtainMessage(2, runtimeException));
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "  ";
        for (a aVar : this.d.keySet()) {
            printWriter.append(str).append(aVar.e()).println(":");
            ((h) this.a.get(aVar.c())).a(str2, fileDescriptor, printWriter, strArr);
        }
    }

    public <A extends h, T extends c<? extends com.google.android.gms.common.api.w, A>> T b(@NonNull T t) {
        return this.n.b(t);
    }

    public boolean b() {
        boolean b = this.n.b();
        if (b) {
            this.b.clear();
        }
        return b;
    }

    public boolean c() {
        return this.n instanceof k;
    }

    public boolean d() {
        return this.n instanceof n;
    }

    public void e() {
        if (c()) {
            ((k) this.n).d();
        }
    }

    void f() {
        this.i.lock();
        try {
            this.n = new n(this, this.c, this.d, this.l, this.e, this.i, this.k);
            this.n.a();
            this.j.signalAll();
        } finally {
            this.i.unlock();
        }
    }

    void g() {
        this.i.lock();
        try {
            this.g.i();
            this.n = new k(this);
            this.n.a();
            this.j.signalAll();
        } finally {
            this.i.unlock();
        }
    }

    void h() {
        for (h d : this.a.values()) {
            d.d();
        }
    }
}
