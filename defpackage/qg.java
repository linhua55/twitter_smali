package defpackage;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.u;
import java.sql.Timestamp;
import java.util.Date;

/* compiled from: Twttr */
/* renamed from: qg */
final class qg implements u {
    qg() {
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        if (qzVar.a() != Timestamp.class) {
            return null;
        }
        return new qh(this, dVar.a(Date.class));
    }
}
