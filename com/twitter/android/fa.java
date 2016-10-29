package com.twitter.android;

import com.twitter.library.api.g;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.util.Collection;

/* compiled from: Twttr */
class fa extends z {
    final /* synthetic */ EditProfileWithAvatarDrawerActivity a;

    fa(EditProfileWithAvatarDrawerActivity editProfileWithAvatarDrawerActivity) {
        this.a = editProfileWithAvatarDrawerActivity;
    }

    public void a(x xVar) {
        if (xVar instanceof g) {
            Collection a = ((g) xVar).a();
            if (a != null) {
                this.a.v.addAll(a);
            }
            this.a.J.b((z) this);
            this.a.E();
            if (this.a.E || this.a.C) {
                EditProfileWithAvatarDrawerActivity editProfileWithAvatarDrawerActivity = this.a;
                boolean i = this.a.C ? !this.a.C : this.a.C;
                editProfileWithAvatarDrawerActivity.C = i;
                this.a.ah();
                this.a.E = false;
            }
        }
    }
}
