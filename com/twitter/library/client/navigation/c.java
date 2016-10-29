package com.twitter.library.client.navigation;

import android.support.v7.util.SortedList;
import com.twitter.util.collection.MutableList;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: Twttr */
public class c {
    private final List<WeakReference<f>> a;
    private final SortedList<b> b;

    public c() {
        this.a = MutableList.a();
        this.b = new SortedList(b.class, new e());
    }

    public void a(f fVar) {
        this.a.add(new WeakReference(fVar));
    }

    public void a(List<b> list) {
        if (!list.isEmpty()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                b bVar = (b) list.get(i);
                bVar.a(this);
                this.b.add(bVar);
            }
            a();
        }
    }

    public void a() {
        for (WeakReference weakReference : this.a) {
            f fVar = (f) weakReference.get();
            if (fVar != null) {
                fVar.c();
            }
        }
    }

    public SortedList<b> b() {
        return this.b;
    }

    public b a(int i) {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = (b) this.b.get(i2);
            if (bVar.a() == i) {
                return bVar;
            }
        }
        return null;
    }
}
