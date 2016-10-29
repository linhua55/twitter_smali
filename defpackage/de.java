package defpackage;

import bt;
import bz;
import com.facebook.datasource.d;
import dc;

/* compiled from: Twttr */
/* renamed from: de */
class de implements bz<d<IMAGE>> {
    final /* synthetic */ Object a;
    final /* synthetic */ Object b;
    final /* synthetic */ boolean c;
    final /* synthetic */ dc d;

    de(dc dcVar, Object obj, Object obj2, boolean z) {
        this.d = dcVar;
        this.a = obj;
        this.b = obj2;
        this.c = z;
    }

    public /* synthetic */ Object a() {
        return b();
    }

    public d<IMAGE> b() {
        return this.d.a(this.a, this.b, this.c);
    }

    public String toString() {
        return bt.a(this).a("request", this.a.toString()).toString();
    }
}
