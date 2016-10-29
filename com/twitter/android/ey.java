package com.twitter.android;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.twitter.library.api.q;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.collection.ReferenceMap;
import java.util.List;

/* compiled from: Twttr */
public class ey {
    public final b a;
    public final MediaImageView b;
    public final View c;
    public final String d;
    private final View e;

    public ey(View view, b bVar, String str, Resources resources, TextView textView, List<q> list) {
        this.c = view;
        this.d = str;
        this.a = bVar;
        this.b = (MediaImageView) this.c.findViewById(2131952311);
        this.e = this.c.findViewById(2131952312);
        this.b.setOnImageLoadedListener(new ez(this, list, textView, resources));
    }

    void a() {
        this.e.setVisibility(0);
    }

    void b() {
        this.e.setVisibility(4);
    }

    public static View a(LayoutInflater layoutInflater, OnClickListener onClickListener, ReferenceMap<String, ey> referenceMap, b bVar, String str, Resources resources, TextView textView, List<q> list) {
        View inflate = layoutInflater.inflate(2130968732, null);
        ey eyVar = new ey(inflate, bVar, str, resources, textView, list);
        eyVar.c.setOnClickListener(onClickListener);
        inflate.setTag(eyVar);
        inflate.setContentDescription(str);
        eyVar.b.a(bVar);
        referenceMap.a(str, eyVar);
        return inflate;
    }
}
