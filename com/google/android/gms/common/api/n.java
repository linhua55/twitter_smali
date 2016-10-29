package com.google.android.gms.common.api;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.internal.ax;
import com.google.android.gms.common.api.internal.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

public abstract class n {
    private static final Set<n> a;

    static {
        a = Collections.newSetFromMap(new WeakHashMap());
    }

    public Looper a() {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public <C extends h> C a(@NonNull i<C> iVar) {
        throw new UnsupportedOperationException();
    }

    public <A extends h, R extends w, T extends c<R, A>> T a(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    public void a(int i) {
        throw new UnsupportedOperationException();
    }

    public void a(ax axVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void a(@NonNull q qVar);

    public abstract void a(@NonNull r rVar);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public <A extends h, T extends c<? extends w, A>> T b(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    public abstract void b();

    public void b(ax axVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void b(@NonNull r rVar);

    public abstract void c();

    public abstract boolean d();

    public abstract boolean e();
}
