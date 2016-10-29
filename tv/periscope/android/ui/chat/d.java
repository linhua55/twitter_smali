package tv.periscope.android.ui.chat;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.dda;
import tv.periscope.android.library.h;
import tv.periscope.android.library.i;
import tv.periscope.android.library.k;
import tv.periscope.android.view.MaskImageView;

/* compiled from: Twttr */
public class d extends t implements OnClickListener {
    public final View a;
    public final TextView b;
    public final TextView c;
    public final MaskImageView d;
    public final ImageView e;
    public final View f;
    public final View g;
    public final ImageView h;
    public final TextView i;
    public j j;
    private final x l;

    public d(View view, x xVar) {
        super(view);
        this.a = view.findViewById(k.username_container);
        this.b = (TextView) view.findViewById(k.username);
        this.c = (TextView) view.findViewById(k.chat_body);
        this.d = (MaskImageView) view.findViewById(k.avatar);
        this.e = (ImageView) view.findViewById(k.reply_indicator);
        this.f = view.findViewById(k.block_indicator);
        this.g = view.findViewById(k.chat_text_container);
        this.h = (ImageView) view.findViewById(k.block_count_icon);
        this.i = (TextView) view.findViewById(k.block_count);
        this.h.setColorFilter(view.getContext().getResources().getColor(h.ps__light_grey));
        this.l = xVar;
        float dimension = view.getResources().getDimension(i.ps__card_corner_radius);
        if (dda.a(view.getContext())) {
            this.d.setCornerRadius(new float[]{0.0f, dimension, dimension, 0.0f});
        } else {
            this.d.setCornerRadius(new float[]{dimension, 0.0f, 0.0f, dimension});
        }
        if (this.l != null) {
            view.setOnClickListener(this);
        }
    }

    public void onClick(View view) {
        if (a(this.j)) {
            this.l.a(this.j.a);
        } else {
            this.l.a();
        }
    }
}
