package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import com.google.gson.u;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/* compiled from: Twttr */
/* renamed from: po */
public final class po extends s<Time> {
    public static final u a;
    private final DateFormat b;

    public po() {
        this.b = new SimpleDateFormat("hh:mm:ss a");
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Time) obj);
    }

    static {
        a = new pp();
    }

    public synchronized Time a(a aVar) throws IOException {
        Time time;
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            time = null;
        } else {
            try {
                time = new Time(this.b.parse(aVar.h()).getTime());
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            }
        }
        return time;
    }

    public synchronized void a(c cVar, Time time) throws IOException {
        cVar.b(time == null ? null : this.b.format(time));
    }
}
