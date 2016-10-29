package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.support.v4.media.TransportMediator;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Toast;
import com.twitter.android.client.bu;
import com.twitter.android.profiles.as;
import com.twitter.app.common.base.t;
import com.twitter.config.d;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.android.widget.ag;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.MediaFile;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.cr;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.profile.b;
import com.twitter.model.profile.f;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.x;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.boo;
import defpackage.rv;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class EditProfileActivity extends BaseEditProfileActivity implements OnClickListener, OnFocusChangeListener, OnGlobalLayoutListener, OnScrollChangedListener, Filterable, ig, ag {
    private ExtendedProfile A;
    private if B;
    private LocationState C;
    protected EditText m;
    protected EditText n;
    protected TwitterEditText o;
    protected CheckBox p;
    protected PopupEditText q;
    protected ImageView r;
    protected boolean s;
    private ScrollView t;
    private String u;
    private String v;
    private boolean w;
    private boolean x;
    private boolean y;
    private ExtendedProfile z;

    public EditProfileActivity() {
        this.s = true;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968792);
        tVar.a(true);
        tVar.b(12);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        boolean z;
        boolean z2 = true;
        int i = 8;
        this.t = (ScrollView) findViewById(2131951949);
        this.m = (EditText) findViewById(2131952416);
        this.n = (EditText) findViewById(2131952419);
        this.o = (TwitterEditText) findViewById(2131952421);
        this.q = (PopupEditText) findViewById(2131952418);
        this.x = boo.c();
        this.o.setVisibility(this.x ? 0 : 8);
        this.o.setOnClickListener(this);
        this.o.setKeyListener(null);
        this.p = (CheckBox) findViewById(2131952420);
        this.y = boo.e();
        RelativeLayout relativeLayout = (RelativeLayout) e.a(findViewById(2131951950));
        this.j = a(getResources());
        relativeLayout.addView(this.j);
        super.b(bundle, tVar);
        this.B = new ih(getApplicationContext(), "me", "profile");
        this.B.a((ig) this);
        if (d.a("profile_structured_location_enabled")) {
            this.q.setAdapter(this.B.a());
            this.q.setPopupEditTextListener(this);
            this.q.a(PopupEditText.a, this, (long) bu.h());
            this.q.setOnClickListener(this);
            ViewTreeObserver viewTreeObserver = this.q.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(this);
            viewTreeObserver.addOnScrollChangedListener(this);
            this.q.setOnFocusChangeListener(this);
        }
        this.q.addTextChangedListener(new en(this));
        TwitterUser twitterUser = (TwitterUser) e.a(ab().f());
        Intent intent = getIntent();
        this.w = intent.getBooleanExtra("failure", false);
        if (this.w) {
            String stringExtra;
            String stringExtra2;
            String stringExtra3;
            String stringExtra4;
            TwitterPlace twitterPlace;
            if (intent.getBooleanExtra("update_profile", false)) {
                stringExtra = intent.getStringExtra("name");
                stringExtra2 = intent.getStringExtra("description");
                stringExtra3 = intent.getStringExtra("url");
                stringExtra4 = intent.getStringExtra("location");
                twitterPlace = (TwitterPlace) ab.a(intent, "structured_location", TwitterPlace.a);
            } else {
                stringExtra = twitterUser.d;
                stringExtra2 = twitterUser.g;
                stringExtra3 = twitterUser.h;
                stringExtra4 = twitterUser.q;
                twitterPlace = (TwitterPlace) x.a(twitterUser.r);
            }
            a(stringExtra, stringExtra2, stringExtra3, stringExtra4, twitterPlace, null, null);
            MediaFile mediaFile = (MediaFile) intent.getParcelableExtra("header_media_file");
            if (mediaFile != null) {
                this.c = (EditableImage) EditableMedia.a(mediaFile, MediaSource.b);
                c();
            }
            mediaFile = (MediaFile) intent.getParcelableExtra("avatar_media_file");
            if (mediaFile != null) {
                this.d = (EditableImage) EditableMedia.a(mediaFile, MediaSource.b);
                this.j.a(this.d.toString());
            }
        } else {
            a(twitterUser.d, twitterUser.g, twitterUser.h, twitterUser.q, (TwitterPlace) x.a(twitterUser.r), twitterUser.D, twitterUser.E);
        }
        this.m.setSelection(this.m.length());
        this.m.addTextChangedListener(new eo(this));
        this.i.setDefaultDrawable(new ColorDrawable(as.a(this.h, (Context) this)));
        this.j.setOnClickListener(this);
        this.i.setOnClickListener(this);
        if (bundle != null) {
            this.s = bundle.getBoolean("show_camera");
            if (!this.s) {
                this.r.setVisibility(8);
            }
        }
        if (this.h.t != null) {
            this.z = this.h.t;
        }
        if (bundle != null) {
            this.A = (ExtendedProfile) ab.a(bundle, "updated_birthdate_extended_profile", ExtendedProfile.a);
        } else if (this.z != null) {
            this.A = (ExtendedProfile) new b(this.z).q();
        }
        com.twitter.model.profile.d a = boo.a(this.A);
        if (!this.y || a == null) {
            z = false;
        } else {
            z = true;
        }
        CheckBox checkBox = this.p;
        if (z) {
            i = 0;
        }
        checkBox.setVisibility(i);
        CheckBox checkBox2 = this.p;
        if (a == null || !a.e) {
            z2 = false;
        }
        checkBox2.setChecked(z2);
        a(this.A);
        if (bundle == null && intent.getBooleanExtra("edit_birthdate", false)) {
            F();
        }
    }

    void d(MediaFile mediaFile) {
        super.d(mediaFile);
        if (mediaFile != null && this.s) {
            this.s = false;
            this.r.setVisibility(8);
        }
    }

    public boolean a(w wVar) {
        wVar.a(2132017197);
        return true;
    }

    public int b(w wVar) {
        wVar.j().a(2131953439).c(aj.b(this.m.getText().toString().trim()));
        return 2;
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953439) {
            if (p()) {
                CharSequence obj = this.n.getText().toString();
                if (aj.b(obj)) {
                    int indexOf = obj.indexOf("://");
                    if (indexOf != -1) {
                        obj = obj.substring(0, indexOf).toLowerCase() + obj.substring(indexOf);
                    } else {
                        obj = "http://" + obj;
                    }
                    if (rv.h.matcher(obj).matches()) {
                        this.n.setText(obj);
                    } else {
                        Toast.makeText(this, 2131362838, 0).show();
                    }
                }
                if (this.B.a(this.q.length())) {
                    Toast.makeText(this, 2131362836, 0).show();
                } else {
                    x_();
                }
            } else {
                finish();
            }
        } else if (a == k.home) {
            if (p()) {
                f();
            } else {
                a(ab().g(), TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "cancel"));
                setResult(0);
                finish();
            }
        }
        return true;
    }

    protected TwitterScribeAssociation a() {
        return (TwitterScribeAssociation) new TwitterScribeAssociation().b("edit_profile");
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 100) {
            super.onActivityResult(i, i2, intent);
        } else if (i2 == 0 && getIntent().getBooleanExtra("edit_birthdate", false)) {
            finish();
        } else {
            getIntent().removeExtra("edit_birthdate");
            ExtendedProfile extendedProfile = null;
            if (i2 == -1) {
                extendedProfile = (ExtendedProfile) ab.a(intent, "birthdate_extended_profile", ExtendedProfile.a);
            } else if (i2 == 2) {
                extendedProfile = (ExtendedProfile) new b().a(0).b(0).c(0).q();
            }
            if (extendedProfile != null) {
                b bVar = new b(extendedProfile);
                if (this.A != null) {
                    bVar.a(this.A.i);
                }
                this.A = (ExtendedProfile) bVar.q();
                a(this.A);
            }
        }
    }

    protected void onPause() {
        if (isFinishing() && this.q.hasFocus()) {
            C();
        }
        super.onPause();
    }

    protected void a(Intent intent) {
        setResult(-1, intent);
        finish();
    }

    protected String i() {
        return this.m.getText().toString();
    }

    protected String j() {
        return this.n.getText().toString();
    }

    protected TwitterPlace l() {
        return this.B.c();
    }

    protected String y_() {
        return this.B.b(E());
    }

    private UserImageView a(Resources resources) {
        UserImageView userImageView = new UserImageView(this);
        userImageView.setId(2131951938);
        as.a(resources, userImageView);
        View imageView = new ImageView(this);
        Drawable gradientDrawable = new GradientDrawable();
        float[] cornerRadii = ((RichImageView) userImageView.getImageView()).getCornerRadii();
        float f = (cornerRadii == null || cornerRadii.length <= 0) ? 0.0f : cornerRadii[0];
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setColor(resources.getColor(2131886185));
        imageView.setLayoutParams(new LayoutParams(-1, -1));
        imageView.setBackground(gradientDrawable);
        userImageView.addView(imageView);
        this.r = new ImageView(this);
        this.r.setImageDrawable(resources.getDrawable(2130839718));
        ViewGroup.LayoutParams layoutParams = new LayoutParams(resources.getDimensionPixelOffset(2131690375), resources.getDimensionPixelOffset(2131690375));
        layoutParams.gravity = 17;
        this.r.setLayoutParams(layoutParams);
        userImageView.addView(this.r);
        return userImageView;
    }

    private void a(String str, String str2, String str3, String str4, TwitterPlace twitterPlace, bg bgVar, bg bgVar2) {
        this.v = str;
        this.m.setText(str);
        this.l = a(str2, bgVar);
        this.k.setText(this.l);
        if (!(bgVar2 == null || bgVar2.c.c())) {
            str3 = ((cr) bgVar2.c.a(0)).C;
        }
        this.n.setText(str3);
        this.u = str3;
        this.B.a(str4);
        if (this.C == null) {
            this.C = new LocationState(twitterPlace, twitterPlace);
        }
        this.B.a(this.C);
        this.q.setText(str4);
        setTitle(2131362606);
    }

    private void z() {
        if (!this.B.f()) {
            int[] iArr = new int[2];
            this.t.getLocationOnScreen(iArr);
            int i = iArr[1];
            this.q.getLocationOnScreen(iArr);
            this.t.scrollTo(0, (iArr[1] + this.t.getScrollY()) - i);
        }
    }

    private boolean A() {
        Rect rect = new Rect();
        this.q.getWindowVisibleDisplayFrame(rect);
        return ((double) rect.height()) > ((double) (((ToolBar) e.a(X())).getHeight() + this.q.getHeight())) + (((double) getResources().getDimension(2131690084)) * 1.5d);
    }

    private void B() {
        if (!this.q.d()) {
            return;
        }
        if (A()) {
            z();
        } else {
            this.q.b();
        }
    }

    private void C() {
        this.B.a(E(), this.h.bf_(), this.b.e());
    }

    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("location_state", this.C);
        bundle.putBoolean("show_camera", this.s);
        ab.a(bundle, "updated_birthdate_extended_profile", this.A, ExtendedProfile.a);
        super.onSaveInstanceState(bundle);
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.C = (LocationState) bundle.getParcelable("location_state");
        this.s = bundle.getBoolean("show_camera");
    }

    protected boolean s() {
        return q() || r() || this.w || a(this.m, this.v) || a(this.q, this.B.b()) || this.B.e() || ((this.x && !ObjectUtils.a(this.z, this.A)) || (this.y && boo.a(this.z, this.p.isChecked())));
    }

    public void onFocusChange(View view, boolean z) {
        if (view == this.q) {
            String E = E();
            if (z) {
                this.B.c(E);
                a(this.h.bf_(), "me:profile:structured_location:location_picker:open");
            } else if (this.B.c() == null) {
                C();
            }
        }
    }

    public void a(int i) {
        this.B.a(i, E(), this.h.bf_(), this.b.e());
        TwitterPlace c = this.B.c();
        this.q.setText(c != null ? c.d : BuildConfig.VERSION_NAME);
        View focusSearch = this.q.focusSearch(TransportMediator.KEYCODE_MEDIA_RECORD);
        if (focusSearch != null) {
            focusSearch.requestFocus();
        }
    }

    public void w() {
        B();
    }

    public void a(CharSequence charSequence) {
        if (this.q.hasFocus()) {
            this.B.c(E());
        }
    }

    public void a(int i, int i2) {
    }

    public void onClick(View view) {
        if (view == this.q) {
            this.B.c(E());
        } else if (view == this.o) {
            F();
        } else {
            super.onClickHandler(view);
        }
    }

    private String E() {
        return this.q.getText().toString();
    }

    public void onGlobalLayout() {
        B();
    }

    public void onScrollChanged() {
        B();
    }

    public static String a(String str, bg bgVar) {
        if (aj.a((CharSequence) str)) {
            return null;
        }
        if (bgVar == null || CollectionUtils.a(bgVar.c)) {
            return str;
        }
        Iterator it = bgVar.c.iterator();
        int i = 0;
        while (it.hasNext()) {
            cr crVar = (cr) it.next();
            str = str.replaceFirst(str.substring(crVar.g + i, crVar.h + i), crVar.D);
            i = (crVar.D.length() - (crVar.h - crVar.g)) + i;
        }
        return str;
    }

    public Filter getFilter() {
        return new ep(this);
    }

    private static boolean a(EditText editText, String str) {
        CharSequence obj = editText != null ? editText.getText().toString() : null;
        return (str == null && aj.b(obj)) || !(str == null || str.equals(obj));
    }

    protected void a(long j) {
        super.a(j);
        if (a(this.m, this.v)) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "name", "change"));
        }
        if (a(this.q, this.B.b())) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "location", "change"));
        }
        if (r()) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "url", "change"));
        }
        a(j, this.z, a(false));
    }

    private void a(long j, ExtendedProfile extendedProfile, ExtendedProfile extendedProfile2) {
        int i = (extendedProfile == null || !extendedProfile.a()) ? 0 : 1;
        int i2;
        if (extendedProfile2 == null || !extendedProfile2.a()) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        if (i == 0 && r0 != 0) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthday", "add"));
        } else if (i != 0 && r0 == 0) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthday", "delete"));
        } else if (!(i == 0 || extendedProfile.a(extendedProfile2))) {
            a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthday", "change"));
            if (extendedProfile2.f != extendedProfile.f) {
                a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthdate_visibility", "change"));
            }
            if (extendedProfile2.g != extendedProfile.g) {
                a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthdate_year_visibility", "change"));
            }
            if (extendedProfile2.e != extendedProfile.e) {
                a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthday_year", "change"));
            }
            if (extendedProfile2.d != extendedProfile.d) {
                a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthday_month", "change"));
            }
            if (extendedProfile2.c != extendedProfile.c) {
                a(j, TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthday_day", "change"));
            }
        }
        com.twitter.model.profile.d a = boo.a(extendedProfile2);
        if (a != null && boo.a(extendedProfile, a.e)) {
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(j);
            String[] strArr = new String[1];
            strArr[0] = TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "vine", a.e ? "add" : "remove");
            bbu.a(twitterScribeLog.b(strArr));
        }
    }

    protected boolean r() {
        return a(this.n, this.u);
    }

    private void F() {
        Intent intent = new Intent(this, EditBirthdateActivity.class);
        intent.putExtra("created_at", this.h.Q);
        ab.a(intent, "birthdate_extended_profile", this.A == null ? this.z : this.A, ExtendedProfile.a);
        intent.putExtra("is_user_verified", this.h.n);
        startActivityForResult(intent, 100);
        a(this.h.bf_(), TwitterScribeLog.a(this.a, BuildConfig.VERSION_NAME, "birthday", "click"));
    }

    protected ExtendedProfile a(boolean z) {
        Object G = G();
        return (z && ObjectUtils.a(G, this.z)) ? null : G;
    }

    private ExtendedProfile G() {
        if (!this.y) {
            return this.A;
        }
        com.twitter.model.profile.d a = boo.a(this.A);
        if (a == null) {
            return this.A;
        }
        boolean isChecked = this.p.isChecked();
        if (boo.a(this.z, isChecked)) {
            return (ExtendedProfile) new b(this.A).a((com.twitter.model.profile.d) new f(a).a(isChecked).q()).q();
        }
        return this.A;
    }

    private void a(ExtendedProfile extendedProfile) {
        if (extendedProfile == null || !extendedProfile.a()) {
            this.o.setText(BuildConfig.VERSION_NAME);
            this.o.setHelperMessage(BuildConfig.VERSION_NAME);
            return;
        }
        Calendar instance = Calendar.getInstance();
        instance.set(extendedProfile.e, extendedProfile.d - 1, extendedProfile.c);
        this.o.setText(SimpleDateFormat.getDateInstance(1).format(instance.getTime()));
        this.o.setHelperMessage(getResources().getString(2131362611) + " " + boo.a(extendedProfile.f, (Context) this) + "\n" + getResources().getString(2131362614) + " " + boo.a(extendedProfile.g, (Context) this));
    }

    public void x() {
        if (!this.q.c()) {
            this.q.a();
        }
    }

    public void y() {
        B();
    }

    protected void onDestroy() {
        if (this.B != null) {
            this.B.a(null);
            this.B = null;
        }
        super.onDestroy();
    }
}
