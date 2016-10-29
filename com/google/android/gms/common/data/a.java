package com.google.android.gms.common.data;

import java.util.Iterator;

public abstract class a<T> implements b<T> {
    protected final DataHolder a;

    protected a(DataHolder dataHolder) {
        this.a = dataHolder;
        if (this.a != null) {
            this.a.a((Object) this);
        }
    }

    public void a() {
        if (this.a != null) {
            this.a.i();
        }
    }

    public int b() {
        return this.a == null ? 0 : this.a.g();
    }

    public Iterator<T> iterator() {
        return new f(this);
    }
}
