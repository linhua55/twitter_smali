package com.twitter.android.profilecompletionmodule.chooseheader;

import android.content.Context;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Toast;
import com.twitter.android.profilecompletionmodule.BaseProfileStepScreen;
import com.twitter.library.widget.ProfileCardView;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class ChooseHeaderScreen extends BaseProfileStepScreen<b> {
    private ProfileCardView a;
    private MediaImageView b;
    private View c;

    public ChooseHeaderScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (ProfileCardView) e.a((ProfileCardView) findViewById(2131953112));
        this.b = (MediaImageView) e.a((MediaImageView) findViewById(2131951632));
        this.b.setOnClickListener(this);
        this.c = (View) e.a(findViewById(2131953111));
        this.c.setVisibility(0);
        this.c.setOnClickListener(this);
        findViewById(2131951736).setOnClickListener(this);
    }

    @StringRes
    protected int getTitle() {
        return 2131363399;
    }

    @StringRes
    protected int getSubtitle() {
        return 2131363398;
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131953111 || id == 2131951632) {
            ((b) getPresenter()).v();
        } else {
            super.onClick(view);
        }
    }

    protected void a() {
        this.b.setVisibility(4);
    }

    protected void setHeader(String str) {
        if (str != null) {
            this.c.setVisibility(8);
            this.b.setVisibility(0);
            this.b.a(a.a(str));
        }
    }

    protected void setHeaderScreenProfileCard(TwitterUser twitterUser) {
        this.a.setUser(twitterUser);
    }

    protected void b() {
        Toast.makeText(getContext(), 2131363388, 0).show();
    }
}
