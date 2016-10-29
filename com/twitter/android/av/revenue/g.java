package com.twitter.android.av.revenue;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.av.AVCardCanvasActivity;

/* compiled from: Twttr */
public class g extends com.twitter.android.av.g {
    private final VideoConversationCardData b;

    public g(VideoConversationCardData videoConversationCardData) {
        this.b = videoConversationCardData;
    }

    public Intent a(Context context) {
        Intent a = super.a(context);
        a.putExtra("video_conversation_data", this.b);
        return a;
    }

    protected Class<? extends AVCardCanvasActivity> a() {
        return VideoConversationCardCanvasActivity.class;
    }
}
