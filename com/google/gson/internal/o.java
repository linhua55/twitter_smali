package com.google.gson.internal;

import com.google.gson.a;
import com.google.gson.b;
import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.u;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import on;
import oq;
import or;
import qz;

/* compiled from: Twttr */
public final class o implements u, Cloneable {
    public static final o a;
    private double b;
    private int c;
    private boolean d;
    private boolean e;
    private List<a> f;
    private List<a> g;

    public o() {
        this.b = -1.0d;
        this.c = 136;
        this.d = true;
        this.f = Collections.emptyList();
        this.g = Collections.emptyList();
    }

    protected /* synthetic */ Object clone() throws CloneNotSupportedException {
        return a();
    }

    static {
        a = new o();
    }

    protected o a() {
        try {
            return (o) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public <T> s<T> create(d dVar, qz<T> qzVar) {
        Class a = qzVar.a();
        boolean a2 = a(a, true);
        boolean a3 = a(a, false);
        if (a2 || a3) {
            return new p(this, a3, a2, dVar, qzVar);
        }
        return null;
    }

    public boolean a(Field field, boolean z) {
        if ((this.c & field.getModifiers()) != 0) {
            return true;
        }
        if (this.b != -1.0d && !a((oq) field.getAnnotation(oq.class), (or) field.getAnnotation(or.class))) {
            return true;
        }
        if (field.isSynthetic()) {
            return true;
        }
        if (this.e) {
            on onVar = (on) field.getAnnotation(on.class);
            if (onVar == null || (z ? !onVar.a() : !onVar.b())) {
                return true;
            }
        }
        if (!this.d && b(field.getType())) {
            return true;
        }
        if (a(field.getType())) {
            return true;
        }
        List<a> list = z ? this.f : this.g;
        if (!list.isEmpty()) {
            b bVar = new b(field);
            for (a a : list) {
                if (a.a(bVar)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean a(Class<?> cls, boolean z) {
        if (this.b != -1.0d && !a((oq) cls.getAnnotation(oq.class), (or) cls.getAnnotation(or.class))) {
            return true;
        }
        if (!this.d && b(cls)) {
            return true;
        }
        if (a((Class) cls)) {
            return true;
        }
        for (a a : z ? this.f : this.g) {
            if (a.a((Class) cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean a(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean b(Class<?> cls) {
        return cls.isMemberClass() && !c(cls);
    }

    private boolean c(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean a(oq oqVar, or orVar) {
        return a(oqVar) && a(orVar);
    }

    private boolean a(oq oqVar) {
        if (oqVar == null || oqVar.a() <= this.b) {
            return true;
        }
        return false;
    }

    private boolean a(or orVar) {
        if (orVar == null || orVar.a() > this.b) {
            return true;
        }
        return false;
    }
}
