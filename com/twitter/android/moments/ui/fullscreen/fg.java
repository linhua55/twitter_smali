package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnLayoutChangeListener;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class fg implements OnLayoutChangeListener {
    private final View a;
    private final int b;
    private final float c;
    private int d;
    private boolean e;

    public fg(View view, float f, int i) {
        this.a = view;
        this.b = i;
        this.c = f;
        this.a.addOnLayoutChangeListener(this);
        this.e = true;
    }

    public void a(float f) {
        if (this.e) {
            float f2 = (-f) * ((float) this.d);
            switch (this.b) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.a.setTranslationX(f2);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.a.setTranslationY(f2);
                default:
            }
        }
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.d = (int) (((float) (this.b == 1 ? i3 - i : i4 - i2)) * this.c);
    }

    public void a() {
        this.e = false;
        switch (this.b) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.setTranslationX(0.0f);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.a.setTranslationY(0.0f);
            default:
        }
    }

    public void b() {
        this.e = true;
    }
}
