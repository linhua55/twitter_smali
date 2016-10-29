package com.twitter.android.commerce.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
import com.twitter.android.card.b;
import com.twitter.android.card.h;
import com.twitter.android.card.i;
import com.twitter.android.commerce.util.c;
import com.twitter.android.revenue.card.a;
import com.twitter.android.revenue.card.r;
import com.twitter.android.revenue.widget.media.MultiImageContainer;
import com.twitter.android.revenue.x;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.util.ao;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class m extends a {
    protected MultiImageContainer a;
    protected TextView b;
    protected TextView c;
    protected TextView d;
    protected TwitterButton e;
    protected View f;
    protected final ab g;
    protected View h;
    private final CommerceCardActionHandler r;
    private MediaImageView s;
    private cmb t;

    m(Context context, DisplayMode displayMode, h hVar, b bVar) {
        super(context, displayMode, hVar, bVar);
        this.q = LayoutInflater.from(context).inflate(2130969072, new FrameLayout(context), false);
        this.g = new n(this);
        this.r = new CommerceCardActionHandler(context, bVar, hVar, i.a(displayMode));
    }

    public void a() {
        super.a();
        if (this.a != null) {
            this.a.b();
        }
        if (this.s != null) {
            this.s.i();
        }
    }

    public void b() {
        if (this.a != null) {
            this.a.setFromMemoryOnly(false);
        }
        if (this.s != null) {
            this.s.setFromMemoryOnly(false);
        }
    }

    public void a(long j, cmb cmb) {
        int i = 2130969102;
        this.t = cmb;
        this.c_.a(caw.a("_card_data", cmb));
        List a = c.a(cmb, r.a);
        boolean z = false;
        boolean a2 = x.a(this.i, this.p);
        if (a.size() <= 1) {
            z = x.a(cmc.a("original_image", cmb));
            if (!a2) {
                i = z ? 2130969103 : 2130968691;
            }
        } else if (!(a2 && a.size() == 2)) {
            i = 2130968690;
        }
        a(i);
        a(a, a2, z);
        a(cmb);
        c(cmb);
        b(cmb);
        e(cmb);
        c();
        d(cmb);
    }

    void a(List<String> list, boolean z, boolean z2) {
        int i = 0;
        if (this.a != null) {
            if (list.size() == 1) {
                int i2;
                List arrayList = new ArrayList(1);
                float f = (z && z2) ? 1.91f : 1.0f;
                arrayList.add(Float.valueOf(f));
                MultiImageContainer multiImageContainer = this.a;
                if (z) {
                    i2 = 2130969289;
                } else {
                    i2 = 0;
                }
                multiImageContainer.a(list, arrayList, i2);
            } else {
                if (z && list.size() == 2) {
                    i = 2130969290;
                }
                this.a.a(list, Collections.EMPTY_LIST, i);
            }
            this.a.setTag(r.a);
            this.a.setOnTouchListener(this.g);
        }
    }

    private void d(cmb cmb) {
        if (this.s != null) {
            cmc a = cmc.a("original_image", cmb);
            this.s.setAspectRatio(a.a(1.91f));
            this.s.a(com.twitter.media.request.a.a(a.a));
            this.s.setFromMemoryOnly(true);
        }
    }

    void a(cmb cmb) {
        if (this.b != null) {
            CharSequence a = caw.a("product_display_text", cmb);
            if (a != null) {
                this.b.setTextSize(0, ao.a);
                this.b.setText(a);
                this.b.setTag("title");
                this.b.setOnTouchListener(this.g);
            }
        }
    }

    void b(cmb cmb) {
        if (this.c != null) {
            CharSequence a = c.a(caw.a("price", cmb), caw.a("currency", cmb));
            if (a != null) {
                this.c.setVisibility(0);
                this.c.setTextSize(0, ao.a);
                this.c.setText(a);
                this.c.setTag("price");
                this.c.setOnTouchListener(this.g);
                return;
            }
            this.c.setVisibility(8);
        }
    }

    void c(cmb cmb) {
        if (this.d != null) {
            Object a = caw.a("product_domain", cmb);
            if (aj.b(a)) {
                CharSequence replace = a.replace("www.", TtmlNode.ANONYMOUS_REGION_ID);
                this.d.setVisibility(0);
                this.d.setTextSize(0, ao.a);
                this.d.setText(replace);
                this.d.setTag("product_domain");
                this.d.setOnTouchListener(this.g);
                return;
            }
            this.d.setVisibility(8);
        }
    }

    private void e(cmb cmb) {
        if (this.e != null) {
            this.e.setVisibility(8);
        }
    }

    void c() {
        if (this.f != null) {
            this.f.setOnTouchListener(this.g);
        }
    }

    protected void a(View view, MotionEvent motionEvent) {
        this.r.a(NativeCardUserAction.a(e(), view, motionEvent, 0), this.t);
    }

    protected void a(int i) {
        ViewStub viewStub = (ViewStub) this.q.findViewById(2131952841);
        if (viewStub != null) {
            viewStub.setLayoutResource(i);
            viewStub.inflate();
            this.h = this.q.findViewById(2131952842);
            this.g.a(this.h);
            this.a = (MultiImageContainer) this.q.findViewById(2131952140);
            this.b = (TextView) this.q.findViewById(2131952126);
            this.d = (TextView) this.q.findViewById(2131952142);
            this.c = (TextView) this.q.findViewById(2131952143);
            this.e = (TwitterButton) this.q.findViewById(2131952141);
            this.f = this.q.findViewById(2131952124);
            this.s = (MediaImageView) this.q.findViewById(2131952122);
            if (this.s != null) {
                this.s.setAspectRatio(1.91f);
            }
        }
    }
}
