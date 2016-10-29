package com.twitter.android.widget;

import android.os.Message;
import android.view.View;
import android.widget.MediaController.MediaPlayerControl;

/* compiled from: Twttr */
class ci implements cf {
    private ch a;
    private MediaPlayerControl b;
    private boolean c;
    private final ce d;

    ci(ch chVar) {
        this.a = null;
        this.a = chVar;
        this.d = new ce(this);
    }

    public void a(View view) {
    }

    public void setMediaPlayer(MediaPlayerControl mediaPlayerControl) {
        this.b = mediaPlayerControl;
    }

    public void a() {
        b();
    }

    public void show(int i) {
        this.c = true;
        if (this.a != null) {
            this.a.b(i);
        }
        Message obtainMessage = this.d.obtainMessage(1);
        if (i != 0) {
            this.d.removeMessages(1);
            this.d.sendMessageDelayed(obtainMessage, (long) i);
        }
    }

    public void hide() {
        this.c = false;
        if (this.a != null) {
            this.a.c();
        }
    }

    private void b() {
        if (this.b.isPlaying()) {
            this.b.pause();
        } else {
            this.b.start();
        }
    }

    public boolean isShowing() {
        return this.c;
    }
}
