package com.twitter.android;

import android.view.View;
import android.widget.TextView;
import com.twitter.android.widget.TopicView.TopicData;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class rp {
    public final GroupedRowView a;
    public final MediaImageView b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public TopicData f;

    public rp(View view) {
        this.a = (GroupedRowView) view;
        this.b = (MediaImageView) view.findViewById(2131951825);
        this.c = (TextView) view.findViewById(2131952017);
        this.d = (TextView) view.findViewById(2131951693);
        this.e = (TextView) view.findViewById(2131953268);
    }
}
