package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.internal.oi;

@oi
public class zzo extends FrameLayout implements OnClickListener {
    private final ImageButton a;
    private final z b;

    public zzo(Context context, int i, z zVar) {
        super(context);
        this.b = zVar;
        setOnClickListener(this);
        this.a = new ImageButton(context);
        this.a.setImageResource(17301527);
        this.a.setBackgroundColor(0);
        this.a.setOnClickListener(this);
        this.a.setPadding(0, 0, 0, 0);
        this.a.setContentDescription("Interstitial close button");
        int a = aa.a().a(context, i);
        addView(this.a, new LayoutParams(a, a, 17));
    }

    public void a(boolean z, boolean z2) {
        if (!z2) {
            this.a.setVisibility(0);
        } else if (z) {
            this.a.setVisibility(4);
        } else {
            this.a.setVisibility(8);
        }
    }

    public void onClick(View view) {
        if (this.b != null) {
            this.b.c();
        }
    }
}
