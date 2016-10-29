package com.twitter.android.avatars;

import com.twitter.android.widget.GalleryGridFragment;
import com.twitter.app.common.base.h;

/* compiled from: Twttr */
public class AvatarGridFragment extends GalleryGridFragment {
    public static AvatarGridFragment a(int i, int i2, int i3) {
        return a(i, i2, false, i3, false);
    }

    public static AvatarGridFragment a(int i, int i2, boolean z, int i3, boolean z2) {
        AvatarGridFragment avatarGridFragment = new AvatarGridFragment();
        avatarGridFragment.a(new h().a("style_id", i).a("header", i3).a("scroll_header", i2).a("show_expand", z).a("new_media_flow", z2).c());
        return avatarGridFragment;
    }

    protected void a(boolean z) {
        this.a = new a(getActivity(), 0, z, 0, this.b);
    }
}
