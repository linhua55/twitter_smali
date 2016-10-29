package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.w;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public interface ap {
    <A extends h, R extends w, T extends c<R, A>> T a(@NonNull T t);

    void a();

    void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    <A extends h, T extends c<? extends w, A>> T b(@NonNull T t);

    boolean b();

    boolean c();

    boolean d();

    void e();
}
