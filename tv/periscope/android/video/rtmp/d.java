package tv.periscope.android.video.rtmp;

/* compiled from: Twttr */
/* synthetic */ class d {
    static final /* synthetic */ int[] a;

    static {
        a = new int[RTMPConnectState.values().length];
        try {
            a[RTMPConnectState.RTMP_Shutdown.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[RTMPConnectState.RTMP_Handshake_S0.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[RTMPConnectState.RTMP_Handshake_S1.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[RTMPConnectState.RTMP_Handshake_S2.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
