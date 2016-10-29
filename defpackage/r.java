package defpackage;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: r */
public class r {
    private static final Map<Integer, String> a;
    private static final Set<String> b;
    private static final Map<String, Integer> c;
    private static final Map<Integer, String> d;
    private static final Set<String> e;
    private static final Set<Character> f;
    private static final int[] g;
    private static final int[] h;

    static {
        a = new HashMap();
        c = new HashMap();
        a.put(Integer.valueOf(9), "CAR");
        c.put("CAR", Integer.valueOf(9));
        a.put(Integer.valueOf(6), "PAGER");
        c.put("PAGER", Integer.valueOf(6));
        a.put(Integer.valueOf(11), "ISDN");
        c.put("ISDN", Integer.valueOf(11));
        c.put("HOME", Integer.valueOf(1));
        c.put("WORK", Integer.valueOf(3));
        c.put("CELL", Integer.valueOf(2));
        c.put("OTHER", Integer.valueOf(7));
        c.put("CALLBACK", Integer.valueOf(8));
        c.put("COMPANY-MAIN", Integer.valueOf(10));
        c.put("RADIO", Integer.valueOf(14));
        c.put("TTY-TDD", Integer.valueOf(16));
        c.put("ASSISTANT", Integer.valueOf(19));
        c.put("VOICE", Integer.valueOf(7));
        b = new HashSet();
        b.add("MODEM");
        b.add("MSG");
        b.add("BBS");
        b.add("VIDEO");
        d = new HashMap();
        d.put(Integer.valueOf(0), "X-AIM");
        d.put(Integer.valueOf(1), "X-MSN");
        d.put(Integer.valueOf(2), "X-YAHOO");
        d.put(Integer.valueOf(3), "X-SKYPE-USERNAME");
        d.put(Integer.valueOf(5), "X-GOOGLE-TALK");
        d.put(Integer.valueOf(6), "X-ICQ");
        d.put(Integer.valueOf(7), "X-JABBER");
        d.put(Integer.valueOf(4), "X-QQ");
        d.put(Integer.valueOf(8), "X-NETMEETING");
        e = new HashSet(Arrays.asList(new String[]{"MOBILE", "\u643a\u5e2f\u96fb\u8a71", "\u643a\u5e2f", "\u30b1\u30a4\u30bf\u30a4", "\uff79\uff72\uff80\uff72"}));
        f = new HashSet(Arrays.asList(new Character[]{Character.valueOf('['), Character.valueOf(']'), Character.valueOf('='), Character.valueOf(':'), Character.valueOf('.'), Character.valueOf(','), Character.valueOf(' ')}));
        g = new int[]{58, 59, 44, 32};
        h = new int[]{59, 58};
    }

    public static String a(Integer num) {
        return (String) a.get(num);
    }

    public static boolean a(String str) {
        return "_AUTO_CELL".equals(str) || e.contains(str);
    }

    public static boolean b(String str) {
        return b.contains(str);
    }

    public static String[] a(int i, String str, String str2, String str3) {
        String[] strArr = new String[3];
        switch (p.e(i)) {
            case p.View_theme /*4*/:
                strArr[0] = str2;
                strArr[1] = str3;
                strArr[2] = str;
                break;
            case p.Toolbar_contentInsetRight /*8*/:
                if (r.a(str)) {
                    if (r.a(str3)) {
                        strArr[0] = str3;
                        strArr[1] = str2;
                        strArr[2] = str;
                        break;
                    }
                }
                strArr[0] = str;
                strArr[1] = str2;
                strArr[2] = str3;
                break;
            default:
                strArr[0] = str3;
                strArr[1] = str2;
                strArr[2] = str;
                break;
        }
        return strArr;
    }

    public static int a(int i) {
        if (p.j(i)) {
            return 2;
        }
        return 1;
    }

    public static String b(int i, String str, String str2, String str3) {
        return r.a(i, str, str2, str3, null, null);
    }

    public static String a(int i, String str, String str2, String str3, String str4, String str5) {
        StringBuilder stringBuilder = new StringBuilder();
        String[] a = r.a(i, str, str2, str3);
        Object obj = 1;
        if (!TextUtils.isEmpty(str4)) {
            stringBuilder.append(str4);
            obj = null;
        }
        for (Object obj2 : a) {
            if (!TextUtils.isEmpty(obj2)) {
                if (obj != null) {
                    obj = null;
                } else {
                    stringBuilder.append(' ');
                }
                stringBuilder.append(obj2);
            }
        }
        if (!TextUtils.isEmpty(str5)) {
            if (obj == null) {
                stringBuilder.append(' ');
            }
            stringBuilder.append(str5);
        }
        return stringBuilder.toString();
    }

    public static boolean a(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return r.a(Arrays.asList(strArr));
    }

    public static boolean a(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (CharSequence charSequence : collection) {
            if (!TextUtils.isEmpty(charSequence) && !t.a(charSequence)) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return r.b(Arrays.asList(strArr));
    }

    public static boolean b(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str)) {
                int length = str.length();
                for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
                    int codePointAt = str.codePointAt(i);
                    if (32 > codePointAt || codePointAt > 126) {
                        return false;
                    }
                }
                continue;
            }
        }
        return true;
    }

    public static boolean c(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return r.c(Arrays.asList(strArr));
    }

    public static boolean c(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str)) {
                int length = str.length();
                for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
                    int codePointAt = str.codePointAt(i);
                    if ((97 > codePointAt || codePointAt >= 123) && ((65 > codePointAt || codePointAt >= 91) && ((48 > codePointAt || codePointAt >= 58) && codePointAt != 45))) {
                        return false;
                    }
                }
                continue;
            }
        }
        return true;
    }

    public static boolean d(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return r.d(Arrays.asList(strArr));
    }

    public static boolean d(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str)) {
                int length = str.length();
                for (int i = 0; i < length; i = str.offsetByCodePoints(i, 1)) {
                    if (!Character.isWhitespace(str.codePointAt(i))) {
                        return false;
                    }
                }
                continue;
            }
        }
        return true;
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (32 > codePointAt || codePointAt > 126 || f.contains(Character.valueOf((char) codePointAt))) {
                return false;
            }
            i = str.offsetByCodePoints(i, 1);
        }
        return true;
    }

    public static String d(String str) {
        return r.a(str, g);
    }

    public static String e(String str) {
        return r.a(str, h);
    }

    private static String a(String str, int[] iArr) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2 = str.offsetByCodePoints(i2, 1)) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt >= 32 && codePointAt != 34) {
                stringBuilder.appendCodePoint(codePointAt);
                for (int i3 : iArr) {
                    if (codePointAt == i3) {
                        i = 1;
                        break;
                    }
                }
            }
        }
        String stringBuilder2 = stringBuilder.toString();
        if (!stringBuilder2.isEmpty()) {
            if (!r.d(stringBuilder2)) {
                return i != 0 ? '\"' + stringBuilder2 + '\"' : stringBuilder2;
            }
        }
        return "";
    }

    public static String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            String a = n.a(charAt);
            if (a != null) {
                stringBuilder.append(a);
            } else {
                stringBuilder.append(charAt);
            }
            i = str.offsetByCodePoints(i, 1);
        }
        return stringBuilder.toString();
    }
}
