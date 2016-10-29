package com.twitter.library.widget.tweet.content;

import cgl;
import com.twitter.android.av.p;
import com.twitter.library.media.widget.AdaptiveTweetMediaView;
import com.twitter.library.media.widget.z;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.ui.a;
import cpb;
import defpackage.buf;
import defpackage.buq;
import java.util.List;

/* compiled from: Twttr */
public class d {
    public static void a(boolean z, AdaptiveTweetMediaView adaptiveTweetMediaView, z zVar, Tweet tweet, int i, int i2, boolean z2) {
        boolean z3;
        boolean z4 = true;
        if (zVar != null) {
            adaptiveTweetMediaView.setOnImageLoadedListener(zVar);
        }
        a.a(adaptiveTweetMediaView, 4);
        cgl aa = tweet.aa();
        adaptiveTweetMediaView.setMediaDividerSize(i);
        adaptiveTweetMediaView.setMediaPlaceholder(i2);
        boolean z5 = z2 && buf.a().g();
        adaptiveTweetMediaView.c(z5);
        if (z5 || p.a(tweet)) {
            z3 = true;
        } else {
            z3 = false;
        }
        adaptiveTweetMediaView.a(z3);
        adaptiveTweetMediaView.b(z5);
        adaptiveTweetMediaView.setSingleImageMinAspectRatio(1.0f);
        Iterable a = cpb.a(tweet.Y(), buf.a().e());
        if (buq.a().b()) {
            adaptiveTweetMediaView.setAllowLowResPreview(true);
        }
        if (z) {
            List list = tweet.W;
            if (!list.isEmpty()) {
                adaptiveTweetMediaView.setEditableMedia(list);
            }
        } else if (aa != null) {
            adaptiveTweetMediaView.setCard(aa);
        } else if (CollectionUtils.b(a)) {
            adaptiveTweetMediaView.d();
        } else {
            adaptiveTweetMediaView.a(a, tweet.C);
        }
        if (adaptiveTweetMediaView.g()) {
            adaptiveTweetMediaView.setVisibility(0);
        } else {
            adaptiveTweetMediaView.setVisibility(8);
        }
        if (tweet.ac()) {
            z4 = false;
        }
        adaptiveTweetMediaView.setClickable(z4);
    }
}
