package defpackage;

import android.graphics.Bitmap;
import android.view.View;
import bum;
import cra;

/* compiled from: Twttr */
/* renamed from: buo */
class buo implements cra {
    final /* synthetic */ View a;
    final /* synthetic */ bum b;

    buo(bum bum, View view) {
        this.b = bum;
        this.a = view;
    }

    public void a(Bitmap bitmap) {
        if (this.a.getVisibility() == 0) {
            this.a.setVisibility(4);
        }
        bum.b(this.b).setImageBitmap(bitmap);
    }

    public void a() {
    }

    public void b() {
    }

    public void c() {
        d();
    }

    private void d() {
        bum.b(this.b).setOnTouchListener(null);
        bum.b(this.b).setVisibility(8);
        bum.b(this.b).setImageBitmap(null);
        this.a.setVisibility(0);
    }
}
