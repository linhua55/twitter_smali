package com.twitter.android;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.TextView;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class bm {
    public static View a(Context context, String str) {
        return a(context, str, null);
    }

    public static View a(Context context, String str, String str2) {
        View inflate = LayoutInflater.from(context).inflate(2130969392, null);
        a(inflate, str, str2);
        return inflate;
    }

    public static void a(View view, String str, String str2) {
        ((TextView) view.findViewById(2131952427)).setText(str);
        TextView textView = (TextView) view.findViewById(2131953286);
        if (aj.b((CharSequence) str2)) {
            textView.setText(str2);
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
    }

    public static void a(Context context, View view, int i) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        marginLayoutParams.setMargins(dimensionPixelSize, marginLayoutParams.topMargin, dimensionPixelSize, marginLayoutParams.bottomMargin);
        view.setLayoutParams(marginLayoutParams);
    }
}
