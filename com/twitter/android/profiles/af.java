package com.twitter.android.profiles;

import android.content.Context;
import android.widget.ImageView;

/* compiled from: Twttr */
public class af {
    public static void a(Context context, ImageView imageView, ImageView imageView2, boolean z, boolean z2, boolean z3) {
        if (imageView != null) {
            if (z) {
                imageView.setImageResource(2130839730);
                imageView.setContentDescription(context.getString(2131362809));
                imageView.setVisibility(0);
                imageView.setOnClickListener(new ag(context));
            } else if (z3) {
                imageView.setImageResource(2130839719);
                imageView.setContentDescription(context.getString(2131362808));
                imageView.setColorFilter(context.getResources().getColor(2131886180));
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        if (imageView2 == null) {
            return;
        }
        if (z2) {
            imageView2.setImageResource(2130839729);
            imageView2.setVisibility(0);
            return;
        }
        imageView2.setVisibility(8);
    }
}
