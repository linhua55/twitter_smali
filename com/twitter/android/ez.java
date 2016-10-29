package com.twitter.android;

import android.content.res.Resources;
import android.widget.TextView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.g;
import java.util.List;

/* compiled from: Twttr */
class ez implements g<MediaImageView> {
    final /* synthetic */ List a;
    final /* synthetic */ TextView b;
    final /* synthetic */ Resources c;
    final /* synthetic */ ey d;

    ez(ey eyVar, List list, TextView textView, Resources resources) {
        this.d = eyVar;
        this.a = list;
        this.b = textView;
        this.c = resources;
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        synchronized (this.a) {
            EditProfileWithAvatarDrawerActivity.B();
            if (EditProfileWithAvatarDrawerActivity.C() == this.a.size()) {
                this.b.setText(this.c.getString(2131362738));
            }
        }
    }
}
