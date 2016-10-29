package com.facebook.datasource;

import bc;
import bz;
import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
class m extends AbstractDataSource<T> {
    final /* synthetic */ l a;
    @GuardedBy("IncreasingQualityDataSource.this")
    @Nullable
    private ArrayList<d<T>> b;
    @GuardedBy("IncreasingQualityDataSource.this")
    private int c;

    public m(l lVar) {
        this.a = lVar;
        int size = l.a(lVar).size();
        this.c = size;
        this.b = new ArrayList(size);
        int i = 0;
        while (i < size) {
            d dVar = (d) ((bz) l.a(lVar).get(i)).a();
            this.b.add(dVar);
            dVar.a(new n(this, i), bc.a());
            if (!dVar.c()) {
                i++;
            } else {
                return;
            }
        }
    }

    @Nullable
    private synchronized d<T> a(int i) {
        d<T> dVar;
        dVar = (this.b == null || i >= this.b.size()) ? null : (d) this.b.get(i);
        return dVar;
    }

    @Nullable
    private synchronized d<T> b(int i) {
        d<T> dVar = null;
        synchronized (this) {
            if (this.b != null && i < this.b.size()) {
                dVar = (d) this.b.set(i, null);
            }
        }
        return dVar;
    }

    @Nullable
    private synchronized d<T> j() {
        return a(this.c);
    }

    @Nullable
    public synchronized T d() {
        d j;
        j = j();
        return j != null ? j.d() : null;
    }

    public synchronized boolean c() {
        boolean z;
        d j = j();
        z = j != null && j.c();
        return z;
    }

    public boolean h() {
        synchronized (this) {
            if (super.h()) {
                ArrayList arrayList = this.b;
                this.b = null;
                if (arrayList != null) {
                    for (int i = 0; i < arrayList.size(); i++) {
                        a((d) arrayList.get(i));
                    }
                }
                return true;
            }
            return false;
        }
    }

    private void a(int i, d<T> dVar) {
        a(i, (d) dVar, dVar.b());
        if (dVar == j()) {
            boolean z = i == 0 && dVar.b();
            a(null, z);
        }
    }

    private void b(int i, d<T> dVar) {
        a(c(i, dVar));
        if (i == 0) {
            a(dVar.f());
        }
    }

    private void a(int i, d<T> dVar, boolean z) {
        synchronized (this) {
            int i2 = this.c;
            if (dVar != a(i) || i == this.c) {
                return;
            }
            if (j() == null || (z && i < this.c)) {
                this.c = i;
            } else {
                i = i2;
            }
            for (int i3 = this.c; i3 > i; i3--) {
                a(b(i3));
            }
        }
    }

    @Nullable
    private synchronized d<T> c(int i, d<T> dVar) {
        if (dVar == j()) {
            dVar = null;
        } else if (dVar == a(i)) {
            dVar = b(i);
        }
        return dVar;
    }

    private void a(d<T> dVar) {
        if (dVar != null) {
            dVar.h();
        }
    }
}
