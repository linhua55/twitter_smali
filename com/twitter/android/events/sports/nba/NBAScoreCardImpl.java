package com.twitter.android.events.sports.nba;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.util.p;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.model.topic.a;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class NBAScoreCardImpl extends RelativeLayout implements a {
    private final TextView a;
    private final UserImageView b;
    private final UserImageView c;
    private final TextView d;
    private final TextView e;
    private final TextView f;
    private final TextView g;
    private final p h;

    public NBAScoreCardImpl(Context context) {
        this(context, null, 0);
    }

    public NBAScoreCardImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NBAScoreCardImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new p();
        LayoutInflater.from(context).inflate(2130969120, this, true);
        this.a = (TextView) findViewById(2131952278);
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131690507);
        this.b = (UserImageView) findViewById(2131952282);
        this.b.setSize(dimensionPixelSize);
        this.c = (UserImageView) findViewById(2131952287);
        this.c.setSize(dimensionPixelSize);
        this.d = (TextView) findViewById(2131952284);
        this.e = (TextView) findViewById(2131952289);
        this.f = (TextView) findViewById(2131952285);
        this.g = (TextView) findViewById(2131952290);
    }

    public void a() {
        setVisibility(8);
    }

    public void b() {
        setVisibility(0);
    }

    public View getView() {
        return this;
    }

    public void a(a aVar, a aVar2) {
        this.b.a(aVar.e);
        this.c.a(aVar2.e);
        a(this.b, aVar.h, aVar.c);
        a(this.c, aVar2.h, aVar2.c);
        this.d.setText(aVar.f);
        this.e.setText(aVar2.f);
    }

    public void setGameStatusText(String str) {
        this.a.setText(str);
    }

    public void setGameStatusDate(long j) {
        this.h.a(this.a, j, true);
    }

    public void a(String str, String str2) {
        this.f.setText(str);
        this.g.setText(str2);
    }

    private void a(View view, long j, String str) {
        if (j == 0 || !aj.b((CharSequence) str)) {
            view.setClickable(false);
            return;
        }
        view.setClickable(true);
        view.setOnClickListener(new b(this, j));
    }
}
