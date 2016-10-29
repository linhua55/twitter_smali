package com.twitter.android.highlights;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.library.widget.CompoundDrawableAnimButton;
import com.twitter.library.widget.ObservableScrollView;
import com.twitter.media.ui.image.MediaImageView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public abstract class at {
    public final CompoundDrawableAnimButton A;
    public final TextView B;
    public final CompoundDrawableAnimButton C;
    public final ObservableScrollView D;
    public final View E;
    public int F;
    public final int q;
    public final View r;
    public final View s;
    public final ViewGroup t;
    public final View u;
    public final List<MediaImageView> v;
    public final TextView w;
    public final ViewGroup x;
    public final CompoundDrawableAnimButton y;
    public final CompoundDrawableAnimButton z;

    public at(int i, View view) {
        int childCount;
        int i2 = 0;
        this.v = new ArrayList();
        this.F = RtlSpacingHelper.UNDEFINED;
        this.q = i;
        this.r = view;
        this.r.setTag(this);
        this.s = view.findViewById(2131952547);
        this.t = (ViewGroup) view.findViewById(2131952590);
        this.u = view.findViewById(2131952549);
        if (this.t != null) {
            childCount = this.t.getChildCount();
        } else {
            childCount = 0;
        }
        while (i2 < childCount) {
            View childAt = this.t.getChildAt(i2);
            if (childAt instanceof MediaImageView) {
                this.v.add((MediaImageView) childAt);
            }
            i2++;
        }
        this.w = (TextView) view.findViewById(2131952592);
        this.x = (ViewGroup) view.findViewById(2131952593);
        this.y = (CompoundDrawableAnimButton) view.findViewById(2131952595);
        this.z = (CompoundDrawableAnimButton) view.findViewById(2131952594);
        this.A = (CompoundDrawableAnimButton) view.findViewById(2131952596);
        this.B = (TextView) view.findViewById(2131952597);
        this.C = (CompoundDrawableAnimButton) view.findViewById(2131953139);
        this.D = (ObservableScrollView) view.findViewById(2131952598);
        this.E = view.findViewById(2131952553);
    }
}
