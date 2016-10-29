package io.fabric.sdk.android.services.concurrency;

/* compiled from: Twttr */
public enum Priority {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    static <Y> int a(q qVar, Y y) {
        Priority b;
        if (y instanceof q) {
            b = ((q) y).b();
        } else {
            b = NORMAL;
        }
        return b.ordinal() - qVar.b().ordinal();
    }
}
