package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.oi;
import java.util.List;

@oi
class b extends RelativeLayout {
    private static final float[] a;
    private final RelativeLayout b;
    private AnimationDrawable c;

    static {
        a = new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    }

    public b(Context context, a aVar) {
        super(context);
        bm.a((Object) aVar);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        Drawable shapeDrawable = new ShapeDrawable(new RoundRectShape(a, null, null));
        shapeDrawable.getPaint().setColor(aVar.c());
        this.b = new RelativeLayout(context);
        this.b.setLayoutParams(layoutParams);
        ar.g().a(this.b, shapeDrawable);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(aVar.a())) {
            LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            View textView = new TextView(context);
            textView.setLayoutParams(layoutParams2);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(aVar.a());
            textView.setTextColor(aVar.d());
            textView.setTextSize((float) aVar.e());
            textView.setPadding(aa.a().a(context, 4), 0, aa.a().a(context, 4), 0);
            this.b.addView(textView);
            layoutParams.addRule(1, textView.getId());
        }
        View imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams);
        imageView.setId(1195835394);
        List<Drawable> b = aVar.b();
        if (b.size() > 1) {
            this.c = new AnimationDrawable();
            for (Drawable addFrame : b) {
                this.c.addFrame(addFrame, aVar.f());
            }
            ar.g().a(imageView, this.c);
        } else if (b.size() == 1) {
            imageView.setImageDrawable((Drawable) b.get(0));
        }
        this.b.addView(imageView);
        addView(this.b);
    }

    public ViewGroup a() {
        return this.b;
    }

    public void onAttachedToWindow() {
        if (this.c != null) {
            this.c.start();
        }
        super.onAttachedToWindow();
    }
}
