package com.twitter.android.interestpicker;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.widget.TextView;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.internal.android.widget.e;
import com.twitter.library.widget.CompoundDrawableAnimButton;
import defpackage.bcu;
import defpackage.bde;

/* compiled from: Twttr */
public class v extends ViewHolder {
    public final GroupedRowView a;
    public final TextView b;
    public final CompoundDrawableAnimButton c;
    public final e d;

    public v(GroupedRowView groupedRowView) {
        super(groupedRowView);
        this.a = groupedRowView;
        this.b = (TextView) com.twitter.util.object.e.a((TextView) groupedRowView.findViewById(2131951868));
        this.c = (CompoundDrawableAnimButton) com.twitter.util.object.e.a((CompoundDrawableAnimButton) groupedRowView.findViewById(2131952530));
        this.c.setCompoundDrawablesWithIntrinsicBounds(bde.a(groupedRowView.getResources().getDrawable(2130840030), groupedRowView.getResources().getColor(bcu.medium_gray)), null, null, null);
        this.d = (e) com.twitter.util.object.e.a(groupedRowView.findViewById(2131952639));
    }
}
