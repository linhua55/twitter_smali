package com.squareup.okhttp.v_1_5_1.internal.okio;

import com.google.android.exoplayer.util.NalUnitUtil;

/* compiled from: Twttr */
final class Util {
    public static final String UTF_8 = "UTF-8";

    private Util() {
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static int reverseBytesShort(short s) {
        int i = 65535 & s;
        return ((i & NalUnitUtil.EXTENDED_SAR) << 8) | ((65280 & i) >>> 8);
    }

    public static int reverseBytesInt(int i) {
        return ((((-16777216 & i) >>> 24) | ((16711680 & i) >>> 8)) | ((65280 & i) << 8)) | ((i & NalUnitUtil.EXTENDED_SAR) << 24);
    }

    public static void sneakyRethrow(Throwable th) {
        sneakyThrow2(th);
    }

    private static <T extends Throwable> void sneakyThrow2(Throwable th) throws Throwable {
        throw th;
    }
}
