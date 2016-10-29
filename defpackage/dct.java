package defpackage;

import android.support.annotation.ColorInt;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.View.OnClickListener;
import android.widget.TextView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: dct */
public final class dct {
    static final Pattern a;

    static {
        a = Pattern.compile("(\\*(\\d+)\\$(.+?)\\*)");
    }

    public static void a(TextView textView, String str, @ColorInt int i, OnClickListener... onClickListenerArr) {
        textView.setMovementMethod(new LinkMovementMethod());
        textView.setText(dct.a(str, i, onClickListenerArr));
    }

    private static SpannableStringBuilder a(String str, @ColorInt int i, OnClickListener... onClickListenerArr) {
        Object stringBuilder = new StringBuilder(str);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(stringBuilder);
        for (OnClickListener onClickListener : onClickListenerArr) {
            Matcher matcher = a.matcher(stringBuilder);
            if (matcher.find()) {
                if (matcher.groupCount() != 3) {
                    throw new IllegalArgumentException("String not properly formatted: " + str);
                }
                int start = matcher.start(1);
                int end = matcher.end(1);
                int parseInt = Integer.parseInt(matcher.group(2)) - 1;
                Object group = matcher.group(3);
                stringBuilder.replace(start, end, group);
                spannableStringBuilder.replace(start, end, group);
                spannableStringBuilder.setSpan(new dcu(i, onClickListenerArr, parseInt), start, group.length() + start, 33);
            }
        }
        return spannableStringBuilder;
    }
}
