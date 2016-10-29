package com.twitter.android.profilecompletionmodule.profilepreview;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.util.AttributeSet;
import android.widget.TextView;
import com.twitter.android.profilecompletionmodule.BaseProfileStepScreen;
import com.twitter.internal.android.widget.FlowLayoutManager;
import com.twitter.internal.android.widget.aa;
import com.twitter.library.widget.ProfileCardView;
import com.twitter.model.core.TwitterUser;
import defpackage.bdo;

/* compiled from: Twttr */
public class ProfilePreviewScreen extends BaseProfileStepScreen<d> {
    private ProfileCardView a;
    private RecyclerView b;
    private TextView c;

    public ProfilePreviewScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected int getTitle() {
        return 0;
    }

    protected int getSubtitle() {
        return 0;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (ProfileCardView) findViewById(2131953112);
        this.c = (TextView) findViewById(2131953135);
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131690442);
        this.b = (RecyclerView) findViewById(2131952938);
        this.b.setLayoutManager(new FlowLayoutManager());
        this.b.addItemDecoration(new bdo(new aa(0, dimensionPixelSize, dimensionPixelSize, 0)));
    }

    protected void setEntitiesAdapter(Adapter adapter) {
        if (adapter != null) {
            this.b.setAdapter(adapter);
            this.b.setVisibility(0);
        } else {
            this.b.setVisibility(8);
        }
        this.b.setLayoutFrozen(true);
    }

    protected void setPendingProfilePreview(TwitterUser twitterUser) {
        this.a.setUser(twitterUser);
    }

    protected void setScreenTitle(boolean z) {
        if (z) {
            this.c.setText(2131363403);
        }
    }
}
