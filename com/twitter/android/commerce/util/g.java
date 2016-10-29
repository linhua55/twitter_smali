package com.twitter.android.commerce.util;

import android.content.Context;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.twitter.android.util.WebViewURLSpan;

/* compiled from: Twttr */
public class g {
    public static void a(SpannableString spannableString, String str, String str2, String str3) {
        int indexOf = str.indexOf(str2);
        while (indexOf >= 0) {
            spannableString.setSpan(new WebViewURLSpan(str3), indexOf, str2.length() + indexOf, 0);
            indexOf = str.indexOf(str2, indexOf + 1);
        }
    }

    public static SpannableString a(SpannableString spannableString, String str, String str2, Object obj) {
        int indexOf = str.indexOf(str2);
        int length = str2.length() + indexOf;
        if (indexOf >= 0) {
            spannableString.setSpan(obj, indexOf, length, 18);
        }
        return spannableString;
    }

    private static CharSequence a(Context context, long j) {
        String string = context.getString(2131362263, new Object[]{context.getString(2131362262), context.getString(2131362265), context.getString(2131362264)});
        SpannableString spannableString = new SpannableString(string);
        a(spannableString, string, r0, "https://support.twitter.com/articles/20171943");
        a(spannableString, string, r1, String.format("https://twitter.com/i/commerce/merchants/%s/tos", new Object[]{Long.valueOf(j)}));
        a(spannableString, string, r2, String.format("https://twitter.com/i/commerce/merchants/%s/privacy_policy", new Object[]{Long.valueOf(j)}));
        return spannableString;
    }

    public static void a(Context context, long j, TextView textView) {
        CharSequence a = a(context, j);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(a, BufferType.SPANNABLE);
    }

    public static void a(Context context, int i, TextView textView) {
        String string = context.getString(i, new Object[]{context.getString(2131362262), context.getString(2131362266)});
        SpannableString spannableString = new SpannableString(string);
        a(spannableString, string, r0, "https://support.twitter.com/articles/20171943");
        a(spannableString, string, r1, "https://twitter.com/privacy");
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString, BufferType.SPANNABLE);
    }
}
