package com.twitter.util.ui;

import android.graphics.drawable.Drawable;
import android.widget.TextView;
import com.twitter.util.a;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class q {
    public static void a(TextView textView, CharSequence charSequence) {
        textView.setVisibility(aj.a(charSequence) ? 8 : 0);
        textView.setText(charSequence);
    }

    public static void a(TextView textView, float f) {
        textView.setTextColor((textView.getCurrentTextColor() & 16777215) | (((int) (255.0f * f)) << 24));
    }

    public static void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (a.a(textView.getResources())) {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable3, drawable2, drawable, drawable4);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }
}
