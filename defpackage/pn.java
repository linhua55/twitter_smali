package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.u;
import java.sql.Date;

/* compiled from: Twttr */
/* renamed from: pn */
final class pn implements u {
    pn() {
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        return qzVar.a() == Date.class ? new pm() : null;
    }
}
