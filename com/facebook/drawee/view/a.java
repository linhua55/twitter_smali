package com.facebook.drawee.view;

import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import com.google.android.exoplayer.C;

/* compiled from: Twttr */
public class a {
    public static void a(b bVar, float f, LayoutParams layoutParams, int i, int i2) {
        if (f > 0.0f) {
            if (a(layoutParams.height)) {
                bVar.b = MeasureSpec.makeMeasureSpec(View.resolveSize((int) ((((float) (MeasureSpec.getSize(bVar.a) - i)) / f) + ((float) i2)), bVar.b), C.ENCODING_PCM_32BIT);
            } else if (a(layoutParams.width)) {
                bVar.a = MeasureSpec.makeMeasureSpec(View.resolveSize((int) ((((float) (MeasureSpec.getSize(bVar.b) - i2)) * f) + ((float) i)), bVar.a), C.ENCODING_PCM_32BIT);
            }
        }
    }

    private static boolean a(int i) {
        return i == 0 || i == -2;
    }
}
