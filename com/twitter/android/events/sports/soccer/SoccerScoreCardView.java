package com.twitter.android.events.sports.soccer;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.mx;
import com.twitter.android.util.p;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.model.topic.a;
import com.twitter.model.topic.d;
import com.twitter.model.topic.g;
import com.twitter.util.aj;
import com.twitter.util.serialization.m;
import defpackage.bbn;
import java.io.InvalidClassException;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SoccerScoreCardView extends RelativeLayout {
    private final TextView a;
    private final UserImageView b;
    private final UserImageView c;
    private final TextView d;
    private final TextView e;
    private final TextView f;
    private final TextView g;
    private final Context h;
    private long i;
    private long j;
    private final LinearLayout k;
    private final Rect l;
    private final p m;

    public SoccerScoreCardView(Context context) {
        this(context, null, 0);
    }

    public SoccerScoreCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SoccerScoreCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.m = new p();
        LayoutInflater.from(context).inflate(2130969412, this, true);
        this.a = (TextView) findViewById(2131952278);
        this.b = (UserImageView) findViewById(2131952282);
        this.c = (UserImageView) findViewById(2131952287);
        this.d = (TextView) findViewById(2131952285);
        this.e = (TextView) findViewById(2131952290);
        this.f = (TextView) findViewById(2131952283);
        this.g = (TextView) findViewById(2131952288);
        this.k = (LinearLayout) findViewById(2131951950);
        this.h = context;
        b bVar = new b(this, null);
        this.b.setOnClickListener(bVar);
        this.c.setOnClickListener(bVar);
        this.f.setOnClickListener(bVar);
        this.g.setOnClickListener(bVar);
        this.l = new Rect();
    }

    public void a(TopicView$TopicData topicView$TopicData) {
        d dVar = (d) m.a(topicView$TopicData.m, d.a);
        if (dVar instanceof g) {
            g gVar = (g) dVar;
            if (gVar.f == null || gVar.h == null) {
                setVisibility(8);
                return;
            }
            setVisibility(0);
            List list = gVar.h;
            a aVar = (a) list.get(0);
            a aVar2 = (a) list.get(1);
            if (aVar == null || aVar2 == null) {
                setVisibility(8);
                return;
            }
            this.b.a(aVar.e);
            this.c.a(aVar2.e);
            this.f.setText(aVar.f);
            this.g.setText(aVar2.f);
            this.i = aVar.h;
            this.j = aVar2.h;
            if (this.i == 0 || aj.a(aVar.c)) {
                this.b.setClickable(false);
                this.f.setClickable(false);
            } else {
                this.b.setClickable(true);
                this.f.setClickable(true);
            }
            if (this.j == 0 || aj.a(aVar2.c)) {
                this.c.setClickable(false);
                this.g.setClickable(false);
            } else {
                this.c.setClickable(true);
                this.g.setClickable(true);
            }
            this.d.setText(aVar.d);
            this.e.setText(aVar2.d);
            Resources resources = getResources();
            String str = gVar.f;
            boolean z = true;
            switch (str.hashCode()) {
                case -1669082995:
                    if (str.equals("SCHEDULED")) {
                        z = true;
                        break;
                    }
                    break;
                case -1031784143:
                    if (str.equals("CANCELLED")) {
                        z = true;
                        break;
                    }
                    break;
                case -604548089:
                    if (str.equals("IN_PROGRESS")) {
                        z = false;
                        break;
                    }
                    break;
                case 510149230:
                    if (str.equals("POSTPONED")) {
                        z = true;
                        break;
                    }
                    break;
                case 1383663147:
                    if (str.equals("COMPLETED")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case mx.View_android_theme /*0*/:
                    CharSequence charSequence = gVar.e;
                    if (aj.b(charSequence)) {
                        this.a.setText(charSequence);
                        this.a.setBackgroundDrawable(null);
                        this.a.setTextColor(resources.getColor(2131886281));
                        return;
                    }
                    this.a.setText(resources.getString(2131362922));
                    this.a.setBackgroundDrawable(resources.getDrawable(2130840203));
                    this.a.setTextColor(resources.getColor(2131886429));
                    return;
                case WireMessage.WIRE_CHAT /*1*/:
                    this.m.a(this.a, topicView$TopicData.l);
                    this.a.setBackgroundDrawable(null);
                    this.a.setTextColor(resources.getColor(2131886281));
                    return;
                case WireMessage.WIRE_CONTROL /*2*/:
                    this.a.setText(resources.getString(2131363378));
                    this.a.setBackgroundDrawable(null);
                    this.a.setTextColor(resources.getColor(2131886281));
                    return;
                case WireMessage.WIRE_AUTH /*3*/:
                    this.a.setText(resources.getString(2131362282));
                    this.a.setBackgroundDrawable(null);
                    this.a.setTextColor(resources.getColor(2131886281));
                    return;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    this.a.setText(resources.getString(2131362043));
                    this.a.setBackgroundDrawable(null);
                    this.a.setTextColor(resources.getColor(2131886281));
                    return;
                default:
                    return;
            }
        }
        String str2;
        if (dVar == null) {
            str2 = "null";
        } else {
            str2 = topicView$TopicData.getClass().getName();
        }
        bbn.a(new InvalidClassException(str2, "Invalid TwitterTopic provided for ScoreCard"));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        String charSequence = this.a.getText().toString();
        this.a.getPaint().getTextBounds(charSequence, 0, charSequence.length(), this.l);
        if (this.k.getMeasuredWidth() >= 100 || this.l.width() <= 100) {
            this.a.setVisibility(0);
        } else {
            this.k.setVisibility(4);
        }
    }
}
