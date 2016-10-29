package com.twitter.android.livevideo.player;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.av.bd;
import com.twitter.app.common.base.u;

/* compiled from: Twttr */
public class a extends bd {
    private boolean k;

    public a() {
        this.k = false;
    }

    public a a(boolean z) {
        this.k = z;
        return this;
    }

    protected Intent a(Context context) {
        return b(new u().d(this.f).a(context, LiveVideoPlayerActivity.class).putExtra("is_from_rotation", this.k));
    }
}
