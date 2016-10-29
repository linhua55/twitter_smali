package com.twitter.library.commerce.model;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.Calendar;
import java.util.TimeZone;

/* compiled from: Twttr */
final class u extends k<Calendar> {
    u() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, Calendar calendar) throws IOException {
        qVar.b(calendar.getTimeZone().getID()).b(calendar.getTimeInMillis());
    }

    protected Calendar a(p pVar, int i) throws IOException, ClassNotFoundException {
        TimeZone timeZone = TimeZone.getTimeZone(pVar.i());
        long f = pVar.f();
        Calendar instance = Calendar.getInstance(timeZone);
        instance.setTimeInMillis(f);
        return instance;
    }
}
