package tv.periscope.android.view;

import android.graphics.Bitmap;
import defpackage.dcq;

/* compiled from: Twttr */
class m implements dcq {
    final /* synthetic */ PlayerView a;

    m(PlayerView playerView) {
        this.a = playerView;
    }

    public void a(Bitmap bitmap) {
        this.a.c.setImageBitmap(bitmap);
        this.a.c.setAlpha(1.0f);
    }
}
