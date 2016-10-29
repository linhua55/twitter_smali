package com.twitter.android.profilecompletionmodule.chooseavatar;

import android.content.Context;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.twitter.android.profilecompletionmodule.BaseProfileStepScreen;
import com.twitter.library.media.widget.UserImageView;

/* compiled from: Twttr */
public class ChooseAvatarScreen extends BaseProfileStepScreen<b> {
    private UserImageView a;
    private LinearLayout b;

    public ChooseAvatarScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(2131952423).setOnClickListener(this);
        this.a = (UserImageView) findViewById(2131951938);
        this.b = (LinearLayout) findViewById(2131953134);
    }

    @StringRes
    protected int getTitle() {
        return 2131363396;
    }

    @StringRes
    protected int getSubtitle() {
        return 2131363395;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952423) {
            ((b) getPresenter()).v();
        } else {
            super.onClick(view);
        }
    }

    protected void setAvatar(String str) {
        if (str != null) {
            this.a.setVisibility(0);
            this.a.a(str);
            this.b.setVisibility(8);
        }
    }

    protected void a() {
        Toast.makeText(getContext(), 2131363383, 0).show();
    }
}
