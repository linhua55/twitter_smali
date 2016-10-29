package com.twitter.util.concurrent;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
public interface n<T> extends Callable<T> {
    T call();
}
