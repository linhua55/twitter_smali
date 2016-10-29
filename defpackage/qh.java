package defpackage;

import com.google.gson.s;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

/* compiled from: Twttr */
/* renamed from: qh */
class qh extends s<Timestamp> {
    final /* synthetic */ s a;
    final /* synthetic */ qg b;

    qh(qg qgVar, s sVar) {
        this.b = qgVar;
        this.a = sVar;
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Timestamp) obj);
    }

    public Timestamp a(a aVar) throws IOException {
        Date date = (Date) this.a.read(aVar);
        return date != null ? new Timestamp(date.getTime()) : null;
    }

    public void a(c cVar, Timestamp timestamp) throws IOException {
        this.a.write(cVar, timestamp);
    }
}
