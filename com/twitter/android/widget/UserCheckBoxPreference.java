package com.twitter.android.widget;

import android.content.Context;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import defpackage.bcx;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class UserCheckBoxPreference extends Preference {
    private TwitterUser a;
    private boolean b;
    private UserImageView c;
    private TextView d;
    private TextView e;
    private CheckBox f;

    public UserCheckBoxPreference(Context context) {
        super(context);
    }

    public void a(TwitterUser twitterUser) {
        this.a = twitterUser;
        notifyChanged();
    }

    public TwitterUser a() {
        return this.a;
    }

    protected View onCreateView(ViewGroup viewGroup) {
        super.onCreateView(viewGroup);
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2130969498, viewGroup, false);
        this.c = (UserImageView) inflate.findViewById(2131952353);
        this.d = (TextView) inflate.findViewById(bcx.name);
        this.e = (TextView) inflate.findViewById(2131952601);
        this.f = (CheckBox) inflate.findViewById(k.checkbox);
        return inflate;
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        TwitterUser twitterUser = this.a;
        this.c.a(twitterUser);
        this.d.setText(twitterUser.d);
        this.e.setText('@' + twitterUser.k);
        this.f.setChecked(this.b);
    }

    protected void onClick() {
        int i = 0;
        super.onClick();
        boolean z = !this.b;
        if (z) {
            i = 16;
        }
        if (callChangeListener(Integer.valueOf(i))) {
            a(z);
        }
    }

    protected void onSetInitialValue(boolean z, Object obj) {
        a(p.h(obj == null ? 0 : ((Integer) obj).intValue()));
    }

    public void a(boolean z) {
        if (z != this.b) {
            this.b = z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }
}
