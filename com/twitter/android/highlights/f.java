package com.twitter.android.highlights;

import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class f extends at {
    public final MediaImageView a;
    public final MediaImageView b;
    public final TextView c;
    public final TextView d;
    public final View e;
    public final TextView f;
    public final TextView g;

    public f(View view) {
        super(5, view);
        this.a = (MediaImageView) view.findViewById(2131952012);
        this.b = (MediaImageView) view.findViewById(2131952599);
        this.c = (TextView) view.findViewById(2131951683);
        this.d = (TextView) view.findViewById(2131952601);
        this.e = view.findViewById(2131952600);
        this.f = (TextView) view.findViewById(2131951640);
        this.f.setMovementMethod(LinkMovementMethod.getInstance());
        this.g = (TextView) view.findViewById(2131952347);
        this.g.setMovementMethod(LinkMovementMethod.getInstance());
    }
}
