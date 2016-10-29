package com.twitter.android.widget;

import cgl;
import com.twitter.library.widget.tweet.content.l;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
class fg implements l {
    final /* synthetic */ TweetCarouselView a;

    fg(TweetCarouselView tweetCarouselView) {
        this.a = tweetCarouselView;
    }

    public void a(MediaEntity mediaEntity) {
        if (this.a.l == null) {
            return;
        }
        if (mediaEntity.m == Type.d) {
            this.a.l.b(this.a.i, null);
        } else {
            this.a.l.a(this.a.i, mediaEntity, null);
        }
    }

    public void a(cgl cgl) {
        if (this.a.l != null) {
            cgl aa = this.a.i.aa();
            if (aa != null) {
                this.a.l.a(this.a.i, aa, null);
            }
        }
    }

    public void a(EditableMedia editableMedia) {
    }
}
