package defpackage;

import java.util.concurrent.Executor;

/* compiled from: Twttr */
/* renamed from: f */
class f implements Executor {
    private ThreadLocal<Integer> a;

    private f() {
        this.a = new ThreadLocal();
    }

    private int a() {
        Integer num = (Integer) this.a.get();
        if (num == null) {
            num = Integer.valueOf(0);
        }
        int intValue = num.intValue() + 1;
        this.a.set(Integer.valueOf(intValue));
        return intValue;
    }

    private int b() {
        Integer num = (Integer) this.a.get();
        if (num == null) {
            num = Integer.valueOf(0);
        }
        int intValue = num.intValue() - 1;
        if (intValue == 0) {
            this.a.remove();
        } else {
            this.a.set(Integer.valueOf(intValue));
        }
        return intValue;
    }

    public void execute(Runnable runnable) {
        if (a() <= 15) {
            try {
                runnable.run();
            } catch (Throwable th) {
                b();
            }
        } else {
            d.a().execute(runnable);
        }
        b();
    }
}
