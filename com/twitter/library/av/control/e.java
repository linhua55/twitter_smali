package com.twitter.library.av.control;

import android.content.Context;
import android.widget.TextView;
import bcx;
import defpackage.bdc;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ VideoControlView c;

    e(VideoControlView videoControlView, String str, Context context) {
        this.c = videoControlView;
        this.a = str;
        this.b = context;
    }

    public void run() {
        this.c.f();
        TextView textView = (TextView) this.c.d.findViewById(bcx.msg);
        textView.setText(this.a != null ? this.a : this.b.getString(bdc.av_playlist_download_failed));
        textView.setVisibility(0);
        this.c.d.setVisibility(0);
        this.c.bringChildToFront(this.c.d);
    }
}
