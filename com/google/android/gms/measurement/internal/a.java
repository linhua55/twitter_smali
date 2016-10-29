package com.google.android.gms.measurement.internal;

import java.util.Iterator;

class a implements Iterator<String> {
    Iterator<String> a;
    final /* synthetic */ EventParams b;

    a(EventParams eventParams) {
        this.b = eventParams;
        this.a = this.b.b.keySet().iterator();
    }

    public String a() {
        return (String) this.a.next();
    }

    public boolean hasNext() {
        return this.a.hasNext();
    }

    public /* synthetic */ Object next() {
        return a();
    }

    public void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
