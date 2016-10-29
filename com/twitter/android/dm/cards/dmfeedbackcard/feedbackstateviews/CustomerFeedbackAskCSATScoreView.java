package com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.dm.cards.dmfeedbackcard.c;
import com.twitter.android.dm.cards.dmfeedbackcard.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import com.twitter.util.w;
import java.util.List;

/* compiled from: Twttr */
public class CustomerFeedbackAskCSATScoreView extends BaseCustomerFeedbackView implements OnClickListener {
    private static final List<Integer> e;
    private final ImageView[] f;
    private final View g;
    private final View h;

    static {
        e = n.a(Integer.valueOf(2131952300), new Integer[]{Integer.valueOf(2131952301), Integer.valueOf(2131952302), Integer.valueOf(2131952303), Integer.valueOf(2131952304)});
    }

    public CustomerFeedbackAskCSATScoreView(Context context, c cVar, b bVar) {
        super(context, cVar, bVar, "score_selection");
        a("impression");
        inflate(context, 2130968729, this);
        TextView textView = (TextView) findViewById(2131952297);
        textView.setText(cVar.o());
        textView.setTypeface(a);
        this.h = findViewById(2131952306);
        this.g = findViewById(2131952307);
        d dVar = new d(context, 1, 5, 0.5f);
        this.f = new ImageView[e.size()];
        for (int i = 0; i < e.size(); i++) {
            int i2 = i + 1;
            this.f[i] = (ImageView) findViewById(((Integer) e.get(i)).intValue());
            this.f[i].setOnClickListener(this);
            this.f[i].setTag(Integer.valueOf(i2));
            this.f[i].getDrawable().setColorFilter(dVar.a(i2), Mode.SRC_ATOP);
        }
        a();
        b();
        d();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = (View) e.a(CollectionUtils.c(this.f));
        View view2 = (View) e.a(CollectionUtils.b(this.f));
        if (w.a()) {
            a(view, this.g, i);
            b(view2, this.h, i3);
            return;
        }
        a(view2, this.h, i);
        b(view, this.g, i3);
    }

    public void onClick(View view) {
        if (e.contains(Integer.valueOf(view.getId())) && view.getTag() != null) {
            a("submit");
            c();
            view.setActivated(true);
            this.c.a(((Integer) view.getTag()).intValue());
        }
    }

    private void c() {
        for (View enabled : this.f) {
            enabled.setEnabled(false);
        }
    }

    private void d() {
        ViewGroup viewGroup = (ViewGroup) e.a((ViewGroup) findViewById(2131952298));
        ViewGroup viewGroup2 = (ViewGroup) e.a((ViewGroup) findViewById(2131952305));
        viewGroup.removeView(viewGroup2);
        viewGroup.addView(viewGroup2, 0);
    }

    private void a(View view, View view2, int i) {
        float width = (((float) view.getWidth()) / 2.0f) - (((float) view2.getWidth()) / 2.0f);
        if (view2.getX() + width >= ((float) i)) {
            view2.setTranslationX(width);
        } else {
            view2.setX((float) i);
        }
    }

    private void b(View view, View view2, int i) {
        int width = view2.getWidth();
        float width2 = (((float) width) / 2.0f) - (((float) view.getWidth()) / 2.0f);
        if ((view2.getX() + width2) + ((float) width) <= ((float) i)) {
            view2.setTranslationX(width2);
        } else {
            view2.setX((float) (i - width));
        }
    }
}
