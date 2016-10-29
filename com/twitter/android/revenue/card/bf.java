package com.twitter.android.revenue.card;

import android.content.Context;
import android.view.View;
import com.twitter.android.av.revenue.VideoAppCardData;
import com.twitter.android.av.revenue.VideoConversationCardData;
import com.twitter.android.av.revenue.e;
import com.twitter.android.av.revenue.g;
import com.twitter.android.card.f;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.core.Tweet;
import defpackage.bcw;

/* compiled from: Twttr */
public class bf {
    public static void a(MediaImageView mediaImageView) {
        RichImageView richImageView = (RichImageView) mediaImageView.findViewById(2131951669);
        if (richImageView != null) {
            richImageView.setOverlayDrawable(bcw.player_overlay);
        }
    }

    public static void a(Context context, String str, View view, String str2, f fVar, View view2, Tweet tweet, VideoAppCardData videoAppCardData) {
        a(context, str, view, str2, fVar, view2, tweet, new e(videoAppCardData));
    }

    public static void a(Context context, String str, View view, String str2, f fVar, View view2, Tweet tweet, VideoConversationCardData videoConversationCardData) {
        a(context, str, view, str2, fVar, view2, tweet, new g(videoConversationCardData));
    }

    private static void a(Context context, String str, View view, String str2, f fVar, View view2, Tweet tweet, com.twitter.android.av.g gVar) {
        view2.setOnTouchListener(new bg(view, fVar, str2, str, context, view2, gVar, tweet));
    }
}
