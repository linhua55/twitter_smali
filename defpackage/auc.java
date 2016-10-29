package defpackage;

import com.twitter.util.aj;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: auc */
public class auc {
    public static String a(String str) {
        return str + " IS NULL";
    }

    public static String b(String str) {
        return str + " NOT NULL";
    }

    public static String a(String str, Object obj) {
        return str + ">" + auc.a(obj);
    }

    @SafeVarargs
    public static <T> String a(String str, T... tArr) {
        return str + " IN(" + aj.a((CharSequence) ",", auc.a((Object[]) tArr)) + ')';
    }

    public static <T> String a(String str, Collection<T> collection) {
        return str + " IN(" + aj.a((CharSequence) ",", auc.a((Collection) collection)) + ')';
    }

    public static String b(String str, Object obj) {
        return str + "=" + auc.a(obj);
    }

    public static String c(String str) {
        return str + "=?";
    }

    public static String a(String... strArr) {
        return '(' + aj.a((CharSequence) ") AND (", (Object[]) strArr) + ')';
    }

    public static String a(Object obj) {
        if (obj instanceof String) {
            return auc.d((String) obj);
        }
        return String.valueOf(obj);
    }

    @SafeVarargs
    public static <T> String[] a(T... tArr) {
        return auc.a(Arrays.asList(tArr));
    }

    public static <T> String[] a(Collection<T> collection) {
        String[] strArr = new String[collection.size()];
        int i = 0;
        for (T a : collection) {
            strArr[i] = auc.a((Object) a);
            i++;
        }
        return strArr;
    }

    public static String d(String str) {
        return "'" + str.replace("'", "''") + "'";
    }
}
