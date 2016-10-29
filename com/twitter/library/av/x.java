package com.twitter.library.av;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Message;

/* compiled from: Twttr */
public class x extends Handler {
    private SurfaceTexture a;

    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (this.a != null) {
            this.a.release();
        }
    }

    public void a(SurfaceTexture surfaceTexture, int i) {
        this.a = surfaceTexture;
        sendEmptyMessageDelayed(0, (long) i);
    }
}
