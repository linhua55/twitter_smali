package com.twitter.library.av.model.parser;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.internal.network.i;
import com.twitter.internal.network.k;
import com.twitter.model.av.Video;
import defpackage.bdc;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public abstract class c implements i {
    public Video[] a;
    public int b;

    protected abstract void a(InputStream inputStream) throws Exception;

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        if (i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            try {
                a(inputStream);
            } catch (Exception e) {
                this.a = null;
            }
        } else if (i == 403) {
            this.a = null;
            this.b = bdc.av_playback_forbidden;
        }
    }

    public void a(k kVar) {
        this.a = null;
    }
}
