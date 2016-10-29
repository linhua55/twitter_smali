package com.twitter.library.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bcx;
import com.twitter.model.timeline.bd;
import com.twitter.model.timeline.o;
import com.twitter.util.aj;
import defpackage.bcy;

/* compiled from: Twttr */
public class TimelineMessageView extends RelativeLayout {
    private TextView a;
    private TextView b;
    private Button c;
    private Button d;
    private View e;
    private View f;
    private at g;

    public TimelineMessageView(Context context) {
        super(context);
        a(context);
    }

    public TimelineMessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public TimelineMessageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        inflate(context, bcy.timeline_message_view_content, this);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (TextView) findViewById(bcx.header);
        this.b = (TextView) findViewById(bcx.body);
        this.d = (Button) findViewById(bcx.primary_action);
        this.d.setOnClickListener(new aq(this));
        this.c = (Button) findViewById(bcx.secondary_action);
        this.c.setOnClickListener(new ar(this));
        this.e = findViewById(bcx.dismiss);
        this.e.setOnClickListener(new as(this));
        this.f = findViewById(bcx.buttons_container);
    }

    public TimelineMessageView a(at atVar) {
        this.g = atVar;
        return this;
    }

    public void a(bd bdVar) {
        int i = 0;
        setVisibility(0);
        a(this.a, bdVar.b);
        a(this.b, bdVar.c);
        a(this.d, bdVar.d);
        a(this.c, bdVar.e);
        setupButtonsContainer(bdVar);
        View view = this.e;
        if (!bdVar.a) {
            i = 8;
        }
        view.setVisibility(i);
    }

    private void setupButtonsContainer(bd bdVar) {
        if (bdVar.d == null && bdVar.e == null) {
            this.f.setVisibility(8);
        } else {
            this.f.setVisibility(0);
        }
    }

    private static void a(Button button, o oVar) {
        if (oVar != null) {
            a((TextView) button, oVar.a);
            button.setTag(oVar);
            button.setVisibility(0);
            return;
        }
        button.setVisibility(8);
    }

    private static void a(TextView textView, String str) {
        if (aj.b(str)) {
            textView.setText(str);
            textView.setContentDescription(str);
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
    }
}
