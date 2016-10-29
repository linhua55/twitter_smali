package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import com.google.gson.u;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: Twttr */
/* renamed from: ow */
public final class ow extends s<Date> {
    public static final u a;
    private final DateFormat b;
    private final DateFormat c;
    private final DateFormat d;

    public ow() {
        this.b = DateFormat.getDateTimeInstance(2, 2, Locale.US);
        this.c = DateFormat.getDateTimeInstance(2, 2);
        this.d = ow.a();
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Date) obj);
    }

    static {
        a = new ox();
    }

    private static DateFormat a() {
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    public Date a(a aVar) throws IOException {
        if (aVar.f() != JsonToken.i) {
            return a(aVar.h());
        }
        aVar.j();
        return null;
    }

    private synchronized Date a(String str) {
        Date parse;
        try {
            parse = this.c.parse(str);
        } catch (ParseException e) {
            try {
                parse = this.b.parse(str);
            } catch (ParseException e2) {
                try {
                    parse = this.d.parse(str);
                } catch (Throwable e3) {
                    throw new JsonSyntaxException(str, e3);
                }
            }
        }
        return parse;
    }

    public synchronized void a(c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.f();
        } else {
            cVar.b(this.b.format(date));
        }
    }
}
