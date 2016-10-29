package com.twitter.android.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* compiled from: Twttr */
public class d implements OnClickListener {
    private final ImageView[] a;
    private int b;
    private final Context c;
    private final e d;

    d(Context context, LinearLayout linearLayout, e eVar) {
        this.a = new ImageView[5];
        this.a[0] = (ImageView) linearLayout.findViewById(2131951959);
        this.a[1] = (ImageView) linearLayout.findViewById(2131951960);
        this.a[2] = (ImageView) linearLayout.findViewById(2131951961);
        this.a[3] = (ImageView) linearLayout.findViewById(2131951962);
        this.a[4] = (ImageView) linearLayout.findViewById(2131951963);
        for (int i = 0; i < 5; i++) {
            this.a[i].setOnClickListener(this);
        }
        this.b = 0;
        this.d = eVar;
        this.c = context;
    }

    public void onClick(View view) {
        int i;
        switch (view.getId()) {
            case 2131951959:
                i = 1;
                break;
            case 2131951960:
                i = 2;
                break;
            case 2131951961:
                i = 3;
                break;
            case 2131951962:
                i = 4;
                break;
            case 2131951963:
                i = 5;
                break;
            default:
                i = 0;
                break;
        }
        if (i != 0) {
            b(i);
        }
    }

    public int a() {
        return this.b;
    }

    private void a(int i) {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.c, 2131034127);
        for (int i2 = 0; i2 < i; i2++) {
            this.a[i2].setImageResource(2130837701);
            this.a[i2].setAnimation(loadAnimation);
        }
    }

    private void b(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            this.a[i2].setClickable(false);
        }
        this.b = i;
        a(i);
        this.d.a(i);
    }
}
