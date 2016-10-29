package com.twitter.android.profilecompletionmodule.chooseavatar;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Parcelable;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.lf;
import com.twitter.android.profilecompletionmodule.a;
import com.twitter.android.profilecompletionmodule.ac;
import com.twitter.android.profilecompletionmodule.af;
import com.twitter.android.twitterflows.d;
import com.twitter.android.widget.ec;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.MediaSource;
import com.twitter.util.aj;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.i;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
public class b extends a<a, ChooseAvatarState, ChooseAvatarScreen> {
    protected static final String[] b;
    protected String c;
    protected EditableImage d;
    protected boolean e;

    public /* synthetic */ Parcelable c() {
        return t();
    }

    static {
        b = new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"};
    }

    public b(a aVar, ChooseAvatarState chooseAvatarState) {
        a(aVar);
        if (chooseAvatarState == null) {
            this.c = aVar.a;
            return;
        }
        this.c = chooseAvatarState.a;
        this.d = chooseAvatarState.b;
    }

    public String aF_() {
        return "presenter_choose_avatar";
    }

    public ChooseAvatarState t() {
        return new ChooseAvatarState(this.d, this.c);
    }

    protected void m() {
        super.m();
        ((ChooseAvatarScreen) d()).setAvatar(this.c);
        if (aj.a(((a) b()).a, this.c)) {
            l();
        } else {
            k();
        }
        if (this.e) {
            u();
        }
    }

    protected String n() {
        return "avatar_screen";
    }

    public void a(int i, int i2, Intent intent) {
        if (i2 == -1) {
            switch (i) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (lf.a().a(h(), b)) {
                        e().a(2, true);
                    }
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    a((MediaFile) intent.getParcelableExtra("media_file"));
                case Util.TYPE_OTHER /*3*/:
                    j b = MediaFile.b(h(), intent.getData(), MediaType.b);
                    this.c = intent.getData().toString();
                    b.b(new f().a(i.a).a(new c(this)));
                    e().a(b);
                default:
            }
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        super.a(dialogInterface, i, i2);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (i2 == 0) {
                    a("take_photo", "click");
                    e().a(h().getString(2131363407), b, 1);
                } else if (i2 == 1) {
                    a("choose_photo", "click");
                    e().a(3);
                }
            default:
        }
    }

    protected void a(MediaFile mediaFile) {
        if (mediaFile != null) {
            this.d = (EditableImage) EditableImage.a(mediaFile, MediaSource.b);
            this.c = mediaFile.a().toString();
            return;
        }
        this.e = true;
    }

    protected void u() {
        a("avatar", "error");
        ((ChooseAvatarScreen) d()).a();
        this.e = false;
    }

    protected d o() {
        return new ac();
    }

    protected d p() {
        return new af();
    }

    protected void v() {
        a("avatar", "click");
        e().a(((ec) new ec(1).c(2131427341)).i());
    }

    public void r() {
        this.c = ((a) b()).a;
        this.d = null;
        f().a(null);
        super.r();
    }

    public void s() {
        if (this.d != null) {
            f().a(this.d.k);
        }
        super.s();
    }
}
