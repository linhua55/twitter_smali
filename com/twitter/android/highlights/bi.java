package com.twitter.android.highlights;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import bbl;
import bbn;
import cgl;
import com.twitter.library.media.widget.TweetMediaView;
import com.twitter.library.util.InvalidDataException;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class bi extends bo {
    public static void a(TweetMediaView tweetMediaView, View view, Tweet tweet) {
        boolean z = true;
        int i = 0;
        tweetMediaView.setTag(tweet);
        if (tweet.w.d.c()) {
            tweetMediaView.setCard(tweet.aa());
        } else {
            tweetMediaView.a(tweet.w.d, tweet.C);
        }
        boolean g = tweetMediaView.g();
        if (view != null) {
            if (!g) {
                i = 8;
            }
            view.setVisibility(i);
        } else if (!g) {
            bbl bbl = new bbl(new InvalidDataException("Tweet without any media is being shown with media"));
            cgl aa = tweet.aa();
            bbl.a("highlightsHasMedia", Boolean.valueOf(!tweet.w.d.c())).a("highlightsHasCard", Boolean.valueOf(aa != null));
            if (aa != null) {
                String str = "highlightsHasPhotoCard";
                if (aa.r() == null) {
                    z = false;
                }
                bbl.a(str, Boolean.valueOf(z)).a("highlightsHasPlayerCard", Boolean.valueOf(aa.t()));
            }
            bbn.a(bbl);
        }
    }

    public int a(int i) {
        return 2130968907;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        super.a(atVar, layoutInflater, akVar);
        ((bk) atVar).a.setOnMediaClickListener(akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        super.a(asVar, atVar, context, akVar, str, str2, z);
        a(((bk) atVar).a, null, ((bj) asVar).b);
    }
}
