package org.slf4j.helpers;

import org.slf4j.Marker;

/* compiled from: Twttr */
public class b implements org.slf4j.b {
    private final String a;
    private volatile org.slf4j.b b;

    public b(String str) {
        this.a = str;
    }

    public String a() {
        return this.a;
    }

    public void a(String str, Object... objArr) {
        b().a(str, objArr);
    }

    public void a(Marker marker, String str, Object... objArr) {
        b().a(marker, str, objArr);
    }

    public void b(String str, Object... objArr) {
        b().b(str, objArr);
    }

    public void a(String str, Throwable th) {
        b().a(str, th);
    }

    public void b(Marker marker, String str, Object... objArr) {
        b().b(marker, str, objArr);
    }

    public void c(String str, Object... objArr) {
        b().c(str, objArr);
    }

    public void c(Marker marker, String str, Object... objArr) {
        b().c(marker, str, objArr);
    }

    public void a(String str, Object obj, Object obj2) {
        b().a(str, obj, obj2);
    }

    public void d(String str, Object... objArr) {
        b().d(str, objArr);
    }

    public void b(String str, Throwable th) {
        b().b(str, th);
    }

    public void d(Marker marker, String str, Object... objArr) {
        b().d(marker, str, objArr);
    }

    public void b(String str, Object obj, Object obj2) {
        b().b(str, obj, obj2);
    }

    public void e(String str, Object... objArr) {
        b().e(str, objArr);
    }

    public void e(Marker marker, String str, Object... objArr) {
        b().e(marker, str, objArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this.a.equals(((b) obj).a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    org.slf4j.b b() {
        return this.b != null ? this.b : NOPLogger.a;
    }

    public void a(org.slf4j.b bVar) {
        this.b = bVar;
    }
}
