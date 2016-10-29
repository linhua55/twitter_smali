package com.twitter.android.media.stickers.timeline;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.ProfileActivity;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ StickerTimelineActivity a;

    b(StickerTimelineActivity stickerTimelineActivity) {
        this.a = stickerTimelineActivity;
    }

    public void onClick(View view) {
        ProfileActivity.a(this.a, this.a.h.c, this.a.h.k, null, null, null);
    }
}
