package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: ddd */
public final class ddd {
    public static CharSequence a(String str) {
        String[] a = ddd.a(str, "*", "*");
        if (a == null) {
            return str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        for (CharSequence charSequence : a) {
            int indexOf = spannableStringBuilder.toString().indexOf(charSequence);
            int length = charSequence.length() + indexOf;
            spannableStringBuilder.replace(indexOf - 1, length + 1, charSequence);
            spannableStringBuilder.setSpan(new StyleSpan(1), indexOf - 1, length - 1, 18);
        }
        return spannableStringBuilder;
    }

    public static String[] a(String str, String str2, String str3) {
        int i = 0;
        if (str == null || ddd.a((CharSequence) str2) || ddd.a((CharSequence) str3)) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return new String[0];
        }
        int length2 = str3.length();
        int length3 = str2.length();
        List arrayList = new ArrayList();
        while (i < length - length2) {
            i = str.indexOf(str2, i);
            if (i >= 0) {
                i += length3;
                int indexOf = str.indexOf(str3, i);
                if (indexOf < 0) {
                    break;
                }
                arrayList.add(str.substring(i, indexOf));
                i = indexOf + length2;
            } else {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
