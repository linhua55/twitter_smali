package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import java.math.BigDecimal;

/* compiled from: Twttr */
public final class e {
    static final String a;
    static final String b;

    static {
        a = String.valueOf(Long.MIN_VALUE).substring(1);
        b = String.valueOf(PtsTimestampAdjuster.DO_NOT_OFFSET);
    }

    public static int a(char[] cArr, int i, int i2) {
        int i3;
        int i4 = cArr[i] - 48;
        if (i2 > 4) {
            i3 = i + 1;
            i3++;
            i3++;
            i = i3 + 1;
            i4 = (((((((i4 * 10) + (cArr[i3] - 48)) * 10) + (cArr[i3] - 48)) * 10) + (cArr[i3] - 48)) * 10) + (cArr[i] - 48);
            i2 -= 4;
            if (i2 > 4) {
                i3 = i + 1;
                i3++;
                i3++;
                return (((((((i4 * 10) + (cArr[i3] - 48)) * 10) + (cArr[i3] - 48)) * 10) + (cArr[i3] - 48)) * 10) + (cArr[i3 + 1] - 48);
            }
        }
        if (i2 <= 1) {
            return i4;
        }
        i3 = i + 1;
        i4 = (i4 * 10) + (cArr[i3] - 48);
        if (i2 <= 2) {
            return i4;
        }
        i3++;
        i4 = (i4 * 10) + (cArr[i3] - 48);
        if (i2 > 3) {
            return (i4 * 10) + (cArr[i3 + 1] - 48);
        }
        return i4;
    }

    public static long b(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return ((long) a(cArr, i3 + i, 9)) + (((long) a(cArr, i, i3)) * 1000000000);
    }

    public static boolean a(char[] cArr, int i, int i2, boolean z) {
        String str = z ? a : b;
        int length = str.length();
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int charAt = cArr[i + i3] - str.charAt(i3);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static int a(String str, int i) {
        int i2 = 0;
        if (str == null) {
            return i;
        }
        String trim = str.trim();
        int length = trim.length();
        if (length == 0) {
            return i;
        }
        String substring;
        int length2;
        char charAt;
        if (0 < length) {
            char charAt2 = trim.charAt(0);
            if (charAt2 == '+') {
                substring = trim.substring(1);
                length2 = substring.length();
            } else if (charAt2 == '-') {
                i2 = 1;
                length2 = length;
                substring = trim;
            }
            while (i2 < length2) {
                charAt = substring.charAt(i2);
                if (charAt <= '9' || charAt < '0') {
                    try {
                        return (int) a(substring);
                    } catch (NumberFormatException e) {
                        return i;
                    }
                }
                i2++;
            }
            return Integer.parseInt(substring);
        }
        length2 = length;
        substring = trim;
        while (i2 < length2) {
            charAt = substring.charAt(i2);
            if (charAt <= '9') {
            }
            return (int) a(substring);
        }
        try {
            return Integer.parseInt(substring);
        } catch (NumberFormatException e2) {
            return i;
        }
    }

    public static long a(String str, long j) {
        int i = 0;
        if (str == null) {
            return j;
        }
        String trim = str.trim();
        int length = trim.length();
        if (length == 0) {
            return j;
        }
        String substring;
        int length2;
        char charAt;
        if (0 < length) {
            char charAt2 = trim.charAt(0);
            if (charAt2 == '+') {
                substring = trim.substring(1);
                length2 = substring.length();
            } else if (charAt2 == '-') {
                i = 1;
                length2 = length;
                substring = trim;
            }
            while (i < length2) {
                charAt = substring.charAt(i);
                if (charAt <= '9' || charAt < '0') {
                    try {
                        return (long) a(substring);
                    } catch (NumberFormatException e) {
                        return j;
                    }
                }
                i++;
            }
            return Long.parseLong(substring);
        }
        length2 = length;
        substring = trim;
        while (i < length2) {
            charAt = substring.charAt(i);
            if (charAt <= '9') {
            }
            return (long) a(substring);
        }
        try {
            return Long.parseLong(substring);
        } catch (NumberFormatException e2) {
            return j;
        }
    }

    public static double a(String str, double d) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() != 0) {
                try {
                    d = a(trim);
                } catch (NumberFormatException e) {
                }
            }
        }
        return d;
    }

    public static double a(String str) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static BigDecimal b(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException e) {
            throw c(str);
        }
    }

    public static BigDecimal a(char[] cArr) throws NumberFormatException {
        return c(cArr, 0, cArr.length);
    }

    public static BigDecimal c(char[] cArr, int i, int i2) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw c(new String(cArr, i, i2));
        }
    }

    private static NumberFormatException c(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }
}
