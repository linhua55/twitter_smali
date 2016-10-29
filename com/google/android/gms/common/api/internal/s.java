package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.h;
import java.util.ArrayList;
import java.util.Iterator;

class s extends w {
    final /* synthetic */ n a;
    private final ArrayList<h> c;

    public s(n nVar, ArrayList<h> arrayList) {
        this.a = nVar;
        super(null);
        this.c = arrayList;
    }

    @WorkerThread
    public void a() {
        this.a.a.g.d = this.a.j();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((h) it.next()).a(this.a.o, this.a.a.g.d);
        }
    }
}
