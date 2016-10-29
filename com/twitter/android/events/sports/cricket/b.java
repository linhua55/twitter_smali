package com.twitter.android.events.sports.cricket;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class b {
    private static void a(Context context, String str, String str2, String str3, TextView textView, TextView textView2, MediaImageView mediaImageView) {
        int indexOf = str.indexOf(45);
        int i = indexOf > 0 ? 1 : 0;
        Resources resources = context.getResources();
        if (aj.b(str)) {
            CharSequence charSequence;
            textView.setVisibility(0);
            if (i != 0) {
                charSequence = str.substring(0, indexOf) + '/' + str.substring(indexOf + 1);
            } else {
                Object obj = str;
            }
            textView.setText(charSequence);
            mediaImageView.setDefaultDrawable(resources.getDrawable(i != 0 ? 2130839184 : 2130839183));
        } else {
            mediaImageView.setDefaultDrawable(resources.getDrawable(2130839185));
        }
        mediaImageView.a(null);
        if (aj.b(str3)) {
            mediaImageView.a(a.a(str3));
        }
        if (aj.b(str2)) {
            textView2.setText(str2);
        } else if (aj.b(str)) {
            textView2.setText(resources.getString(i != 0 ? 2131361977 : 2131361958));
        }
        textView2.requestLayout();
    }

    public static void a(View view, Context context, com.twitter.model.topic.a aVar, TextView textView, TextView textView2, MediaImageView mediaImageView) {
        view.setVisibility(0);
        if (aVar.h > 0) {
            view.setOnClickListener(new c(context, aVar));
        }
        a(context, aVar.d, aVar.f, aVar.e, textView, textView2, mediaImageView);
    }

    public static void a(Context context, String str, MediaImageView mediaImageView, TextView textView, TextView textView2, boolean z) {
        if (str != null) {
            z = str.indexOf(45) <= 0;
        }
        Resources resources = context.getResources();
        mediaImageView.setDefaultDrawable(resources.getDrawable(z ? 2130839184 : 2130839183));
        mediaImageView.a(null);
        textView.setText(resources.getString(z ? 2131361977 : 2131361958));
        textView.requestLayout();
        textView2.setVisibility(8);
    }
}
