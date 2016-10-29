package com.twitter.android.revenue.widget.media;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.twitter.android.mx;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.util.collection.n;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class MultiImageContainer extends LinearLayout {
    private static final int[] b;
    private static final int[] c;
    protected Context a;
    private final boolean d;
    private final boolean e;
    private final Drawable f;
    private List<MediaImageView> g;

    static {
        b = new int[5];
        b[0] = 2130969286;
        b[1] = 2130969288;
        b[2] = 2130969287;
        b[3] = 2130969285;
        b[4] = 2130969284;
        c = new int[5];
        c[0] = 2131953240;
        c[1] = 2131953241;
        c[2] = 2131953242;
        c[3] = 2131953243;
        c[4] = 2131953244;
    }

    public MultiImageContainer(Context context) {
        this(context, null);
    }

    public MultiImageContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = n.g();
        setOrientation(1);
        this.a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.MultiImageContainer, 0, 0);
        this.d = obtainStyledAttributes.getBoolean(1, false);
        this.e = obtainStyledAttributes.getBoolean(2, false);
        this.f = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    public void a(List<String> list, List<Float> list2, int i) {
        if (this.g.size() > 0) {
            a();
            this.g.clear();
        }
        if (!list.isEmpty() && list.size() <= 5) {
            boolean z;
            this.g = new ArrayList(list.size());
            if (i == 0) {
                i = b[list.size() - 1];
            }
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.a).inflate(i, null);
            if (list2.size() == list.size()) {
                z = true;
            } else {
                z = false;
            }
            for (int i2 = 0; i2 < list.size(); i2++) {
                int i3 = c[i2];
                MediaImageView mediaImageView = (MediaImageView) linearLayout.findViewById(i3);
                String str = (String) list.get(i2);
                if (!(mediaImageView == null || str == null)) {
                    this.g.add(mediaImageView);
                    mediaImageView.setFromMemoryOnly(false);
                    mediaImageView.setFadeIn(this.d);
                    mediaImageView.setTag(Integer.valueOf(i3));
                    if (z) {
                        Float f = (Float) list2.get(i2);
                        if (f != null && f.floatValue() > 0.0f) {
                            mediaImageView.setAspectRatio(f.floatValue());
                        }
                    }
                    if (this.f != null) {
                        mediaImageView.setDefaultDrawable(this.f);
                    }
                    if (this.e) {
                        mediaImageView.setRoundingStrategy(CommonRoundingStrategy.a);
                    }
                    mediaImageView.a(a.a(str));
                }
            }
            addView(linearLayout);
        }
    }

    public void a() {
        removeAllViews();
        b();
    }

    public void b() {
        for (MediaImageView mediaImageView : this.g) {
            if (mediaImageView != null) {
                mediaImageView.i();
            }
        }
    }

    public void setFromMemoryOnly(boolean z) {
        for (MediaImageView mediaImageView : this.g) {
            if (mediaImageView != null) {
                mediaImageView.setFromMemoryOnly(z);
            }
        }
    }
}
