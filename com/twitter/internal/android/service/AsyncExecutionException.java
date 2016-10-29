package com.twitter.internal.android.service;

/* compiled from: Twttr */
public class AsyncExecutionException extends RuntimeException {
    AsyncExecutionException(Throwable th) {
        initCause(th);
    }
}
