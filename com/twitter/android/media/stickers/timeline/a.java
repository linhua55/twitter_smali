package com.twitter.android.media.stickers.timeline;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.media.imageeditor.stickers.c;
import com.twitter.library.client.Session;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class a extends BroadcastReceiver {
    final /* synthetic */ StickerTimelineActivity a;

    a(StickerTimelineActivity stickerTimelineActivity) {
        this.a = stickerTimelineActivity;
    }

    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            ComponentName componentName = (ComponentName) extras.get("android.intent.extra.CHOSEN_COMPONENT");
            if (componentName != null) {
                c.a(((Session) e.a(this.a.ab())).g(), componentName, (String) extras.get("sticker_scribe_shared_page"));
            }
        }
    }
}
