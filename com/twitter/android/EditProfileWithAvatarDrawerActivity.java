package com.twitter.android;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.avatars.AvatarGridFragment;
import com.twitter.android.avatars.b;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.profiles.HeaderImageView;
import com.twitter.android.widget.DraggableDrawerLayout;
import com.twitter.android.widget.ak;
import com.twitter.android.widget.bc;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.library.api.g;
import com.twitter.library.api.q;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.util.a;
import com.twitter.library.media.util.af;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.z;
import com.twitter.media.model.MediaType;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ReferenceMap;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bca;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class EditProfileWithAvatarDrawerActivity extends EditProfileActivity implements AttachMediaListener, ak, bc, a {
    private static volatile int t;
    private ProgressDialog A;
    private z B;
    private boolean C;
    private LinearLayout D;
    private boolean E;
    private TextView K;
    private final ReferenceMap<String, ey> u;
    private List<q> v;
    private String w;
    private AvatarGridFragment x;
    private DraggableDrawerLayout y;
    private MediaAttachmentController z;

    public EditProfileWithAvatarDrawerActivity() {
        this.u = ReferenceMap.a();
        this.C = false;
    }

    static /* synthetic */ int B() {
        int i = t;
        t = i + 1;
        return i;
    }

    static {
        t = 0;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968796);
        tVar.a(true);
        tVar.b(12);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.E = getIntent().getBooleanExtra("extra_show_avatar_picker", false);
        this.A = new ProgressDialog(this);
        this.A.setProgressStyle(0);
        this.A.setMessage(getString(2131363417));
        this.y = (DraggableDrawerLayout) findViewById(2131952424);
        this.y.setDrawerLayoutListener(this);
        this.y.a(false);
        this.K = (TextView) findViewById(2131952427);
        t = 0;
        a(getResources(), bundle);
    }

    private void a(Resources resources, Bundle bundle) {
        if (b.b()) {
            this.v = new ArrayList();
            this.D = (LinearLayout) findViewById(2131952426);
            this.D.setClickable(true);
            this.D.setOnClickListener(new eu(this));
            this.y.setDrawerDraggable(true);
            if (bundle != null) {
                this.w = bundle.getString("selected_id");
                this.d = (EditableImage) bundle.getParcelable("selected_uri");
                this.x = (AvatarGridFragment) getSupportFragmentManager().findFragmentByTag("gallery");
                if (bundle.getBoolean(NotificationCompatApi21.CATEGORY_PROGRESS, false)) {
                    this.A.show();
                }
                this.C = bundle.getBoolean("drawer_visible");
            } else {
                this.x = AvatarGridFragment.a(2131558815, resources.getDimensionPixelSize(2131689818), 0);
                getSupportFragmentManager().beginTransaction().add(2131952241, this.x, "gallery").commit();
            }
            this.x.a((bc) this);
            this.z = MediaAttachmentController.a(this, this, "edit_avatar", MediaType.g, 1, ab());
            TypefacesTextView typefacesTextView = (TypefacesTextView) findViewById(2131951937);
            typefacesTextView.setOnClickListener(this);
            typefacesTextView.setText(2131362565);
            this.B = new fa(this);
            this.J.a(this.B);
            this.J.a(new g(this, ab()));
            a(ab().g(), TwitterScribeLog.a(a(), BuildConfig.VERSION_NAME, "twitter_photos", "impression"));
        }
    }

    protected void onDestroy() {
        this.J.b(this.B);
        super.onDestroy();
    }

    private void E() {
        ag();
        this.x.b(af());
        if (this.d != null) {
            this.x.b(this.d);
        } else if (this.w != null) {
            b(this.w);
        } else {
            b("current_avatar");
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("drawer_visible", this.C);
        bundle.putBoolean(NotificationCompatApi21.CATEGORY_PROGRESS, this.A.isShowing());
        bundle.putBoolean("state_show_avatar_picker", this.E);
        if (this.A.isShowing()) {
            this.A.dismiss();
        }
        if (this.w != null) {
            bundle.putString("selected_id", this.w);
        } else if (this.d != null) {
            bundle.putParcelable("selected_uri", this.d);
        }
        super.onSaveInstanceState(bundle);
    }

    public void onClick(View view) {
        if (view.getId() == 2131951937) {
            G();
        } else if (view != this.j) {
            super.onClick(view);
        } else if (b.b()) {
            ah();
        } else {
            w_();
        }
    }

    private boolean F() {
        return (this.w == null || "current_avatar".equals(this.w)) ? false : true;
    }

    private void G() {
        if (F()) {
            new fb(this, O()).execute(new com.twitter.media.request.a[]{((ey) this.u.a(this.w)).a.a()});
        } else if (this.d != null) {
            ad();
        } else {
            ah();
        }
    }

    private void ad() {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(ab().g()).a(this.a);
        if (F()) {
            bbw.b("edit_avatar:::avatar:next");
            bbw.f(this.w);
        } else {
            bbw.b("edit_avatar:::camera:next");
        }
        this.s = false;
        this.r.setVisibility(8);
        bbu.a(bbw);
        x_();
    }

    public void b(boolean z) {
        this.y.setLocked(!z);
    }

    public void a(EditableMedia editableMedia) {
        ae();
        this.d = (EditableImage) editableMedia;
        this.x.b(editableMedia);
        if (this.j != null) {
            this.j.a(editableMedia.e().toString());
        }
    }

    public void a(EditableMedia editableMedia, View view) {
    }

    public void z() {
    }

    public void b(int i) {
        c(i);
    }

    void c(int i) {
        this.z.a(false, 1);
    }

    public boolean a(MediaAttachment mediaAttachment) {
        this.A.show();
        return true;
    }

    public void a(List<MediaAttachment> list) {
        if (!list.isEmpty()) {
            MediaAttachment mediaAttachment = (MediaAttachment) e.a(CollectionUtils.c((List) list));
            if (mediaAttachment.a == 1) {
                a(ab().g(), TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "avatar", "error"));
                if (this.A.isShowing()) {
                    this.A.dismiss();
                }
                Toast.makeText(this, getString(2131362923), 1).show();
            } else if (mediaAttachment.a == 0) {
                ae();
                if (this.A.isShowing()) {
                    this.A.dismiss();
                }
                EditableImage editableImage = (EditableImage) e.a(mediaAttachment.a(3));
                this.d = editableImage;
                if (this.j != null) {
                    this.j.a(editableImage.e().toString());
                }
            }
        }
    }

    public void d(int i) {
    }

    public void a(float f) {
        this.x.a(f);
    }

    public void A() {
    }

    protected void a(Intent intent) {
        setResult(-1, intent);
        if (this.C) {
            ah();
        } else {
            finish();
        }
    }

    private void ae() {
        if (this.d != null) {
            this.x.a(this.d.e());
            this.d = null;
        }
        if (this.w != null) {
            ey eyVar = (ey) this.u.a(this.w);
            if (eyVar != null) {
                eyVar.b();
            }
            this.w = null;
        }
    }

    private void b(String str) {
        ey eyVar = (ey) this.u.a((Object) str);
        if (eyVar != null) {
            a(eyVar);
        }
    }

    private void a(ey eyVar) {
        this.w = eyVar.d;
        eyVar.a();
        if (this.j != null) {
            this.j.a(eyVar.a.a().a());
        }
    }

    private View[] af() {
        if (this.h == null) {
            return null;
        }
        int i;
        LayoutInflater layoutInflater = getLayoutInflater();
        int size = this.v.size() + 2;
        boolean g = this.h.g();
        if (!g) {
            size++;
        }
        View[] viewArr = new View[size];
        View inflate = layoutInflater.inflate(2130968841, null);
        inflate.findViewById(k.image).setOnClickListener(new ev(this));
        viewArr[0] = inflate;
        View inflate2 = layoutInflater.inflate(2130968840, null);
        inflate2.findViewById(k.image).setOnClickListener(new ew(this));
        viewArr[1] = inflate2;
        OnClickListener exVar = new ex(this);
        Resources resources = getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (g) {
            i = 2;
        } else {
            float f = ((float) displayMetrics.widthPixels) / displayMetrics.density;
            int integer = resources.getInteger(2131755013);
            float dimension = (f - (((float) (integer + 1)) * resources.getDimension(2131689820))) / ((float) integer);
            i = 3;
            viewArr[2] = ey.a(layoutInflater, exVar, this.u, UserImageRequest.a(af.a(this.h.c, this.h.e)).a(Size.a(dimension, dimension)).a("user"), "current_avatar", resources, this.K, this.v);
        }
        if (!this.v.isEmpty()) {
            Object obj = 1;
            int i2 = i;
            for (q qVar : this.v) {
                inflate = ey.a(layoutInflater, exVar, this.u, com.twitter.media.request.a.a(qVar.a(displayMetrics.densityDpi).toString()), qVar.a(), resources, this.K, this.v);
                integer = i2 + 1;
                viewArr[i2] = inflate;
                if ((this.w == null && r9 != null && g) || qVar.a().equals(this.w)) {
                    a((ey) inflate.getTag());
                }
                obj = null;
                i2 = integer;
            }
        }
        return viewArr;
    }

    private void ag() {
        this.y.setVisibility(0);
    }

    private void ah() {
        boolean z;
        boolean z2 = true;
        this.C = !this.C;
        if (this.C) {
            this.y.a(true, false);
            this.D.setVisibility(0);
            this.r.setVisibility(8);
        } else {
            this.y.a(true);
            this.D.setVisibility(8);
            if (this.s) {
                this.r.setVisibility(0);
            } else {
                this.r.setVisibility(8);
            }
        }
        bca a = X().a(2131953439);
        if (a != null) {
            if (this.C) {
                z = false;
            } else {
                z = true;
            }
            a.b(z);
        }
        HeaderImageView headerImageView = this.i;
        if (this.C) {
            z = false;
        } else {
            z = true;
        }
        headerImageView.setClickable(z);
        UserImageView userImageView = this.j;
        if (this.C) {
            z = false;
        } else {
            z = true;
        }
        userImageView.setClickable(z);
        if (!this.C) {
            this.j.a(this.h);
        }
        EditText editText = this.m;
        if (this.C) {
            z = false;
        } else {
            z = true;
        }
        editText.setEnabled(z);
        editText = this.n;
        if (this.C) {
            z = false;
        } else {
            z = true;
        }
        editText.setEnabled(z);
        PopupEditText popupEditText = this.q;
        if (this.C) {
            z = false;
        } else {
            z = true;
        }
        popupEditText.setEnabled(z);
        EditText editText2 = this.k;
        if (this.C) {
            z2 = false;
        }
        editText2.setEnabled(z2);
    }

    public void onResume() {
        super.onResume();
        if (b.b()) {
            bca a = X().a(2131953439);
            if (a != null) {
                a.b(!this.C);
            }
        }
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        this.C = bundle.getBoolean("drawer_visible");
        this.E = bundle.getBoolean("state_show_avatar_picker");
    }

    public void a(Intent intent, int i, Bundle bundle) {
        ActivityCompat.startActivityForResult(this, intent, i, bundle);
    }
}
