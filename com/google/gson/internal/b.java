package com.google.gson.internal;

import com.google.gson.k;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import qz;

/* compiled from: Twttr */
public final class b {
    private final Map<Type, k<?>> a;

    public b(Map<Type, k<?>> map) {
        this.a = map;
    }

    public <T> y<T> a(qz<T> qzVar) {
        Type b = qzVar.b();
        Class a = qzVar.a();
        k kVar = (k) this.a.get(b);
        if (kVar != null) {
            return new c(this, kVar, b);
        }
        kVar = (k) this.a.get(a);
        if (kVar != null) {
            return new g(this, kVar, b);
        }
        y<T> a2 = a(a);
        if (a2 != null) {
            return a2;
        }
        a2 = a(b, a);
        return a2 == null ? b(b, a) : a2;
    }

    private <T> y<T> a(Class<? super T> cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new h(this, declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private <T> y<T> a(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new i(this);
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new j(this, type);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new k(this);
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new l(this);
            }
            return new m(this);
        } else if (!Map.class.isAssignableFrom(cls)) {
            return null;
        } else {
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new n(this);
            }
            if (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(qz.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) {
                return new e(this);
            }
            return new d(this);
        }
    }

    private <T> y<T> b(Type type, Class<? super T> cls) {
        return new f(this, cls, type);
    }

    public String toString() {
        return this.a.toString();
    }
}
