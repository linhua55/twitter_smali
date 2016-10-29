package com.twitter.android.composer.geotag;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.model.geo.TwitterPlace;
import java.util.List;

/* compiled from: Twttr */
public class InlinePlacePickerView extends LinearLayout implements o {
    private g a;
    private ImageView b;
    private RecyclerView c;
    private TextView d;
    private r e;

    public InlinePlacePickerView(Context context) {
        this(context, null);
    }

    public InlinePlacePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InlinePlacePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (ImageView) findViewById(2131952633);
        this.c = (RecyclerView) findViewById(2131952635);
        this.d = (TextView) findViewById(2131952634);
        this.a = new g(getContext(), this.d, new p(this));
        this.c.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.c.setAdapter(this.a);
        this.d.setOnClickListener(new q(this));
    }

    private void c() {
        if (this.e == null) {
            return;
        }
        if (d()) {
            this.e.c();
        } else {
            this.e.b();
        }
    }

    private boolean d() {
        return this.d.getVisibility() == 0 && !TextUtils.equals(this.d.getText(), getResources().getString(2131362290));
    }

    public void setViewListener(r rVar) {
        this.e = rVar;
    }

    public void a(String str) {
        this.b.setVisibility(0);
        this.d.setVisibility(0);
        if (TextUtils.isEmpty(str)) {
            str = getResources().getString(2131362290);
        }
        if (!TextUtils.equals(this.d.getText(), str)) {
            Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 2131034162);
            this.d.setText(str);
            this.d.startAnimation(loadAnimation);
        }
    }

    public void a() {
        this.b.setVisibility(8);
        this.d.setVisibility(8);
    }

    public void a(List<TwitterPlace> list) {
        if (list.size() > 0) {
            this.a.a(list);
            this.c.setVisibility(0);
            return;
        }
        b();
    }

    public void b() {
        this.c.setVisibility(8);
    }
}
