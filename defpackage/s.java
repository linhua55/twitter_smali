package defpackage;

import android.telephony.PhoneNumberUtils;
import android.text.SpannableStringBuilder;

/* compiled from: Twttr */
/* renamed from: s */
public class s {
    public static String a(String str, int i) {
        Object spannableStringBuilder = new SpannableStringBuilder(str);
        PhoneNumberUtils.formatNumber(spannableStringBuilder, i);
        return spannableStringBuilder.toString();
    }
}
