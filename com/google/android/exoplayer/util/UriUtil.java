package com.google.android.exoplayer.util;

import android.net.Uri;
import android.text.TextUtils;

/* compiled from: Twttr */
public final class UriUtil {
    private static final int FRAGMENT = 3;
    private static final int INDEX_COUNT = 4;
    private static final int PATH = 1;
    private static final int QUERY = 2;
    private static final int SCHEME_COLON = 0;

    private UriUtil() {
    }

    public static Uri resolveToUri(String str, String str2) {
        return Uri.parse(resolve(str, str2));
    }

    public static String resolve(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        if (str == null) {
            str = TtmlNode.ANONYMOUS_REGION_ID;
        }
        if (str2 == null) {
            str2 = TtmlNode.ANONYMOUS_REGION_ID;
        }
        int[] uriIndices = getUriIndices(str2);
        if (uriIndices[0] != -1) {
            stringBuilder.append(str2);
            removeDotSegments(stringBuilder, uriIndices[PATH], uriIndices[QUERY]);
            return stringBuilder.toString();
        }
        int[] uriIndices2 = getUriIndices(str);
        if (uriIndices[FRAGMENT] == 0) {
            return stringBuilder.append(str, 0, uriIndices2[FRAGMENT]).append(str2).toString();
        }
        if (uriIndices[QUERY] == 0) {
            return stringBuilder.append(str, 0, uriIndices2[QUERY]).append(str2).toString();
        }
        int i;
        if (uriIndices[PATH] != 0) {
            i = uriIndices2[0] + PATH;
            stringBuilder.append(str, 0, i).append(str2);
            return removeDotSegments(stringBuilder, uriIndices[PATH] + i, i + uriIndices[QUERY]);
        } else if (uriIndices[PATH] != uriIndices[QUERY] && str2.charAt(uriIndices[PATH]) == '/') {
            stringBuilder.append(str, 0, uriIndices2[PATH]).append(str2);
            return removeDotSegments(stringBuilder, uriIndices2[PATH], uriIndices[QUERY] + uriIndices2[PATH]);
        } else if (uriIndices2[0] + QUERY >= uriIndices2[PATH] || uriIndices2[PATH] != uriIndices2[QUERY]) {
            i = str.lastIndexOf(47, uriIndices2[QUERY] - 1);
            i = i == -1 ? uriIndices2[PATH] : i + PATH;
            stringBuilder.append(str, 0, i).append(str2);
            return removeDotSegments(stringBuilder, uriIndices2[PATH], i + uriIndices[QUERY]);
        } else {
            stringBuilder.append(str, 0, uriIndices2[PATH]).append('/').append(str2);
            return removeDotSegments(stringBuilder, uriIndices2[PATH], (uriIndices[QUERY] + uriIndices2[PATH]) + PATH);
        }
    }

    private static String removeDotSegments(StringBuilder stringBuilder, int i, int i2) {
        if (i >= i2) {
            return stringBuilder.toString();
        }
        if (stringBuilder.charAt(i) == '/') {
            i += PATH;
        }
        int i3 = i;
        int i4 = i;
        int i5 = i2;
        while (i3 <= i5) {
            int i6;
            if (i3 == i5) {
                i6 = i3;
            } else if (stringBuilder.charAt(i3) == '/') {
                i6 = i3 + PATH;
            } else {
                i3 += PATH;
            }
            if (i3 == i4 + PATH && stringBuilder.charAt(i4) == '.') {
                stringBuilder.delete(i4, i6);
                i5 -= i6 - i4;
                i3 = i4;
            } else if (i3 == i4 + QUERY && stringBuilder.charAt(i4) == '.' && stringBuilder.charAt(i4 + PATH) == '.') {
                i4 = stringBuilder.lastIndexOf("/", i4 - 2) + PATH;
                i3 = i4 > i ? i4 : i;
                stringBuilder.delete(i3, i6);
                i5 -= i6 - i3;
                i3 = i4;
            } else {
                i4 = i3 + PATH;
                i3 = i4;
            }
            int i7 = i4;
            i4 = i3;
            i3 = i7;
        }
        return stringBuilder.toString();
    }

    private static int[] getUriIndices(String str) {
        int[] iArr = new int[INDEX_COUNT];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        indexOf = str.indexOf(63);
        if (indexOf == -1 || indexOf > length) {
            indexOf = length;
        }
        int indexOf2 = str.indexOf(47);
        if (indexOf2 == -1 || indexOf2 > indexOf) {
            indexOf2 = indexOf;
        }
        int indexOf3 = str.indexOf(58);
        if (indexOf3 > indexOf2) {
            indexOf3 = -1;
        }
        indexOf2 = (indexOf3 + QUERY < indexOf && str.charAt(indexOf3 + PATH) == '/' && str.charAt(indexOf3 + QUERY) == '/') ? PATH : 0;
        if (indexOf2 != 0) {
            indexOf2 = str.indexOf(47, indexOf3 + FRAGMENT);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                indexOf2 = indexOf;
            }
        } else {
            indexOf2 = indexOf3 + PATH;
        }
        iArr[0] = indexOf3;
        iArr[PATH] = indexOf2;
        iArr[QUERY] = indexOf;
        iArr[FRAGMENT] = length;
        return iArr;
    }
}
