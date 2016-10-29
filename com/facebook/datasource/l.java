package com.facebook.datasource;

import bt;
import defpackage.bx;
import defpackage.bz;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class l<T> implements bz<d<T>> {
    private final List<bz<d<T>>> a;

    public /* synthetic */ Object a() {
        return b();
    }

    private l(List<bz<d<T>>> list) {
        bx.a(!list.isEmpty(), (Object) "List of suppliers is empty!");
        this.a = list;
    }

    public static <T> l<T> a(List<bz<d<T>>> list) {
        return new l(list);
    }

    public d<T> b() {
        return new m(this);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        return bt.a(this.a, ((l) obj).a);
    }

    public String toString() {
        return bt.a(this).a("list", this.a).toString();
    }
}
