package defpackage;

import com.google.gson.internal.$Gson.Types;
import com.google.gson.internal.a;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* compiled from: Twttr */
/* renamed from: qz */
public class qz<T> {
    final Class<? super T> a;
    final Type b;
    final int c;

    protected qz() {
        this.b = qz.a(getClass());
        this.a = Types.e(this.b);
        this.c = this.b.hashCode();
    }

    qz(Type type) {
        this.b = Types.d((Type) a.a(type));
        this.a = Types.e(this.b);
        this.c = this.b.hashCode();
    }

    static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return Types.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public final Class<? super T> a() {
        return this.a;
    }

    public final Type b() {
        return this.b;
    }

    public final int hashCode() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof qz) && Types.a(this.b, ((qz) obj).b);
    }

    public final String toString() {
        return Types.f(this.b);
    }

    public static qz<?> a(Type type) {
        return new qz(type);
    }

    public static <T> qz<T> b(Class<T> cls) {
        return new qz(cls);
    }
}
