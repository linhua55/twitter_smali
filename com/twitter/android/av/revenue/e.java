package com.twitter.android.av.revenue;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.av.AVCardCanvasActivity;
import com.twitter.android.av.g;

/* compiled from: Twttr */
public class e extends g {
    private final VideoAppCardData b;

    public e(VideoAppCardData videoAppCardData) {
        this.b = videoAppCardData;
    }

    public Intent a(Context context) {
        Intent a = super.a(context);
        a.putExtra("video_canvas_data", this.b);
        return a;
    }

    protected Class<? extends AVCardCanvasActivity> a() {
        return VideoCardCanvasActivity.class;
    }
}
