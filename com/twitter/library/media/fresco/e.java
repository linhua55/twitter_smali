package com.twitter.library.media.fresco;

import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.p;
import ff;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class e implements ff {
    private Executor a(ExecutionClass executionClass) {
        return p.a().a(executionClass);
    }

    public Executor a() {
        return a(ExecutionClass.c);
    }

    public Executor b() {
        return a(ExecutionClass.c);
    }

    public Executor c() {
        return a(ExecutionClass.d);
    }

    public Executor d() {
        return a(ExecutionClass.d);
    }

    public Executor e() {
        return a(ExecutionClass.c);
    }
}
