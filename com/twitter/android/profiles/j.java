package com.twitter.android.profiles;

import android.graphics.Bitmap;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.c;

/* compiled from: Twttr */
class j implements c {
    final /* synthetic */ ao a;
    final /* synthetic */ HeaderImageView b;

    j(HeaderImageView headerImageView, ao aoVar) {
        this.b = headerImageView;
        this.a = aoVar;
    }

    public void a(ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap == null && this.a.g()) {
            this.a.h();
            this.b.setProfileUser(this.a);
            return;
        }
        HeaderImageView.a(this.b, bitmap);
        if (HeaderImageView.a(this.b) != null) {
            HeaderImageView.a(this.b).a(((a) imageResponse.e()).a(), bitmap);
        }
    }
}
