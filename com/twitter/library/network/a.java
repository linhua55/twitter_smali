package com.twitter.library.network;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.util.n;

/* compiled from: Twttr */
public abstract class a<T> {
    public abstract T a();

    public abstract void a(HttpOperation httpOperation, long j);

    public static String a(String str) {
        if (str == null) {
            return BuildConfig.VERSION_NAME;
        }
        String a = n.a(str, "UTF8");
        int length = a.length();
        StringBuilder stringBuilder = new StringBuilder(length);
        int i = 0;
        while (i < length) {
            char charAt = a.charAt(i);
            if (charAt == '*') {
                stringBuilder.append("%2A");
            } else if (charAt == '+') {
                stringBuilder.append("%20");
            } else if (charAt == '%' && i + 2 < length && a.charAt(i + 1) == '7' && a.charAt(i + 2) == 'E') {
                stringBuilder.append('~');
                i += 2;
            } else {
                stringBuilder.append(charAt);
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public static String a(byte b, byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder(bArr.length);
        for (byte b2 : bArr) {
            stringBuilder.append((char) (b - b2));
        }
        return stringBuilder.toString();
    }
}
