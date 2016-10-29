package com.twitter.android.autocomplete.adapters;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.library.media.widget.UserImageView;

/* compiled from: Twttr */
class k {
    public final UserImageView a;
    public final TextView b;
    public final ImageView c;
    public final TextView d;
    public final TextView e;
    public final ImageView f;
    public final ProgressBar g;

    @SuppressLint({"WrongViewCast"})
    k(View view) {
        this.a = (UserImageView) view.findViewById(2131951736);
        this.b = (TextView) view.findViewById(2131951684);
        this.c = (ImageView) view.findViewById(2131951739);
        this.d = (TextView) view.findViewById(2131951701);
        this.e = (TextView) view.findViewById(2131952719);
        this.f = (ImageView) view.findViewById(2131952346);
        this.g = (ProgressBar) view.findViewById(2131952373);
    }
}
