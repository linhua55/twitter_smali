package com.twitter.android.card;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.twitter.android.MediaPlayerActivity;
import com.twitter.media.model.MediaDescriptor;
import com.twitter.model.core.Tweet;
import defpackage.bdc;
import java.io.Serializable;
import java.util.ArrayList;

/* compiled from: Twttr */
class c implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Activity b;
    final /* synthetic */ String c;
    final /* synthetic */ boolean d;
    final /* synthetic */ boolean e;
    final /* synthetic */ String f;
    final /* synthetic */ Tweet g;
    final /* synthetic */ b h;

    c(b bVar, String str, Activity activity, String str2, boolean z, boolean z2, String str3, Tweet tweet) {
        this.h = bVar;
        this.a = str;
        this.b = activity;
        this.c = str2;
        this.d = z;
        this.e = z2;
        this.f = str3;
        this.g = tweet;
    }

    public void run() {
        Serializable arrayList = new ArrayList();
        if (this.a != null) {
            arrayList.add(new MediaDescriptor(this.a, true));
        }
        if (arrayList.isEmpty()) {
            try {
                this.b.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(this.f)));
                return;
            } catch (ActivityNotFoundException e) {
                Toast.makeText(this.b, bdc.unsupported_feature, 0).show();
                return;
            }
        }
        Intent intent = new Intent(this.b, MediaPlayerActivity.class);
        intent.putExtra("image_url", this.c).putExtra("aud", false).putExtra("is_looping", this.d).putExtra("simple_controls", this.e).putExtra("player_url", this.f).putExtra("player_stream_urls", arrayList).putExtra("tweet", this.g).putExtra("video_position", 0).putExtra("video_index", 0);
        this.b.startActivity(intent);
    }
}
