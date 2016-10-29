package com.twitter.android.util;

import java.util.Calendar;

/* compiled from: Twttr */
public class h {
    public boolean a(Calendar calendar) {
        Calendar instance = Calendar.getInstance();
        instance.add(5, -1);
        return a(calendar, instance);
    }

    public boolean a(Calendar calendar, Calendar calendar2) {
        return calendar2.get(5) == calendar.get(5) && calendar2.get(2) == calendar.get(2) && calendar2.get(1) == calendar.get(1);
    }
}
