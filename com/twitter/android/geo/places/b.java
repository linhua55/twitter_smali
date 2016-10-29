package com.twitter.android.geo.places;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.IdRes;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.library.client.at;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.util.aj;
import defpackage.bcx;

/* compiled from: Twttr */
class b implements l {
    private final PlaceLandingActivity a;
    private final ViewGroup b;
    private final ImageView c;
    private final AspectRatioFrameLayout d;
    private final ViewGroup e;
    private o f;
    private g g;

    b(PlaceLandingActivity placeLandingActivity, ViewGroup viewGroup) {
        this.a = placeLandingActivity;
        this.b = viewGroup;
        this.d = (AspectRatioFrameLayout) viewGroup.findViewById(bcx.header_container);
        this.c = (ImageView) viewGroup.findViewById(2131951945);
        this.e = (ViewGroup) viewGroup.findViewById(bcx.header_content);
    }

    public void a(Bitmap bitmap) {
        this.a.a(bitmap);
    }

    public void a(CharSequence charSequence) {
        a(2131951946, charSequence);
    }

    public void b(CharSequence charSequence) {
        a(2131951947, charSequence);
    }

    public void c(CharSequence charSequence) {
        a(2131953060, charSequence);
    }

    public void a(boolean z) {
        this.a.a(z);
        if (!z) {
            ((PlaceTimelineFragment) ((at) this.a.m.get(0)).a(this.a.getSupportFragmentManager())).r();
        }
    }

    public void a(int i) {
        this.a.n.setCurrentItem(i);
        this.a.e.a(i);
    }

    public void a() {
        Toast.makeText(this.a, 2131363341, 1).show();
    }

    public o b() {
        if (this.f == null) {
            this.f = o.a(this.e);
            this.e.addView(this.f.a());
        }
        return this.f;
    }

    public g c() {
        if (this.g == null) {
            this.g = g.a(this.e);
            this.e.addView(this.g.a());
        }
        return this.g;
    }

    private void a(@IdRes int i, CharSequence charSequence) {
        TextView textView = (TextView) this.b.findViewById(i);
        if (aj.b(charSequence)) {
            textView.setVisibility(0);
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        textView.setText(null);
    }

    public AspectRatioFrameLayout d() {
        return this.d;
    }

    public void a(Drawable drawable) {
        this.c.setImageDrawable(drawable);
    }
}
