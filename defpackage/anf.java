package defpackage;

import com.twitter.android.revenue.ah;
import com.twitter.android.vq;
import com.twitter.library.view.c;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.library.widget.tweet.content.m;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;

/* compiled from: Twttr */
/* renamed from: anf */
class anf extends c {
    private final vq a;
    private final ah b;

    anf(vq vqVar, ah ahVar) {
        this.a = vqVar;
        this.b = ahVar;
    }

    public void a(Tweet tweet, cr crVar) {
        this.a.a(tweet, crVar, null, null);
    }

    public void a(Tweet tweet, MediaEntity mediaEntity, TweetView tweetView) {
        BaseMediaImageView baseMediaImageView = null;
        f contentContainer = tweetView != null ? tweetView.getContentContainer() : null;
        if (contentContainer instanceof m) {
            baseMediaImageView = ((m) contentContainer).a(mediaEntity);
        }
        this.b.a(tweet, mediaEntity, baseMediaImageView);
    }
}
