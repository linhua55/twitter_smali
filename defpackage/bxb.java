package defpackage;

import com.twitter.library.geo.provider.param.LocationPriority;

/* compiled from: Twttr */
/* renamed from: bxb */
/* synthetic */ class bxb {
    static final /* synthetic */ int[] a;

    static {
        a = new int[LocationPriority.values().length];
        try {
            a[LocationPriority.HIGH.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[LocationPriority.LOW_POWER.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[LocationPriority.NO_POWER.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[LocationPriority.BALANCED_POWER.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
