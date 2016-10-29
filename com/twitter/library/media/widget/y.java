package com.twitter.library.media.widget;

import bbl;
import bbn;
import com.twitter.media.model.MediaFile;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.b;
import com.twitter.media.request.c;
import com.twitter.util.ui.r;
import java.util.zip.DataFormatException;

/* compiled from: Twttr */
class y implements c {
    final /* synthetic */ ab a;
    final /* synthetic */ b b;
    final /* synthetic */ TweetMediaView c;

    y(TweetMediaView tweetMediaView, ab abVar, b bVar) {
        this.c = tweetMediaView;
        this.a = abVar;
        this.b = bVar;
    }

    public void a(ImageResponse imageResponse) {
        float e = this.a.b.e();
        MediaFile a = imageResponse.a();
        if (imageResponse.f() != null && a != null && ((double) Math.abs(e - a.e.e())) > 0.3d) {
            bbn.a(new bbl().a("RequestedUrl", this.b.q).a("ExpectedAspectRatio", Float.valueOf(e)).a("ReceivedAspectRatio", Float.valueOf(a.e.e())).a("ItemType", this.a.a.getClass().getSimpleName()).a("Source", imageResponse.g().name()).a("ViewHierarchy", r.a(this.c, true)).a(new DataFormatException("Received bad image data")));
        }
    }
}
