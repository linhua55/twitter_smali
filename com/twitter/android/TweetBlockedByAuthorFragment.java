package com.twitter.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
public class TweetBlockedByAuthorFragment extends BaseFragment implements OnClickListener {
    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969475, null);
        ((TwitterButton) inflate.findViewById(2131953327)).setOnClickListener(this);
        return inflate;
    }

    public void onClick(View view) {
        if (view.getId() == 2131953327) {
            view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131364320))));
        }
    }
}
