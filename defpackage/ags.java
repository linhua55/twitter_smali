package defpackage;

import android.graphics.Bitmap;
import android.support.v7.graphics.Palette;
import android.support.v7.graphics.Palette.PaletteAsyncListener;
import rx.al;
import rx.an;

/* compiled from: Twttr */
/* renamed from: ags */
class ags implements PaletteAsyncListener, an {
    private final al<? super Palette> a;
    private boolean b;

    ags(Bitmap bitmap, al<? super Palette> alVar) {
        this.b = false;
        this.a = alVar;
        Palette.from(bitmap).generate(this);
    }

    public void K_() {
        this.b = true;
    }

    public boolean b() {
        return this.b;
    }

    public void onGenerated(Palette palette) {
        if (!this.b) {
            this.a.a(palette);
        }
    }
}
