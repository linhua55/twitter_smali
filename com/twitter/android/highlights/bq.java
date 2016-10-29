package com.twitter.android.highlights;

import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.twitter.library.media.widget.UserImageView;

/* compiled from: Twttr */
class bq extends at {
    public final UserImageView f;
    public final TextView g;
    public final View h;
    public final TextView i;
    public final TextView j;

    bq(int i, View view) {
        super(i, view);
        this.f = (UserImageView) view.findViewById(2131952012);
        this.g = (TextView) view.findViewById(2131951683);
        this.h = view.findViewById(2131952600);
        this.i = (TextView) view.findViewById(2131951700);
        this.j = (TextView) view.findViewById(2131952571);
        this.j.setMovementMethod(LinkMovementMethod.getInstance());
    }
}
