package com.twitter.util.concurrent;

import bbn;
import com.twitter.util.j;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class h {
    public static <V> V a(Future<V> future) throws Exception {
        j.c();
        try {
            return future.get();
        } catch (CancellationException e) {
            return null;
        } catch (ExecutionException e2) {
            throw a(e2);
        }
    }

    public static <V> void a(List<Future<V>> list) {
        j.c();
        for (Future a : list) {
            try {
                a(a);
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
    }

    private static Exception a(ExecutionException executionException) {
        Throwable cause = executionException.getCause();
        if (cause instanceof Exception) {
            return (Exception) cause;
        }
        throw new IllegalStateException("Future has a throwable that does not extend Exception", cause);
    }
}
