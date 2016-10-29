package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import biw;
import com.twitter.android.mx;
import com.twitter.library.client.bg;
import com.twitter.library.database.dm.d;
import com.twitter.library.dm.DMGroupAvatarImageVariant;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;
import com.twitter.media.ui.image.config.g;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
public class DMAvatar extends RelativeLayout {
    private int a;

    /* compiled from: Twttr */
    enum Location {
        RIGHT(DMRoundingStrategy.RIGHT, 11),
        LEFT(DMRoundingStrategy.LEFT, 9),
        TOP_LEFT(DMRoundingStrategy.TOP_LEFT, 10, 9),
        BOTTOM_LEFT(DMRoundingStrategy.BOTTOM_LEFT, 12, 9);
        
        public final int[] layoutRules;
        public final g roundingStrategy;

        private Location(g gVar, int... iArr) {
            this.roundingStrategy = gVar;
            this.layoutRules = iArr;
        }

        boolean a() {
            return this == RIGHT || this == LEFT;
        }
    }

    public DMAvatar(Context context) {
        this(context, null);
    }

    public DMAvatar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DMAvatar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, mx.DMAvatar, i, 0);
        this.a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    public void setSize(int i) {
        this.a = i;
        LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = i;
            layoutParams.width = i;
            setLayoutParams(layoutParams);
        }
    }

    public void a(d dVar, OnClickListener onClickListener) {
        removeAllViews();
        if (aj.b(dVar.f)) {
            a(dVar.f, dVar.d);
        } else {
            a(dVar.j, dVar.i, dVar.d, onClickListener);
        }
    }

    private void a(String str, String str2) {
        MediaImageView mediaImageView = new MediaImageView(getContext(), new RichImageView(getContext()), true);
        mediaImageView.setLayoutParams(new LayoutParams(this.a, this.a));
        mediaImageView.setScaleType(ScaleType.b);
        mediaImageView.setRoundingStrategy(CommonRoundingStrategy.c);
        if (aj.b(str2)) {
            mediaImageView.setContentDescription(getContext().getString(2131362816, new Object[]{str2}));
        }
        mediaImageView.a(a.a(str).a(DMGroupAvatarImageVariant.e));
        addView(mediaImageView);
    }

    void a(List<TwitterUser> list, boolean z, String str, OnClickListener onClickListener) {
        removeAllViews();
        long g = bg.a().c().g();
        int size = list.size();
        if (z) {
            int dimensionPixelSize = (this.a / 2) - getResources().getDimensionPixelSize(2131689907);
            int i = this.a;
            int i2 = (size > 3 || biw.a(list, g).size() > 2) ? 1 : 0;
            if (i2 != 0) {
                addView(a((TwitterUser) list.get(1), Location.TOP_LEFT, dimensionPixelSize, dimensionPixelSize));
                addView(a((TwitterUser) list.get(2), Location.BOTTOM_LEFT, dimensionPixelSize, dimensionPixelSize));
                addView(a((TwitterUser) list.get(0), Location.RIGHT, dimensionPixelSize, i));
            } else {
                if (size > 0) {
                    addView(a((TwitterUser) list.get(0), Location.RIGHT, dimensionPixelSize, i));
                }
                if (size > 1) {
                    addView(a((TwitterUser) list.get(1), Location.LEFT, dimensionPixelSize, i));
                }
            }
            if (aj.b(str)) {
                setContentDescription(getContext().getString(2131362816, new Object[]{str}));
                return;
            }
            return;
        }
        UserImageView a = a(size > 0 ? (TwitterUser) list.get(0) : null);
        if (onClickListener != null) {
            a.setOnClickListener(onClickListener);
        }
        addView(a);
    }

    private UserImageView a(TwitterUser twitterUser) {
        CharSequence charSequence = null;
        UserImageView userImageView = new UserImageView(getContext());
        if (twitterUser != null) {
            userImageView.a(twitterUser);
            charSequence = twitterUser.c();
        } else {
            userImageView.a(null);
        }
        userImageView.setSize(this.a);
        if (aj.b(charSequence)) {
            userImageView.setContentDescription(getContext().getString(2131362816, new Object[]{charSequence}));
        }
        userImageView.setRoundingStrategy(CommonRoundingStrategy.c);
        return userImageView;
    }

    private UserImageView a(TwitterUser twitterUser, Location location, int i, int i2) {
        UserImageView userImageView = new UserImageView(getContext());
        userImageView.a(twitterUser);
        userImageView.a(i, i2);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        for (int addRule : location.layoutRules) {
            layoutParams.addRule(addRule);
        }
        userImageView.setLayoutParams(layoutParams);
        if (location.a()) {
            userImageView.setScaleType(ScaleType.b);
        }
        com.twitter.util.ui.a.a(userImageView, 2);
        userImageView.setRoundingStrategy(location.roundingStrategy);
        return userImageView;
    }
}
