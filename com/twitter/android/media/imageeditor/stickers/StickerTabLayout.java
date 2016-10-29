package com.twitter.android.media.imageeditor.stickers;

import android.content.Context;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.object.e;
import defpackage.bcu;
import defpackage.ckp;

/* compiled from: Twttr */
public class StickerTabLayout extends TabLayout {
    public StickerTabLayout(Context context) {
        this(context, null);
    }

    public StickerTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickerTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setSelectedTabIndicatorColor(getResources().getColor(bcu.white));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        super.setupWithViewPager(viewPager);
        if (viewPager != null) {
            if (viewPager.getAdapter() == null) {
                throw new IllegalStateException("Set adapter before setting up tabs");
            }
            removeAllTabs();
            Context context = getContext();
            a aVar = (a) viewPager.getAdapter();
            int dimensionPixelSize = getResources().getDimensionPixelSize(2131690499);
            for (int i = 0; i < aVar.getCount(); i++) {
                Object obj;
                View imageView;
                if (i == 0 && aVar.a()) {
                    obj = null;
                    imageView = new ImageView(context);
                    imageView.setScaleType(ScaleType.CENTER_INSIDE);
                    imageView.setImageDrawable(getResources().getDrawable(2130839922));
                    imageView.setContentDescription(getResources().getString(2131363881));
                } else {
                    ckp ckp = (ckp) e.a(aVar.a(aVar.a() ? i - 1 : i));
                    if (ckp.e.equals("recently_used")) {
                        imageView = new ImageView(context);
                        imageView.setScaleType(ScaleType.CENTER_INSIDE);
                        imageView.setImageDrawable(getResources().getDrawable(2130839921));
                        imageView.setContentDescription(getResources().getString(2131363883));
                    } else {
                        imageView = new MediaImageView(context);
                        imageView.setScaleMode(1);
                        imageView.setScaleType(BaseMediaImageView.ScaleType.c);
                        if (ckp.d != null) {
                            imageView.a(a.a(ckp.d.c));
                        } else {
                            imageView.setDefaultDrawable(getResources().getDrawable(2130839280));
                        }
                        imageView.setContentDescription(ckp.e);
                    }
                }
                addTab(newTab().setCustomView(imageView).setTag(obj));
                LayoutParams layoutParams = imageView.getLayoutParams();
                layoutParams.width = dimensionPixelSize;
                layoutParams.height = dimensionPixelSize;
            }
        }
    }
}
