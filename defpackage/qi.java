package defpackage;

import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* compiled from: Twttr */
/* renamed from: qi */
final class qi extends s<Calendar> {
    qi() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (Calendar) obj);
    }

    public Calendar a(a aVar) throws IOException {
        int i = 0;
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        aVar.c();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (aVar.f() != JsonToken.d) {
            String g = aVar.g();
            int m = aVar.m();
            if ("year".equals(g)) {
                i6 = m;
            } else if ("month".equals(g)) {
                i5 = m;
            } else if ("dayOfMonth".equals(g)) {
                i4 = m;
            } else if ("hourOfDay".equals(g)) {
                i3 = m;
            } else if ("minute".equals(g)) {
                i2 = m;
            } else if ("second".equals(g)) {
                i = m;
            }
        }
        aVar.d();
        return new GregorianCalendar(i6, i5, i4, i3, i2, i);
    }

    public void a(c cVar, Calendar calendar) throws IOException {
        if (calendar == null) {
            cVar.f();
            return;
        }
        cVar.d();
        cVar.a("year");
        cVar.a((long) calendar.get(1));
        cVar.a("month");
        cVar.a((long) calendar.get(2));
        cVar.a("dayOfMonth");
        cVar.a((long) calendar.get(5));
        cVar.a("hourOfDay");
        cVar.a((long) calendar.get(11));
        cVar.a("minute");
        cVar.a((long) calendar.get(12));
        cVar.a("second");
        cVar.a((long) calendar.get(13));
        cVar.e();
    }
}
