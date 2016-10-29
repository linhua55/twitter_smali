package com.twitter.util;

import android.support.v7.recyclerview.BuildConfig;
import java.security.SecureRandom;
import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.StringTokenizer;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public final class aj {
    public static final SecureRandom a;
    public static final Pattern b;
    private static final char[] c;

    static {
        a = new SecureRandom();
        b = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        c = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    public static String a(int i) {
        if (i < 1) {
            return BuildConfig.VERSION_NAME;
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < cArr.length; i2++) {
            cArr[i2] = c[a.nextInt(71)];
        }
        return new String(cArr);
    }

    public static String b(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        while (stringBuilder.length() < i) {
            stringBuilder.append(Integer.toHexString(a.nextInt(16)));
        }
        return stringBuilder.toString();
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return true;
        }
        if (!(charSequence == null || charSequence2 == null)) {
            int length = charSequence.length();
            if (length == charSequence2.length()) {
                if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
                    return charSequence.equals(charSequence2);
                }
                for (int i = 0; i < length; i++) {
                    if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean a(String str, String str2) {
        if (str == null) {
            return str2 == null;
        } else {
            return str.equals(str2);
        }
    }

    public static boolean b(String str, String str2) {
        if (str == null) {
            return str2 == null;
        } else {
            return str.equalsIgnoreCase(str2);
        }
    }

    public static String a(String str, int i) {
        StringBuilder stringBuilder = new StringBuilder(str.length() * i);
        for (int i2 = 0; i2 < i; i2++) {
            stringBuilder.append(str);
        }
        return stringBuilder.toString();
    }

    public static String a(long[] jArr) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < jArr.length; i++) {
            stringBuilder.append(jArr[i]);
            if (i < jArr.length - 1) {
                stringBuilder.append(',');
            }
        }
        return stringBuilder.toString();
    }

    public static String a(String str, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException("Start (" + i + ") is greater than end (" + i2 + ")");
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("Start (" + i + ") is less than zero");
        } else if (i2 > str.length()) {
            throw new IndexOutOfBoundsException("End (" + i2 + ") is greater than the string length (" + str.length() + ")");
        } else if (i == 0) {
            return str.substring(i2);
        } else {
            if (i2 == str.length()) {
                return str.substring(0, i);
            }
            return str.substring(0, i) + str.substring(i2);
        }
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean b(CharSequence charSequence) {
        return !a(charSequence);
    }

    public static <T> String a(CharSequence charSequence, T[] tArr) {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        for (Object obj2 : tArr) {
            if (obj != null) {
                obj = null;
            } else {
                stringBuilder.append(charSequence);
            }
            stringBuilder.append(obj2);
        }
        return stringBuilder.toString();
    }

    public static <T> String a(CharSequence charSequence, Iterable<T> iterable) {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        for (Object next : iterable) {
            if (obj != null) {
                obj = null;
            } else {
                stringBuilder.append(charSequence);
            }
            stringBuilder.append(next);
        }
        return stringBuilder.toString();
    }

    public static String a(String str) {
        return str.replaceAll("\\s", BuildConfig.VERSION_NAME);
    }

    public static String b(String str) {
        return b.matcher(Normalizer.normalize(str, Form.NFD)).replaceAll(BuildConfig.VERSION_NAME);
    }

    public static boolean c(String str, String str2) {
        int length;
        boolean z = true;
        int length2 = str != null ? str.length() : 0;
        if (str2 != null) {
            length = str2.length();
        } else {
            length = 0;
        }
        if (length > length2) {
            return false;
        }
        if (length == 0 || length2 == 0) {
            if (length != 0) {
                z = false;
            }
            return z;
        }
        length2--;
        for (length--; length >= 0; length--) {
            if (Character.toLowerCase(str.charAt(length2)) != Character.toLowerCase(str2.charAt(length))) {
                return false;
            }
            length2--;
        }
        return true;
    }

    public static String b(String str, int i) {
        int i2 = 0;
        if (i < 1) {
            throw new IllegalArgumentException("numberOfSpaces must be > 0");
        }
        int length = str.length();
        int[] iArr = new int[i];
        int i3 = length;
        int i4 = 0;
        for (int i5 = i - 1; i5 >= 0 && i3 != -1; i5--) {
            i3 = str.lastIndexOf(" ", i3 - 1);
            iArr[i5] = i3;
            if (i3 != -1) {
                i4++;
            }
        }
        if (i4 <= 0) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder(length);
        i4 = i - i4;
        while (i4 < i) {
            stringBuilder.append(str.substring(i2, iArr[i4]));
            stringBuilder.append("\u00a0");
            int i6 = i4 + 1;
            i2 = iArr[i4] + 1;
            i4 = i6;
        }
        stringBuilder.append(str.substring(i2));
        return stringBuilder.toString();
    }

    public static String[] c(String str, int i) {
        int i2 = 0;
        if (i <= 0) {
            throw new IllegalArgumentException("Limit must be positive: " + i);
        }
        int length = str.length();
        if (length <= i) {
            return new String[]{str};
        }
        int i3 = ((length + i) - 1) / i;
        String[] strArr = new String[i3];
        while (i2 < i3) {
            strArr[i2] = str.substring(i * i2, Math.min(length, (i2 + 1) * i));
            i2++;
        }
        return strArr;
    }

    public static String a() {
        return System.getProperty("line.separator");
    }

    public static int d(String str, String str2) {
        int i = 0;
        if (str.isEmpty() || str2.isEmpty()) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            i = str2.indexOf(str, i);
            if (i == -1) {
                return i2;
            }
            i2++;
            i += str.length();
        }
    }

    public static String a(String str, char c, char c2) {
        int indexOf = str.indexOf(c);
        int indexOf2 = str.indexOf(c2, indexOf + 1);
        return (indexOf == -1 || indexOf2 == -1 || indexOf >= indexOf2) ? str : str.substring(indexOf + 1, indexOf2);
    }

    public static int c(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) <= ' ') {
            i++;
        }
        while (length > i && charSequence.charAt(length - 1) <= ' ') {
            length--;
        }
        return length - i;
    }

    public static long a(String str, long j) {
        if (!a((CharSequence) str)) {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException e) {
            }
        }
        return j;
    }

    public static int d(String str, int i) {
        if (!a((CharSequence) str)) {
            try {
                i = Integer.parseInt(str, 10);
            } catch (NumberFormatException e) {
            }
        }
        return i;
    }

    public static String c(String str) {
        if (str == null || str.length() <= 0 || str.charAt(str.length() - 1) == '\u2026') {
            return str;
        }
        return str + '\u2026';
    }

    public static String e(String str, int i) {
        if (str != null && i > 0 && i < str.length()) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\n\r\f", true);
            StringBuilder stringBuilder = new StringBuilder();
            while (stringTokenizer.hasMoreTokens() && stringBuilder.length() < i - 1) {
                String nextToken = stringTokenizer.nextToken();
                if (stringBuilder.length() + nextToken.length() > i - 1) {
                    break;
                }
                stringBuilder.append(nextToken);
            }
            return c(stringBuilder.toString().trim());
        } else if (i < 0) {
            return BuildConfig.VERSION_NAME;
        } else {
            return str;
        }
    }

    public static String d(String str) {
        int length = str.length();
        while (length > 0 && str.charAt(length - 1) <= ' ') {
            length--;
        }
        return str.substring(0, length);
    }
}
