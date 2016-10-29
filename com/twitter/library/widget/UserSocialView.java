package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import bcx;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.util.ao;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.p;
import com.twitter.util.aj;
import defpackage.bct;
import defpackage.bdc;
import defpackage.bdd;

/* compiled from: Twttr */
public class UserSocialView extends UserView {
    private SocialBylineView u;
    private float v;
    private float w;

    public UserSocialView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.userViewStyle);
    }

    public UserSocialView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.UserSocialView, i, 0);
        this.v = obtainStyledAttributes.getDimension(bdd.UserSocialView_contentSize, ao.a());
        this.w = obtainStyledAttributes.getDimension(bdd.UserSocialView_bylineSize, ao.b());
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.u = (SocialBylineView) findViewById(bcx.social_byline);
        a(this.v, this.w);
    }

    public void a(TwitterSocialProof twitterSocialProof, int i, boolean z) {
        if (twitterSocialProof != null) {
            a(twitterSocialProof.b, i, twitterSocialProof.c, twitterSocialProof.h == null ? twitterSocialProof.i : twitterSocialProof.i + 1, z);
        } else {
            this.u.setVisibility(8);
        }
    }

    public void a(int i, int i2, String str, int i3, boolean z) {
        SocialBylineView socialBylineView = this.u;
        if (i2 <= 0 || !aj.b(str)) {
            socialBylineView.setVisibility(8);
            return;
        }
        socialBylineView.setIcon(i2);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                socialBylineView.setLabel(getContext().getString(bdc.social_both_follow, new Object[]{str}));
                break;
            case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                if (i3 <= 0) {
                    socialBylineView.setLabel(getContext().getString(bdc.social_follow_and_follow, new Object[]{str}));
                    break;
                }
                socialBylineView.setLabel(getContext().getString(bdc.social_follow_and_more_follow, new Object[]{str, Integer.valueOf(i3)}));
                break;
        }
        socialBylineView.setVisibility(0);
        socialBylineView.setRenderRTL(z);
    }

    public void a(int i, int i2, boolean z) {
        CharSequence string;
        SocialBylineView socialBylineView = this.u;
        int i3 = this.r.getVisibility() != 0 ? 1 : 0;
        if (p.a(i2) && i3 != 0) {
            string = getContext().getString(bdc.social_following);
        } else if (p.b(i2)) {
            string = getContext().getString(bdc.social_follows_you);
        } else {
            string = null;
        }
        if (i <= 0 || string == null) {
            socialBylineView.setVisibility(8);
            return;
        }
        socialBylineView.setIcon(i);
        socialBylineView.setLabel(string);
        socialBylineView.setVisibility(0);
        socialBylineView.setRenderRTL(z);
    }

    public void a(String str, boolean z) {
        a(str, 0, z);
    }

    public void a(String str, int i, boolean z) {
        SocialBylineView socialBylineView = this.u;
        if (aj.b(str)) {
            if (i > 0) {
                socialBylineView.setIcon(i);
            } else {
                socialBylineView.setIconDrawable(null);
            }
            socialBylineView.setLabel(str);
            socialBylineView.setVisibility(0);
            socialBylineView.setRenderRTL(z);
            return;
        }
        socialBylineView.setVisibility(8);
    }

    public void setContentSize(float f) {
        this.v = f;
        float a = ao.a(f);
        this.w = a;
        a(f, a);
    }

    private void a(float f, float f2) {
        this.h.setTextSize(0, f);
        this.i.setTextSize(0, f2);
        this.u.setLabelSize(f2);
        if (this.j != null) {
            this.j.setTextSize(0, f2);
        }
        if (this.k != null) {
            this.k.setTextSize(0, f2);
        }
    }

    public void d() {
        getImageView().setSize(-1);
        this.u.setMinIconWidth(UserImageRequest.a(-1));
    }

    public void setUserImageSize(int i) {
        getImageView().setSize(i);
        this.u.setMinIconWidth(UserImageRequest.a(i));
    }

    public void setScreenNameColor(int i) {
        this.i.setTextColor(i);
    }
}
