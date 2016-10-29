package com.twitter.library.widget;

import android.os.SystemClock;
import android.view.ViewConfiguration;
import cgl;
import com.twitter.library.widget.tweet.content.l;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
class av implements l {
    final /* synthetic */ TweetView a;
    private long b;

    av(TweetView tweetView) {
        this.a = tweetView;
        this.b = 0;
    }

    public void a(MediaEntity mediaEntity) {
        if (a()) {
            this.a.a(mediaEntity);
        }
    }

    public void a(cgl cgl) {
        if (a()) {
            this.a.c();
        }
    }

    public void a(EditableMedia editableMedia) {
        if (a()) {
            this.a.a(editableMedia);
        }
    }

    private boolean a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.b <= ((long) ViewConfiguration.getJumpTapTimeout())) {
            return false;
        }
        this.b = elapsedRealtime;
        return true;
    }
}
