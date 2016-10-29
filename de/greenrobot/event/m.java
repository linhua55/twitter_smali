package de.greenrobot.event;

import java.lang.reflect.Method;

/* compiled from: Twttr */
final class m {
    final Method a;
    final ThreadMode b;
    final Class<?> c;
    String d;

    m(Method method, ThreadMode threadMode, Class<?> cls) {
        this.a = method;
        this.b = threadMode;
        this.c = cls;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        a();
        m mVar = (m) obj;
        mVar.a();
        return this.d.equals(mVar.d);
    }

    private synchronized void a() {
        if (this.d == null) {
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append(this.a.getDeclaringClass().getName());
            stringBuilder.append('#').append(this.a.getName());
            stringBuilder.append('(').append(this.c.getName());
            this.d = stringBuilder.toString();
        }
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
