package com.twitter.android.highlights;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.media.ui.image.BaseMediaImageView;
import defpackage.bcx;

/* compiled from: Twttr */
public class ax extends bh {
    public BaseMediaImageView a;
    public ImageView b;
    public View c;
    public View d;
    public TextView e;
    public TextView f;
    public TextView g;

    public ax(View view, int i) {
        super(i, view);
    }

    public void a(View view) {
        this.a = (BaseMediaImageView) view.findViewById(2131952414);
        this.b = (ImageView) view.findViewById(2131952614);
        this.c = view.findViewById(2131952615);
        this.d = view.findViewById(bcx.header_content);
        this.e = (TextView) view.findViewById(2131952616);
        this.f = (TextView) view.findViewById(2131952079);
        this.g = (TextView) view.findViewById(2131952347);
    }
}
