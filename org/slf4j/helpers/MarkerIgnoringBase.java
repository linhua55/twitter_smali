package org.slf4j.helpers;

import org.slf4j.Marker;
import org.slf4j.b;

/* compiled from: Twttr */
public abstract class MarkerIgnoringBase extends NamedLoggerBase implements b {
    private static final long serialVersionUID = 9044267456635152283L;

    public /* bridge */ /* synthetic */ String a() {
        return super.a();
    }

    public void a(Marker marker, String str, Object... objArr) {
        a(str, objArr);
    }

    public void b(Marker marker, String str, Object... objArr) {
        b(str, objArr);
    }

    public void c(Marker marker, String str, Object... objArr) {
        c(str, objArr);
    }

    public void d(Marker marker, String str, Object... objArr) {
        d(str, objArr);
    }

    public void e(Marker marker, String str, Object... objArr) {
        e(str, objArr);
    }

    public String toString() {
        return getClass().getName() + "(" + a() + ")";
    }
}
