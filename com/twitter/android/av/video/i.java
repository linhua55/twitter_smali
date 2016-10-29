package com.twitter.android.av.video;

import android.app.Activity;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.ax;

/* compiled from: Twttr */
public class i {
    @VisibleForTesting
    final ax a;
    private final MediaImageView b;
    private final TextView c;
    private final View d;
    private final TextView e;
    private final TextView f;
    private OnClickListener g;
    private final View h;

    public i(Activity activity, View view) {
        this.h = view;
        this.a = ax.a(activity);
        this.b = (MediaImageView) this.h.findViewById(2131952890);
        this.c = (TextView) this.h.findViewById(2131952891);
        this.d = this.h.findViewById(2131952489);
        this.e = (TextView) this.h.findViewById(2131951868);
        this.f = (TextView) this.h.findViewById(2131952079);
        a(this.d, this.e, this.f);
    }

    public void a(OnClickListener onClickListener) {
        this.g = onClickListener;
    }

    public void a() {
        if (this.b != null) {
            this.b.setFromMemoryOnly(false);
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.i();
        }
    }

    public void a(TwitterUser twitterUser) {
        int i = twitterUser != null ? 0 : 8;
        if (!(this.c == null || twitterUser == null)) {
            this.c.setText(twitterUser.d);
            this.c.setTypeface(this.a.c);
        }
        if (!(this.b == null || twitterUser == null)) {
            this.b.a(a.a(twitterUser.e));
            this.b.setFromMemoryOnly(true);
        }
        if (this.d != null) {
            this.d.setVisibility(i);
            if (this.g != null) {
                this.d.setOnClickListener(this.g);
            }
        }
    }

    public void a(String str) {
        int i = 0;
        if (this.f != null) {
            int i2 = !TextUtils.isEmpty(str) ? 1 : 0;
            if (i2 == 0) {
                i = 8;
            }
            if (i2 != 0) {
                this.f.setText(str);
                this.f.setTypeface(this.a.a);
            }
            this.f.setVisibility(i);
        }
    }

    public void b(String str) {
        if (this.e != null) {
            int i = !TextUtils.isEmpty(str) ? 1 : 0;
            int i2 = i != 0 ? 0 : 8;
            if (i != 0) {
                this.e.setText(str);
                this.e.setTypeface(this.a.a);
                this.e.setVisibility(0);
            }
            this.e.setVisibility(i2);
        }
    }

    public View c() {
        return this.h;
    }

    private void a(View... viewArr) {
        for (int i = 0; i < viewArr.length; i++) {
            if (viewArr[i] != null) {
                viewArr[i].setVisibility(8);
            }
        }
    }
}
