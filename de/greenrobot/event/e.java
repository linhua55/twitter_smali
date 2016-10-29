package de.greenrobot.event;

/* compiled from: Twttr */
/* synthetic */ class e {
    static final /* synthetic */ int[] a;

    static {
        a = new int[ThreadMode.values().length];
        try {
            a[ThreadMode.PostThread.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[ThreadMode.MainThread.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[ThreadMode.BackgroundThread.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[ThreadMode.Async.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
