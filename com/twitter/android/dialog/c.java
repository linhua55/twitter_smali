package com.twitter.android.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.ColorRes;
import android.support.v4.content.ContextCompat;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
public class c {
    public static void a(Context context, TextView textView, @ColorRes int i, String str) {
        Resources resources = context.getResources();
        textView.setText(a(context, i));
        textView.setContentDescription(resources.getString(2131361876));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setOnClickListener(new d(str, context, resources));
    }

    private static CharSequence a(Context context, @ColorRes int i) {
        return aq.a(new Object[]{new e(ContextCompat.getColor(context, i))}, context.getResources().getString(2131361875), "{{}}");
    }
}
