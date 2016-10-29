package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.av.video.VideoContainerHost;

/* compiled from: Twttr */
class ju implements OnClickListener {
    final /* synthetic */ VideoContainerHost a;
    final /* synthetic */ jt b;

    ju(jt jtVar, VideoContainerHost videoContainerHost) {
        this.b = jtVar;
        this.a = videoContainerHost;
    }

    public void onClick(View view) {
        this.b.c.onClick(this.a);
    }
}
