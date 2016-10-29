package com.twitter.android.av.audio;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.TextView;
import com.twitter.android.av.ExternalActionButton;
import com.twitter.library.av.playback.be;
import com.twitter.model.av.Partner;
import com.twitter.model.core.Tweet;
import com.twitter.util.x;

/* compiled from: Twttr */
public class h {
    public static void a(ExternalActionButton externalActionButton, l lVar, Tweet tweet) {
        int i;
        int i2 = 2131361931;
        Partner n = be.n(tweet);
        Context context = externalActionButton.getContext();
        if ("learn".equals(lVar.d())) {
            i = 2131361931;
        } else {
            i = 2131361930;
            i2 = 2131361932;
        }
        String e = lVar.e();
        if (e != null) {
            externalActionButton.setActionText(context.getString(i, new Object[]{n}));
            externalActionButton.setExternalUri(Uri.parse(e));
            externalActionButton.setReferrerUri(Uri.parse("android-app://" + context.getApplicationContext().getPackageName()));
        }
        externalActionButton.setFallbackText(context.getString(i2, new Object[]{n}));
        String aj = tweet.aj();
        if (aj != null) {
            externalActionButton.setFallbackIntent(new Intent("android.intent.action.VIEW", Uri.parse(x.a(context, aj))));
        }
    }

    public static void a(TextView textView, l lVar) {
        textView.setText(String.format(textView.getContext().getString(2131364304), new Object[]{lVar.b(), lVar.c()}));
    }
}
