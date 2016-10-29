package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.internal.vb;
import com.google.android.gms.internal.vd;
import com.google.android.gms.internal.ve;

public abstract class e {
    final f a;
    protected int b;
    protected a c;
    protected int d;

    private Drawable a(Context context, vd vdVar, int i) {
        Resources resources = context.getResources();
        if (this.d <= 0) {
            return resources.getDrawable(i);
        }
        ve veVar = new ve(i, this.d);
        Drawable drawable = (Drawable) vdVar.get(veVar);
        if (drawable != null) {
            return drawable;
        }
        drawable = resources.getDrawable(i);
        if ((this.d & 1) != 0) {
            drawable = a(resources, drawable);
        }
        vdVar.put(veVar, drawable);
        return drawable;
    }

    protected Drawable a(Resources resources, Drawable drawable) {
        return vb.a(resources, drawable);
    }

    void a(Context context, Bitmap bitmap, boolean z) {
        g.a((Object) bitmap);
        if ((this.d & 1) != 0) {
            bitmap = vb.a(bitmap);
        }
        Drawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        if (this.c != null) {
            this.c.a(this.a.a, bitmapDrawable, true);
        }
        a(bitmapDrawable, z, false, true);
    }

    void a(Context context, vd vdVar, boolean z) {
        Drawable drawable = null;
        if (this.b != 0) {
            drawable = a(context, vdVar, this.b);
        }
        if (this.c != null) {
            this.c.a(this.a.a, drawable, false);
        }
        a(drawable, z, false, false);
    }

    protected abstract void a(Drawable drawable, boolean z, boolean z2, boolean z3);
}
