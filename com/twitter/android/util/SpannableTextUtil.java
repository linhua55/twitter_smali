package com.twitter.android.util;

import android.content.Context;
import android.support.v4.text.BidiFormatter;
import android.text.Html;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class SpannableTextUtil {

    /* compiled from: Twttr */
    class ClickableCtaSpan extends NoUnderlineURLSpan {
        private final bl a;
        private final String b;

        ClickableCtaSpan(bl blVar, String str) {
            super(TtmlNode.ANONYMOUS_REGION_ID);
            this.a = blVar;
            this.b = str;
        }

        public void onClick(View view) {
            this.a.b(this.b);
        }
    }

    public static void a(Context context, TextView textView, int i, boolean z) {
        String string = context.getString(i, new Object[]{context.getString(2131363804), context.getString(2131363801), context.getString(2131363781)});
        CharSequence spannableString = new SpannableString(string);
        a(context, spannableString, string, r3, 2131364406, z);
        a(context, spannableString, string, r6, 2131364350, z);
        a(context, spannableString, string, r7, 2131364291, z);
        textView.setText(spannableString, BufferType.SPANNABLE);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private static void a(Context context, SpannableString spannableString, String str, String str2, int i, boolean z) {
        int indexOf = str.indexOf(str2);
        if (indexOf > 0) {
            String string = context.getString(i);
            spannableString.setSpan(z ? new WebViewURLSpan(string) : new NoUnderlineWebViewUrlSpan(string), indexOf, str2.length() + indexOf, 0);
        }
    }

    public static void a(Context context, int[] iArr, TextView textView, bl blVar) {
        List arrayList = new ArrayList();
        for (int string : iArr) {
            arrayList.add(context.getString(string));
        }
        a(context, (String[]) arrayList.toArray(new String[arrayList.size()]), 0, textView, blVar);
    }

    public static void a(Context context, String[] strArr, int i, TextView textView, bl blVar) {
        ArrayList arrayList = new ArrayList();
        if (i > 0) {
            arrayList.add(new SpannableString(context.getString(i)));
            arrayList.add(new SpannableString(" "));
        }
        BidiFormatter instance = BidiFormatter.getInstance();
        int i2 = 0;
        for (String str : strArr) {
            if (str != null) {
                SpannableString spannableString = new SpannableString(instance.unicodeWrap(str));
                spannableString.setSpan(new ClickableCtaSpan(blVar, str), 0, spannableString.length(), 17);
                if (i2 > 0) {
                    arrayList.add(new SpannableString("  \u2022  "));
                }
                arrayList.add(spannableString);
                i2++;
            }
        }
        textView.setText(TextUtils.concat((CharSequence[]) arrayList.toArray(new SpannableString[arrayList.size()])));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public static SpannableString a(Context context, int i, String str) {
        String string = context.getString(i, new Object[]{str});
        int indexOf = string.indexOf(str);
        SpannableString spannableString = new SpannableString(Html.fromHtml(string));
        spannableString.setSpan(new StyleSpan(1), indexOf, str.length() + indexOf, 18);
        return spannableString;
    }
}
