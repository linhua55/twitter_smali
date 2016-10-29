package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bcx;
import cni;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.view.o;
import com.twitter.media.ui.image.h;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.p;
import com.twitter.util.aj;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
public class BaseUserView extends RelativeLayout implements h {
    protected final int b;
    protected final int c;
    protected final int d;
    protected final int d_;
    protected final int e;
    protected long f;
    protected String g;
    protected TextView h;
    protected TextView i;
    protected TextView j;
    protected TextView k;
    protected TextView l;
    protected UserImageView m;
    protected ImageView n;
    protected ImageView o;
    protected ImageView p;
    protected View q;
    private final int r;
    private final int s;

    public BaseUserView(Context context) {
        this(context, null, 0);
    }

    public BaseUserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.userViewStyle);
    }

    public BaseUserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.UserView, i, 0);
        this.r = obtainStyledAttributes.getResourceId(bdd.UserView_promotedDrawable, 0);
        this.s = obtainStyledAttributes.getResourceId(bdd.UserView_politicalDrawable, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(bdd.UserView_actionButtonPadding, 0);
        this.d_ = obtainStyledAttributes.getDimensionPixelSize(bdd.UserView_actionButtonPaddingLeft, dimensionPixelSize);
        this.b = obtainStyledAttributes.getDimensionPixelSize(bdd.UserView_actionButtonPaddingTop, dimensionPixelSize);
        this.c = obtainStyledAttributes.getDimensionPixelSize(bdd.UserView_actionButtonPaddingRight, dimensionPixelSize);
        this.d = obtainStyledAttributes.getDimensionPixelSize(bdd.UserView_actionButtonPaddingBottom, dimensionPixelSize);
        this.e = obtainStyledAttributes.getColor(bdd.UserView_profileTextColor, 0);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.i = (TextView) findViewById(bcx.screenname_item);
        this.o = (ImageView) findViewById(bcx.protected_item);
        this.p = (ImageView) findViewById(bcx.verified_item);
        this.h = (TextView) findViewById(bcx.name_item);
        this.m = (UserImageView) findViewById(bcx.user_image);
        this.k = (TextView) findViewById(bcx.extra_info);
        this.j = (TextView) findViewById(bcx.promoted);
        this.l = (TextView) findViewById(bcx.profile_description_item);
        this.n = (ImageView) findViewById(bcx.muted_item);
        this.q = findViewById(bcx.follows_you);
    }

    public void setUserId(long j) {
        this.f = j;
    }

    public void setUser(TwitterUser twitterUser) {
        this.m.a(twitterUser);
        setUserId(twitterUser.c);
        a(twitterUser.k, twitterUser.d);
        setVerified(twitterUser.n);
        setProtected(twitterUser.m);
        setFollowsYou(p.b(twitterUser.S));
    }

    public void setUserImageUrl(String str) {
        this.m.a(str);
    }

    public void aG_() {
        this.m.aG_();
    }

    public void f() {
        this.m.f();
    }

    public void a(String str, String str2) {
        this.g = str;
        CharSequence charSequence = '@' + str;
        if (aj.a(str2)) {
            this.h.setText(charSequence);
            this.i.setText(null);
            return;
        }
        this.h.setText(str2);
        this.i.setText(charSequence);
    }

    public void a(String str, bg bgVar) {
        this.l.setVisibility(aj.a(str) ? 8 : 0);
        if (bgVar == null || (bgVar.c.c() && bgVar.e.c())) {
            this.l.setText(str);
        } else {
            this.l.setText(o.a((CharSequence) str).a(bgVar).a(this.e).a());
        }
    }

    public void a(boolean z) {
        boolean b = aj.b(this.l.getText());
        TextView textView = this.l;
        int i = (z && b) ? 0 : 8;
        textView.setVisibility(i);
    }

    public void setProfileDescriptionTextSize(float f) {
        this.l.setTextSize(0, f);
    }

    public void a() {
        this.l.setVisibility(8);
    }

    public void setProtected(boolean z) {
        if (z) {
            this.o.setVisibility(0);
        } else {
            this.o.setVisibility(8);
        }
    }

    public void setFollowsYou(boolean z) {
        if (this.q != null) {
            this.q.setVisibility(z ? 0 : 8);
        }
    }

    public void setVerified(boolean z) {
        if (z) {
            this.p.setVisibility(0);
        } else {
            this.p.setVisibility(8);
        }
    }

    public void setMuted(boolean z) {
        this.n.setActivated(z);
        if (z) {
            this.n.setVisibility(0);
        } else {
            this.n.setVisibility(8);
        }
    }

    public boolean b() {
        return this.n.isActivated();
    }

    public void setExtraInfo(String str) {
        if (aj.a(str)) {
            this.k.setVisibility(8);
            return;
        }
        this.k.setText(str);
        this.k.setVisibility(0);
    }

    public void a(cni cni, boolean z) {
        a(cni, z, this.j, this.s, this.r);
    }

    public static void a(cni cni, boolean z, TextView textView, int i, int i2) {
        if (cni == null) {
            textView.setVisibility(8);
            textView.setTag(null);
        } else if (cni.c()) {
            textView.setVisibility(8);
            textView.setTag(null);
        } else {
            if (!cni.b()) {
                i = i2;
            }
            if (z) {
                textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, i, 0);
            } else {
                textView.setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
            }
            textView.setVisibility(0);
            textView.setTag(cni);
        }
    }

    public UserImageView getImageView() {
        return this.m;
    }

    public cni getPromotedContent() {
        if (this.j != null) {
            return (cni) this.j.getTag();
        }
        return null;
    }

    public long getUserId() {
        return this.f;
    }

    public String getUserName() {
        return this.g;
    }

    public CharSequence getBestName() {
        return this.h.getText();
    }
}
