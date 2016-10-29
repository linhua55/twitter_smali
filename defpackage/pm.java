package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import com.google.gson.u;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/* compiled from: Twttr */
/* renamed from: pm */
public final class pm extends s<Date> {
    public static final u a;
    private final DateFormat b;

    public pm() {
        this.b = new SimpleDateFormat("MMM d, yyyy");
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Date) obj);
    }

    static {
        a = new pn();
    }

    public synchronized Date a(a aVar) throws IOException {
        Date date;
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            date = null;
        } else {
            try {
                date = new Date(this.b.parse(aVar.h()).getTime());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
        return date;
    }

    public synchronized void a(c cVar, Date date) throws IOException {
        cVar.b(date == null ? null : this.b.format(date));
    }
}
