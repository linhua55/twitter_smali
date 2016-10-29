package com.twitter.android.profilecompletionmodule.chooseheader;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Parcelable;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.lf;
import com.twitter.android.media.imageeditor.EditImageActivity;
import com.twitter.android.profilecompletionmodule.a;
import com.twitter.android.profilecompletionmodule.ac;
import com.twitter.android.twitterflows.d;
import com.twitter.android.widget.ec;
import com.twitter.library.media.util.t;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import com.twitter.util.aj;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.i;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
public class b extends a<a, ChooseHeaderState, ChooseHeaderScreen> {
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

    public b(a aVar, ChooseHeaderState chooseHeaderState) {
        a(aVar);
        if (chooseHeaderState == null) {
            this.c = aVar.a.G;
            return;
        }
        this.c = chooseHeaderState.a;
        this.d = chooseHeaderState.b;
    }

    public String aF_() {
        return "presenter_choose_header";
    }

    public ChooseHeaderState t() {
        return new ChooseHeaderState(this.d, this.c);
    }

    protected void m() {
        String uri;
        super.m();
        TwitterUser twitterUser = ((a) b()).a;
        MediaFile a = f().a();
        ChooseHeaderScreen chooseHeaderScreen = (ChooseHeaderScreen) d();
        cp f = new cp().a(twitterUser.c).h(this.c).a(twitterUser.d).f(twitterUser.k);
        if (a != null) {
            uri = a.a().toString();
        } else {
            uri = twitterUser.e;
        }
        chooseHeaderScreen.setHeaderScreenProfileCard((TwitterUser) f.b(uri).q());
        if (this.c == null) {
            ((ChooseHeaderScreen) d()).a();
        }
        if (aj.a(((a) b()).a.G, this.c)) {
            l();
        } else {
            k();
        }
        if (this.e) {
            u();
        }
    }

    protected String n() {
        return "header_screen";
    }

    protected d o() {
        return new ac();
    }

    protected d p() {
        return new ac();
    }

    protected void a(int i, int i2, Intent intent) {
        if (i2 == -1) {
            j b;
            switch (i) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (lf.a().a(h(), b)) {
                        e().a(2, false);
                    }
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (intent != null) {
                        MediaFile mediaFile = (MediaFile) intent.getParcelableExtra("media_file");
                        a(mediaFile != null ? (EditableImage) EditableImage.a(mediaFile, MediaSource.e) : null);
                    }
                case Util.TYPE_OTHER /*3*/:
                    if (intent != null) {
                        b = MediaFile.b(h(), intent.getData(), MediaType.b);
                        b.b(new f().a(i.a).a(new c(this)));
                        e().a(b);
                    }
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (intent != null) {
                        EditableMedia a = EditImageActivity.a(intent);
                        if (a != null) {
                            b = t.b(h(), a);
                            b.b(new f().a(i.a).a(new d(this)));
                            e().a(b);
                            return;
                        }
                        return;
                    }
                    this.d = null;
                    this.c = ((a) b()).a.G;
                default:
            }
        }
    }

    protected void a(EditableImage editableImage) {
        if (editableImage != null) {
            a("crop", "launch");
            this.d = editableImage;
            e().a(4, editableImage);
            return;
        }
        this.e = true;
    }

    protected void u() {
        a("header", "error");
        ((ChooseHeaderScreen) d()).b();
        this.e = false;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        super.a(dialogInterface, i, i2);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (i2 == 0) {
                    a("take_photo", "click");
                    e().a(h().getString(2131362754), b, 1);
                } else if (i2 == 1) {
                    a("choose_photo", "click");
                    e().a(3);
                }
            default:
        }
    }

    protected void v() {
        a("header", "click");
        e().a(((ec) new ec(1).c(2131427341)).i());
    }

    protected void r() {
        this.c = ((a) b()).a.G;
        this.d = null;
        f().b(null);
        super.r();
    }

    protected void s() {
        if (this.d != null) {
            f().b(this.d.k);
        }
        super.s();
    }
}
