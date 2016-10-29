package defpackage;

import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
/* renamed from: fq */
public class fq implements ThreadFactory {
    private final int a;

    public fq(int i) {
        this.a = i;
    }

    public Thread newThread(Runnable runnable) {
        return new Thread(new fr(this, runnable));
    }
}
