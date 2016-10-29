package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.twitter.model.core.Tweet;
import com.twitter.util.ak;
import com.twitter.util.al;

/* compiled from: Twttr */
public class au {
    public static String a(Context context, Tweet tweet) {
        String str;
        String string;
        Resources resources = context.getResources();
        if (ak.f()) {
            str = '\u200e' + al.a(resources, tweet.q);
            string = resources.getString(2131364279, new Object[]{tweet.v});
        } else {
            str = resources.getString(2131364279, new Object[]{tweet.v});
            string = al.a(resources, tweet.q);
        }
        return str + resources.getString(2131364289) + string;
    }

    public static void a(boolean z, boolean z2, View view, OnClickListener onClickListener) {
        if (z) {
            view.setVisibility(0);
            view.setOnClickListener(onClickListener);
        } else {
            view.setVisibility(8);
            view.setOnClickListener(null);
        }
        if (z2 && (view instanceof TextView)) {
            ((TextView) view).setText(null);
        }
    }
}
