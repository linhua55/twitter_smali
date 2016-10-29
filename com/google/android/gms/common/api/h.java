package com.google.android.gms.common.api;

import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.as;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Set;

public interface h {
    void a(s sVar);

    void a(as asVar, Set<Scope> set);

    void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    void d();

    boolean e();

    boolean f();

    boolean g();

    Intent h();

    IBinder i();
}
