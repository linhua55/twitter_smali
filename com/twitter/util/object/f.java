package com.twitter.util.object;

import com.twitter.util.aj;
import java.lang.reflect.Field;

/* compiled from: Twttr */
public abstract class f<T> {
    protected abstract T c();

    public boolean bo_() {
        return true;
    }

    public final T q() {
        T r = r();
        if (r != null) {
            return r;
        }
        throw new IllegalStateException("The builder configuration is invalid: " + getClass().getName() + aj.a() + d());
    }

    public final T r() {
        X_();
        if (bh_()) {
            return c();
        }
        return null;
    }

    protected void X_() {
    }

    protected boolean bh_() {
        return bo_();
    }

    private String d() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            for (Class cls = getClass(); cls != f.class; cls = cls.getSuperclass()) {
                for (Field field : cls.getDeclaredFields()) {
                    field.setAccessible(true);
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append(aj.a());
                    }
                    stringBuilder.append(field.getName()).append(": ").append(field.get(this));
                }
            }
        } catch (Exception e) {
        }
        return stringBuilder.toString();
    }
}
