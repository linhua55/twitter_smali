package com.facebook.common.util;

import defpackage.bx;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public class c {
    public static long a(InputStream inputStream, long j) throws IOException {
        bx.a((Object) inputStream);
        bx.a(j >= 0);
        long j2 = j;
        while (j2 > 0) {
            long skip = inputStream.skip(j2);
            if (skip > 0) {
                j2 -= skip;
            } else if (inputStream.read() == -1) {
                return j - j2;
            } else {
                j2--;
            }
        }
        return j;
    }
}
