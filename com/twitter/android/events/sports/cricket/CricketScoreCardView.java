package com.twitter.android.events.sports.cricket;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;
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
import java.util.List;
import java.util.regex.Pattern;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class CricketScoreCardView extends RelativeLayout implements OnPreDrawListener {
    private static final String a;
    private final TextView b;
    private final TextView c;
    private final TextView d;
    private final UserImageView e;
    private final UserImageView f;
    private final TextView g;
    private final TextView h;
    private final TextView i;
    private final TextView j;
    private final TextView k;
    private final TextView l;
    private final TextView m;
    private final TextView n;
    private final TextView o;
    private final TextView p;
    private final Context q;
    private final p r;
    private String s;

    static {
        a = Pattern.quote("|");
    }

    public CricketScoreCardView(Context context) {
        this(context, null, 0);
    }

    public CricketScoreCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CricketScoreCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.r = new p();
        LayoutInflater.from(context).inflate(2130968727, this, true);
        this.b = (TextView) findViewById(2131952278);
        this.c = (TextView) findViewById(2131952277);
        this.d = (TextView) findViewById(2131952279);
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131690507);
        this.e = (UserImageView) findViewById(2131952282);
        this.e.setSize(dimensionPixelSize);
        this.f = (UserImageView) findViewById(2131952287);
        this.f.setSize(dimensionPixelSize);
        this.g = (TextView) findViewById(2131952284);
        this.h = (TextView) findViewById(2131952289);
        this.i = (TextView) findViewById(2131952285);
        this.j = (TextView) findViewById(2131952290);
        this.k = (TextView) findViewById(2131952286);
        this.l = (TextView) findViewById(2131952291);
        this.m = (TextView) findViewById(2131952280);
        this.n = (TextView) findViewById(2131952281);
        this.o = (TextView) findViewById(2131952283);
        this.p = (TextView) findViewById(2131952288);
        this.q = context;
    }

    private void a() {
        String str = this.s;
        int i = -1;
        switch (str.hashCode()) {
            case -1669082995:
                if (str.equals("SCHEDULED")) {
                    i = 1;
                    break;
                }
                break;
            case -604548089:
                if (str.equals("IN_PROGRESS")) {
                    i = 0;
                    break;
                }
                break;
            case 1383663147:
                if (str.equals("COMPLETED")) {
                    i = 2;
                    break;
                }
                break;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                this.i.setVisibility(0);
                this.j.setVisibility(0);
                this.k.setVisibility(0);
                this.l.setVisibility(0);
                this.g.setVisibility(0);
                this.h.setVisibility(0);
                this.o.setVisibility(4);
                this.p.setVisibility(4);
                this.b.setVisibility(4);
                this.d.setVisibility(4);
                this.m.setVisibility(4);
                this.n.setVisibility(4);
                this.c.setVisibility(4);
            case WireMessage.WIRE_CHAT /*1*/:
                int[] iArr = new int[2];
                this.p.getLocationOnScreen(iArr);
                i = this.b.getLeft() < this.d.getLeft() ? this.b.getLeft() : this.d.getLeft();
                int right = this.b.getRight() > this.d.getRight() ? this.b.getRight() : this.d.getRight();
                if (this.o.getRight() + 40 > i || right + 40 > iArr[0]) {
                    this.o.setVisibility(4);
                    this.p.setVisibility(4);
                } else {
                    this.o.setVisibility(0);
                    this.p.setVisibility(0);
                }
                this.b.setVisibility(0);
                this.d.setVisibility(0);
                this.i.setVisibility(4);
                this.j.setVisibility(4);
                this.k.setVisibility(4);
                this.l.setVisibility(4);
                this.g.setVisibility(4);
                this.h.setVisibility(4);
                this.m.setVisibility(4);
                this.n.setVisibility(4);
                this.c.setVisibility(4);
            case WireMessage.WIRE_CONTROL /*2*/:
                int[] iArr2 = new int[2];
                this.j.getLocationOnScreen(iArr2);
                if (this.i.getRight() + 20 > this.c.getLeft() || this.c.getRight() + 20 > iArr2[0]) {
                    this.g.setVisibility(4);
                    this.h.setVisibility(4);
                    this.i.setVisibility(4);
                    this.j.setVisibility(4);
                    this.k.setVisibility(4);
                    this.l.setVisibility(4);
                    this.b.setVisibility(0);
                    this.c.setVisibility(4);
                    this.m.setVisibility(0);
                    this.n.setVisibility(0);
                } else {
                    this.g.setVisibility(0);
                    this.h.setVisibility(0);
                    this.i.setVisibility(0);
                    this.j.setVisibility(0);
                    this.k.setVisibility(0);
                    this.l.setVisibility(0);
                    this.b.setVisibility(4);
                    this.c.setVisibility(0);
                    this.m.setVisibility(4);
                    this.n.setVisibility(4);
                }
                this.o.setVisibility(4);
                this.p.setVisibility(4);
                this.d.setVisibility(4);
            default:
        }
    }

    public boolean onPreDraw() {
        a();
        getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            getViewTreeObserver().addOnPreDrawListener(this);
        }
    }

    public void a(TopicView$TopicData topicView$TopicData) {
        CharSequence charSequence = null;
        g gVar = (g) m.a(topicView$TopicData.m, d.a);
        if (gVar == null || gVar.f == null || gVar.h == null) {
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
        this.e.a(aVar.e);
        this.f.a(aVar2.e);
        a(this.e, aVar.h, aVar.c);
        a(this.f, aVar2.h, aVar2.c);
        this.g.setText(aVar.f);
        this.h.setText(aVar2.f);
        if ("IN_PROGRESS".equals(gVar.f) || "COMPLETED".equals(gVar.f)) {
            if (aVar.d == null || aVar2.d == null) {
                setVisibility(8);
                return;
            }
            CharSequence charSequence2;
            String[] split = aVar.d.split(a);
            String[] split2 = aVar2.d.split(a);
            this.i.setText(aj.a(split[0]) ? "-" : split[0]);
            this.j.setText(aj.a(split2[0]) ? "-" : split2[0]);
            TextView textView = this.k;
            if (split.length > 1) {
                charSequence2 = split[1];
            } else {
                charSequence2 = null;
            }
            textView.setText(charSequence2);
            TextView textView2 = this.l;
            if (split2.length > 1) {
                charSequence = split2[1];
            }
            textView2.setText(charSequence);
        }
        String str = gVar.f;
        int i = -1;
        switch (str.hashCode()) {
            case -1669082995:
                if (str.equals("SCHEDULED")) {
                    i = 2;
                    break;
                }
                break;
            case -604548089:
                if (str.equals("IN_PROGRESS")) {
                    i = 0;
                    break;
                }
                break;
            case 1383663147:
                if (str.equals("COMPLETED")) {
                    boolean z = true;
                    break;
                }
                break;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                if (aVar.d.endsWith("/50")) {
                    this.m.setText(aVar.f + " " + aVar.d.replace("|", " (").substring(0, (aVar.d.length() - "/50".length()) + 1) + ")");
                } else {
                    this.m.setText(aVar.f + " " + aVar.d.replace("|", " "));
                }
                if (aVar2.d.endsWith("/50")) {
                    this.n.setText(aVar2.f + " " + aVar2.d.replace("|", " (").substring(0, (aVar2.d.length() - "/50".length()) + 1) + ")");
                } else {
                    this.n.setText(aVar2.f + " " + aVar2.d.replace("|", " "));
                }
                this.b.setText(gVar.e);
                this.c.setText(gVar.e);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                this.o.setText(aVar.f);
                this.p.setText(aVar2.f);
                this.r.a(this.d, topicView$TopicData.l, true);
                this.b.setText(getResources().getString(2131362342, new Object[]{aVar.b, aVar2.b}));
                break;
            default:
                setVisibility(8);
                return;
        }
        this.s = gVar.f;
        getViewTreeObserver().addOnPreDrawListener(this);
        a();
    }

    private void a(View view, long j, String str) {
        if (j == 0 || !aj.b((CharSequence) str)) {
            view.setClickable(false);
            return;
        }
        view.setClickable(true);
        view.setOnClickListener(new a(this, j));
    }
}
