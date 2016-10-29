package com.twitter.android.media.stickers;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.twitter.library.media.util.ad;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class StickerView extends MediaImageView {
    private final k a;
    private final int i;
    private final Drawable j;
    private boolean k;

    public StickerView(Context context, k kVar) {
        super(context);
        this.a = kVar;
        setRotation(kVar.e);
        a(a.a(kVar.a.j.c.c).a(new ad(kVar.a.j)));
        setWillNotDraw(false);
        this.i = getResources().getDimensionPixelSize(2131690504);
        setScaleType(ScaleType.a);
        this.j = getResources().getDrawable(2130840235);
        setUpdateOnResize(true);
    }

    public k getDisplayInfo() {
        return this.a;
    }

    public void setIsActive(boolean z) {
        this.k = z;
    }

    protected a b(b bVar) {
        if (bVar != null) {
            bVar.a("stickers");
            bVar.a(new ad(this.a.a.j));
        }
        return super.b(bVar);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.k) {
            this.j.setBounds(-this.i, -this.i, getWidth() + this.i, getHeight() + this.i);
            this.j.draw(canvas);
        }
    }
}
