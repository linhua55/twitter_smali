package com.crashlytics.android.answers;

import java.util.Set;

/* compiled from: Twttr */
class v implements r {
    static final Set<Type> b;
    final int a;

    static {
        b = new SamplingEventFilter$1();
    }

    public v(int i) {
        this.a = i;
    }

    public boolean a(SessionEvent sessionEvent) {
        boolean z;
        if (b.contains(sessionEvent.c) && sessionEvent.a.g == null) {
            z = true;
        } else {
            z = false;
        }
        boolean z2;
        if (Math.abs(sessionEvent.a.c.hashCode() % this.a) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && r3) {
            return true;
        }
        return false;
    }
}
