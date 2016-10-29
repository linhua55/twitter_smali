package com.twitter.library.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.DimenRes;
import android.util.AttributeSet;
import android.widget.RelativeLayout.LayoutParams;
import bcx;
import com.twitter.library.media.util.HeaderImageVariant;
import com.twitter.library.util.ao;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import defpackage.bcu;
import defpackage.bcv;
import defpackage.bdd;

/* compiled from: Twttr */
public class ProfileCardView extends UserSocialView {
    private final float u;
    private MediaImageView v;
    private final int w;
    private final int x;
    @DimenRes
    private final int y;
    private final float z;

    public ProfileCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = getResources();
        this.w = resources.getColor(bcu.twitter_blue);
        this.x = resources.getDimensionPixelSize(bcv.profile_card_banner_image_corner_radius);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ProfileCardView, 0, 0);
        this.y = obtainStyledAttributes.getResourceId(bdd.ProfileCardView_profileUserImageStrokeWidth, bcv.profile_card_user_image_border_stroke);
        int resourceId = obtainStyledAttributes.getResourceId(bdd.ProfileCardView_profileDescriptionFontSize, 0);
        this.u = obtainStyledAttributes.getFloat(bdd.ProfileCardView_profileImageTopMarginRatio, 2.0f);
        this.z = resourceId > 0 ? resources.getDimension(resourceId) : ao.a;
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.v = (MediaImageView) findViewById(bcx.banner_image);
        g();
    }

    private void g() {
        this.m.b(this.y, bcu.app_background);
        LayoutParams layoutParams = (LayoutParams) this.m.getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, (int) (((float) (-layoutParams.height)) / this.u), layoutParams.rightMargin, layoutParams.bottomMargin);
        this.m.setLayoutParams(layoutParams);
        h();
    }

    private void h() {
        Drawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadii(new float[]{(float) this.x, (float) this.x, (float) this.x, (float) this.x, 0.0f, 0.0f, 0.0f, 0.0f});
        this.v.setBackground(gradientDrawable);
    }

    public void setUser(TwitterUser twitterUser) {
        super.setUser(twitterUser);
        setBannerImageContent(twitterUser);
        a(twitterUser.g, twitterUser.D);
        setProfileDescriptionTextSize(this.z);
        this.r.setChecked(p.a(twitterUser.S));
    }

    public void c() {
        if (this.m != null) {
            this.m.setVisibility(8);
        }
    }

    private void setBannerImageContent(TwitterUser twitterUser) {
        GradientDrawable gradientDrawable = (GradientDrawable) this.v.getBackground();
        gradientDrawable.setColor(twitterUser.j != 0 ? twitterUser.j : this.w);
        this.v.setBackground(gradientDrawable);
        if (twitterUser.G != null) {
            this.v.a(a.a(twitterUser.G).a(HeaderImageVariant.j));
        } else {
            this.v.a(null);
        }
    }
}
