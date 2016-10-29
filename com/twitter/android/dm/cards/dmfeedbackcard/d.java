package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.content.ContextCompat;
import defpackage.bcu;

/* compiled from: Twttr */
public class d {
    private final int a;
    private final int b;
    private final float c;
    private final int[] d;
    private final Context e;

    public d(Context context, int i, int i2, float f) {
        this.a = i2;
        this.b = i;
        this.c = f;
        this.d = new int[((this.a - this.b) + 1)];
        this.e = context;
        a();
    }

    public int a(int i) {
        if (i < this.b || i > this.a) {
            return 0;
        }
        return this.d[i - this.b];
    }

    private void a() {
        int color = ContextCompat.getColor(this.e, bcu.medium_red);
        int color2 = ContextCompat.getColor(this.e, bcu.medium_green);
        int color3 = ContextCompat.getColor(this.e, bcu.medium_yellow);
        int red = Color.red(color);
        int green = Color.green(color);
        int blue = Color.blue(color);
        int alpha = Color.alpha(color);
        int red2 = Color.red(color3);
        int green2 = Color.green(color3);
        int blue2 = Color.blue(color3);
        color3 = Color.alpha(color3);
        int red3 = Color.red(color2);
        int green3 = Color.green(color2);
        int blue3 = Color.blue(color2);
        color2 = Color.alpha(color2);
        color = this.a - this.b;
        int i = color / 2;
        int i2 = color + 1;
        for (color = 0; color <= i; color++) {
            float f = this.c * ((float) color);
            int a = a(red, red2, f);
            int a2 = a(green, green2, f);
            int a3 = a(blue, blue2, f);
            int a4 = a(alpha, color3, f);
            this.d[color] = Color.argb(a4, a, a2, a3);
        }
        for (color = i + 1; color < i2; color++) {
            float f2 = this.c * ((float) (color - i));
            green = a(red2, red3, f2);
            blue = a(green2, green3, f2);
            alpha = a(blue2, blue3, f2);
            red = a(color3, color2, f2);
            this.d[color] = Color.argb(red, green, blue, alpha);
        }
    }

    private static int a(int i, int i2, float f) {
        return (int) (((1.0f - f) * ((float) i)) + (((float) i2) * f));
    }
}
