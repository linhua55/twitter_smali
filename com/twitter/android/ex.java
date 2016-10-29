package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class ex implements OnClickListener {
    final /* synthetic */ EditProfileWithAvatarDrawerActivity a;

    ex(EditProfileWithAvatarDrawerActivity editProfileWithAvatarDrawerActivity) {
        this.a = editProfileWithAvatarDrawerActivity;
    }

    public void onClick(View view) {
        this.a.ae();
        this.a.a((ey) view.getTag());
    }
}
