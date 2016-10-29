package com.squareup.okhttp.v_1_5_1.internal;

/* compiled from: Twttr */
public abstract class NamedRunnable implements Runnable {
    private final String name;

    protected abstract void execute();

    public NamedRunnable(String str, Object... objArr) {
        this.name = String.format(str, objArr);
    }

    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.name);
        try {
            execute();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
