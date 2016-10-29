package com.crashlytics.android.answers;

import android.app.Activity;
import java.util.Collections;
import java.util.Map;

/* compiled from: Twttr */
final class SessionEvent {
    public final ac a;
    public final long b;
    public final Type c;
    public final Map<String, String> d;
    public final String e;
    public final Map<String, Object> f;
    public final String g;
    public final Map<String, Object> h;
    private String i;

    /* compiled from: Twttr */
    enum Type {
        START,
        RESUME,
        PAUSE,
        STOP,
        CRASH,
        INSTALL,
        CUSTOM,
        PREDEFINED
    }

    public static ab a(Type type, Activity activity) {
        return new ab(type).a(Collections.singletonMap("activity", activity.getClass().getName()));
    }

    public static ab a() {
        return new ab(Type.INSTALL);
    }

    public static ab a(String str) {
        return new ab(Type.CRASH).a(Collections.singletonMap("sessionId", str));
    }

    public static ab a(String str, String str2) {
        return a(str).b(Collections.singletonMap("exceptionName", str2));
    }

    private SessionEvent(ac acVar, long j, Type type, Map<String, String> map, String str, Map<String, Object> map2, String str2, Map<String, Object> map3) {
        this.a = acVar;
        this.b = j;
        this.c = type;
        this.d = map;
        this.e = str;
        this.f = map2;
        this.g = str2;
        this.h = map3;
    }

    public String toString() {
        if (this.i == null) {
            this.i = "[" + getClass().getSimpleName() + ": " + "timestamp=" + this.b + ", type=" + this.c + ", details=" + this.d + ", customType=" + this.e + ", customAttributes=" + this.f + ", predefinedType=" + this.g + ", predefinedAttributes=" + this.h + ", metadata=[" + this.a + "]]";
        }
        return this.i;
    }
}
