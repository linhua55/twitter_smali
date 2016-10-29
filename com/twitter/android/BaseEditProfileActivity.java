package com.twitter.android;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.twitter.android.client.bv;
import com.twitter.android.media.camera.CameraActivity;
import com.twitter.android.media.imageeditor.EditImageActivity;
import com.twitter.android.profiles.HeaderImageView;
import com.twitter.android.profiles.ao;
import com.twitter.android.profiles.as;
import com.twitter.android.profiles.i;
import com.twitter.android.profiles.k;
import com.twitter.android.profiles.l;
import com.twitter.android.profiles.o;
import com.twitter.android.runtimepermissions.b;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.av;
import com.twitter.library.media.util.af;
import com.twitter.library.media.util.x;
import com.twitter.library.media.util.z;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.aj;
import com.twitter.util.concurrent.f;
import com.twitter.util.object.e;
import defpackage.bcx;
import defpackage.boo;
import java.util.ArrayList;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class BaseEditProfileActivity extends TwitterFragmentActivity implements k, o, j, m {
    private static final String[] m;
    protected TwitterScribeAssociation a;
    protected ao b;
    EditableImage c;
    EditableImage d;
    boolean e;
    boolean f;
    boolean g;
    TwitterUser h;
    HeaderImageView i;
    UserImageView j;
    EditText k;
    String l;
    private final ArrayList<CharSequence> n;
    private boolean o;
    private boolean p;
    private l q;
    private ProgressDialog r;

    protected abstract TwitterScribeAssociation a();

    protected abstract void a(Intent intent);

    protected abstract String i();

    protected abstract String j();

    protected abstract boolean r();

    protected abstract boolean s();

    protected abstract String y_();

    public BaseEditProfileActivity() {
        this.n = new ArrayList(3);
        this.p = false;
    }

    static {
        m = new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"};
    }

    public void a(DialogInterface dialogInterface, int i) {
    }

    @SuppressLint({"WrongViewCast"})
    public void b(Bundle bundle, t tVar) {
        this.a = a();
        this.j = (UserImageView) findViewById(2131951938);
        this.k = (EditText) findViewById(2131952417);
        this.h = ab().f();
        this.i = (HeaderImageView) findViewById(2131952414);
        this.q = new l(getApplicationContext());
        this.b = new ao(this, this.h, true);
        if (this.i != null) {
            this.i.a(this, (Set) a_("bitmaps"), as.a(this.h, (Context) this));
            this.i.setProfileUser(this.b);
        }
        this.g = com.twitter.android.util.j.a((Context) this);
        Resources resources = getResources();
        String string = resources.getString(2131362626);
        if (this.g) {
            this.n.add(string);
        }
        this.n.add(resources.getString(2131362616));
        if (bundle != null) {
            this.d = (EditableImage) bundle.getParcelable("pending_avatar_media");
            this.f = bundle.getBoolean("initial_header");
            if (!(this.d == null || this.j == null)) {
                this.j.a(this.d.e().toString());
            }
            this.c = (EditableImage) bundle.getParcelable("pending_header_media");
            this.p = bundle.getBoolean("has_updated_header");
            this.e = bundle.getBoolean("remove_header");
            this.o = bundle.getBoolean("remove_header_enabled");
            if (this.e && this.i != null) {
                this.i.a(null);
            }
            x();
            t();
            return;
        }
        boolean z;
        a(this.h.c, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression"));
        long j = this.h.c;
        String[] strArr = new String[1];
        strArr[0] = TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "camera", this.g ? "available" : "unavailable");
        a(j, strArr);
        if (this.b.f() != null) {
            z = true;
        } else {
            z = false;
        }
        this.f = z;
        this.q.a(this, this.h, this);
    }

    protected void a(long j, String... strArr) {
        as.a(j, this.b, strArr);
    }

    public void a(MediaFile mediaFile) {
        this.c = mediaFile != null ? (EditableImage) EditableMedia.a(mediaFile, MediaSource.b) : null;
        t();
    }

    void b() {
        this.o = this.c != null;
        if (this.i != null) {
            this.i.a(this.c != null ? x.a((Context) this, this.c) : null);
        }
    }

    void c() {
        if (this.i != null) {
            if (this.c != null) {
                b();
            } else {
                this.i.a(i.a(this.b));
            }
        }
        boolean z = (this.b.f() == null && this.c == null) ? false : true;
        this.o = z;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("pending_avatar_media", this.d);
        bundle.putParcelable("pending_header_media", this.c);
        bundle.putBoolean("initial_header", this.f);
        bundle.putBoolean("remove_header", this.e);
        bundle.putBoolean("remove_header_enabled", this.o);
        bundle.putBoolean("has_updated_header", this.p);
    }

    public void onClickHandler(View view) {
        if (l_()) {
            int id = view.getId();
            if (id == 2131952414 || id == bcx.header_container) {
                a(ab().g(), TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "header_image", "click"));
                e();
            } else if (id == 2131951938 || id == 2131952423) {
                a(ab().g(), TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "avatar", "click"));
                w_();
            }
        }
    }

    protected void w_() {
        if (this.g) {
            ((ec) new ec(2).c(2131427341)).i().a((j) this).a(getSupportFragmentManager());
            return;
        }
        a(ab().g(), TwitterScribeLog.a(this.a, "change_avatar_dialog", "choose_photo", "click"));
        z.a(this, 5);
    }

    protected void e() {
        if (this.o || this.g) {
            x();
            ((ec) new ec(1).a((CharSequence[]) this.n.toArray(new CharSequence[this.n.size()]))).i().a((j) this).a(getSupportFragmentManager());
            return;
        }
        this.e = false;
        z.a(this, 2);
    }

    protected void f() {
        ((ec) ((ec) ((ec) ((ec) new ec(3).a(2131362606)).b(2131361844)).d(2131362419)).f(2131362041)).i().a(getSupportFragmentManager());
    }

    protected void p_() {
        super.p_();
        if (this.i != null) {
            a("bitmaps", (Object) this.i.getSavedBitmaps());
        }
    }

    protected void onDestroy() {
        if (!(isChangingConfigurations() || this.p)) {
            if (this.c != null) {
                this.c.j();
            }
            if (this.d != null) {
                this.d.j();
            }
        }
        super.onDestroy();
    }

    protected void onRestart() {
        super.onRestart();
        if (this.i != null) {
            this.i.aG_();
        }
    }

    protected void onStop() {
        if (this.i != null) {
            this.i.f();
        }
        super.onStop();
    }

    public void a(String str, Bitmap bitmap) {
        if (bitmap == null && this.i != null) {
            this.i.setDefaultDrawable(new ColorDrawable(as.a(this.h, (Context) this)));
        }
    }

    private void w() {
        b();
        this.p = true;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        com.twitter.util.concurrent.j b;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    c((MediaFile) intent.getParcelableExtra("media_file"));
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    b = MediaFile.b(this, intent.getData(), MediaType.IMAGE);
                    b.b(new f().a(com.twitter.util.concurrent.i.a).a(new ak(this)));
                    a(b);
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 != -1 || intent == null) {
                    this.c = null;
                    c();
                    return;
                }
                EditableImage a = EditImageActivity.a(intent);
                if (a != null) {
                    this.c = a;
                    w();
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (i2 == -1) {
                    d((MediaFile) intent.getParcelableExtra("media_file"));
                }
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (i2 == -1) {
                    b = MediaFile.b(this, intent.getData(), MediaType.IMAGE);
                    b.b(new f().a(com.twitter.util.concurrent.i.a).a(new al(this)));
                    a(b);
                }
            case ControlMessage.CONTROL_BAN /*8*/:
                if (lf.a().a((Context) this, m)) {
                    startActivityForResult(CameraActivity.a(this, 1, false, false), 1);
                }
            case mx.TwitterEditText_messageSize /*9*/:
                if (lf.a().a((Context) this, m)) {
                    startActivityForResult(CameraActivity.a(this, 1, false, true), 4);
                }
            default:
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Resources resources = getResources();
                CharSequence charSequence = (CharSequence) this.n.get(i2);
                if (aj.a(charSequence, resources.getString(2131362626))) {
                    a(ab().g(), TwitterScribeLog.a(this.a, "change_header_dialog", "take_photo", "click"));
                    this.e = false;
                    startActivityForResult(new b(getString(2131362754), this, m).f(a("change_header_dialog", "take_photo")).a(), 8);
                } else if (aj.a(charSequence, resources.getString(2131362616))) {
                    a(ab().g(), TwitterScribeLog.a(this.a, "change_header_dialog", "choose_photo", "click"));
                    this.e = false;
                    z.a(this, 2);
                } else if (aj.a(charSequence, resources.getString(2131362625))) {
                    this.c = null;
                    a(ab().g(), TwitterScribeLog.a(this.a, "change_header_dialog", "remove", "click"));
                    this.e = true;
                    this.o = false;
                    this.i.a(null);
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == 0) {
                    Intent a = new b(getString(2131363407), this, m).f(a("change_avatar_dialog", "take_photo")).a();
                    a(ab().g(), TwitterScribeLog.a(this.a, "change_avatar_dialog", "take_photo", "click"));
                    startActivityForResult(a, 9);
                } else if (i2 == 1) {
                    a(ab().g(), TwitterScribeLog.a(this.a, "change_avatar_dialog", "choose_photo", "click"));
                    z.a(this, 5);
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 == -1) {
                    if (this.c != null) {
                        this.c.j();
                    }
                    setResult(0);
                    a(ab().g(), TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "cancel"));
                    finish();
                }
            default:
        }
    }

    private String a(String str, String str2) {
        return String.format("%s:%s:%s:%s", new Object[]{e.b(this.a.a()), e.b(this.a.b()), str, str2});
    }

    void x_() {
        this.r = new ProgressDialog(this);
        this.r.setProgressStyle(0);
        this.r.setMessage(getString(2131363417));
        this.q.a(this, this.h, this.c, this);
        this.r.show();
    }

    public void b(MediaFile mediaFile) {
        if (!(this.r == null || !this.r.isShowing() || isDestroyed())) {
            this.r.dismiss();
        }
        e(mediaFile);
    }

    private void e(MediaFile mediaFile) {
        this.c = mediaFile != null ? (EditableImage) EditableMedia.a(mediaFile, MediaSource.b) : null;
        Session b = aa().b(this.h.bf_());
        String m = m();
        if (this.c != null) {
            this.q.a(this.h.k);
            getIntent().putExtra("update_header", true);
        }
        if (s()) {
            String i = i();
            String j = j();
            String y_ = y_();
            com.twitter.util.collection.x b2 = com.twitter.util.collection.x.b(l());
            ExtendedProfile a = (boo.c() || boo.e()) ? a(true) : null;
            bv.a((Context) this, b, new av(this.d != null ? (ImageFile) this.d.k : null, this.c != null ? (ImageFile) this.c.k : null, this.e, i, m, j, y_, b2, q(), r(), a));
        } else if (z_()) {
            bv.a((Context) this, b, new av(this.d != null ? (ImageFile) this.d.k : null, this.c != null ? (ImageFile) this.c.k : null, this.e));
        }
        a(this.h.bf_());
        if (this.e && this.f) {
            this.q.b(this.h.k);
            getIntent().putExtra("remove_header", true);
            this.e = false;
            this.f = false;
        }
        if (this.d != null) {
            af.a().a(this.h.c, this.d.k);
        }
        if (this.c != null) {
            com.twitter.library.media.manager.l.a(getApplicationContext()).c(i.a(this.b));
        }
        this.d = null;
        this.c = null;
        a(getIntent());
    }

    protected ExtendedProfile a(boolean z) {
        return null;
    }

    protected TwitterPlace l() {
        return null;
    }

    protected String m() {
        return this.k != null ? this.k.getText().toString() : null;
    }

    boolean z_() {
        return (this.e && this.f) || this.d != null || ((!this.f || this.p) && this.c != null);
    }

    public void onBackPressed() {
        if (p()) {
            f();
        } else {
            super.onBackPressed();
        }
    }

    protected void o() {
        if (p()) {
            f();
            return;
        }
        setResult(0);
        super.o();
    }

    protected boolean p() {
        return z_() || s();
    }

    protected boolean q() {
        CharSequence m = m();
        return (this.l == null && aj.b(m)) || !(this.l == null || this.l.equals(m));
    }

    protected void a(long j) {
        if (this.c != null) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "header_image", "change"));
        }
        if (q()) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "bio", "change"));
        }
        if (this.d != null) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "avatar", "change"));
        }
        if (this.e && this.f) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "header_image", "remove"));
        }
    }

    private void x() {
        String string = getResources().getString(2131362625);
        if (!this.o) {
            this.n.remove(string);
        } else if (!this.n.contains(string)) {
            this.n.add(string);
        }
    }

    void t() {
        if (!(this.e || (this.b.f() == null && this.c == null))) {
            c();
        }
        if (this.d == null) {
            this.j.a(this.h);
        }
    }

    void c(MediaFile mediaFile) {
        this.c = mediaFile != null ? (EditableImage) EditableMedia.a(mediaFile, MediaSource.b) : null;
        if (mediaFile != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.c);
            startActivityForResult(EditImageActivity.a(this, arrayList, "profile", 3.0f, 2, true), 3);
            return;
        }
        v();
    }

    void d(MediaFile mediaFile) {
        this.d = mediaFile != null ? (EditableImage) EditableMedia.a(mediaFile, MediaSource.b) : null;
        if (mediaFile != null) {
            this.j.a(mediaFile.a().toString());
        } else {
            u();
        }
    }

    void u() {
        Toast.makeText(this, 2131363383, 0).show();
    }

    void v() {
        Toast.makeText(this, 2131363388, 0).show();
    }
}
