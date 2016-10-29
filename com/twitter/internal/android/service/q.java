package com.twitter.internal.android.service;

import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;

/* compiled from: Twttr */
/* synthetic */ class q {
    static final /* synthetic */ int[] a;

    static {
        a = new int[ExecutionClass.values().length];
        try {
            a[ExecutionClass.NETWORK_LONG.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[ExecutionClass.LOCAL_DISK.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[ExecutionClass.CPU_INTENSIVE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[ExecutionClass.MEDIA_CODEC.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[ExecutionClass.LOW_PRIORITY.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[ExecutionClass.SERIAL_BACKGROUND.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
    }
}
