package com.twitter.android.media.imageeditor;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.TransitionDrawable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.stickers.data.a;
import com.twitter.android.media.stickers.i;
import com.twitter.android.media.widget.FilterFilmstripView;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.android.util.t;
import com.twitter.android.widget.GalleryGridFragment;
import com.twitter.android.widget.RevealClipFrameLayout;
import com.twitter.app.common.base.g;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.x;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.filters.Filters;
import com.twitter.media.model.ImageFile;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.ui.view.LockableViewPager;
import com.twitter.ui.widget.Tooltip;
import com.twitter.util.concurrent.j;
import com.twitter.util.m;
import com.twitter.util.object.e;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.buv;
import defpackage.byc;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class EditImageFragment extends AbsFragment implements OnClickListener {
    public static final ac a;
    private static final int[] q;
    private static final int[] r;
    private TextView A;
    private TextView B;
    private View C;
    private int D;
    private int E;
    private int F;
    private int G;
    private EditableImage H;
    private EditableImage I;
    private boolean J;
    int b;
    int c;
    int d;
    float e;
    boolean f;
    aa g;
    o h;
    FilterFilmstripView i;
    ImageButton j;
    View k;
    MediaImageView l;
    a m;
    View n;
    View o;
    ComposerType p;
    private final Map<EditableImage, ab> s;
    private Filters t;
    private String u;
    private ImageButton v;
    private y w;
    private boolean x;
    private ae y;
    private z z;

    public EditImageFragment() {
        this.b = 1;
        this.s = new WeakHashMap();
    }

    static {
        a = new ac();
        q = new int[]{2131952400, 2131952399, 2131952401, 2131952402, 2131952407, 2131952404, 2131952405, 2131952406};
        r = new int[]{2131952407, 2131952404, 2131952405, 2131952406};
    }

    public static EditImageFragment a(y yVar, z zVar, View view, RevealClipFrameLayout revealClipFrameLayout, EditableImage editableImage, String str) {
        return a(yVar, zVar, view, revealClipFrameLayout, editableImage, 1, str);
    }

    public static EditImageFragment a(y yVar, z zVar, View view, RevealClipFrameLayout revealClipFrameLayout, EditableImage editableImage, int i, String str) {
        int initialPosition = yVar.getInitialPosition();
        if (initialPosition == -1) {
            Toast.makeText(view.getContext().getApplicationContext(), 2131362811, 0).show();
            return null;
        }
        revealClipFrameLayout.setVisibility(0);
        revealClipFrameLayout.setAlpha(0.0f);
        n nVar = new n();
        if (str != null) {
            nVar.a(str);
        }
        if (buv.a(false) && i == 1 && t.a(view.getContext().getApplicationContext(), "sticker_selector_tooltip", (String) e.a(bg.a().c().e())).a()) {
            i = 0;
        }
        EditImageFragment a = nVar.a(initialPosition).b(i).a();
        a.a(zVar);
        a.a(yVar);
        a.b(editableImage);
        j a2 = yVar.a(initialPosition);
        a.a(new b(a2, a, view, revealClipFrameLayout));
        a.a(a2);
        return a;
    }

    static void a(View view, EditableImage editableImage, RevealClipFrameLayout revealClipFrameLayout, EditImageFragment editImageFragment) {
        float measuredWidth;
        int[] iArr = new int[]{0, 0};
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[]{0, 0};
        revealClipFrameLayout.getLocationInWindow(iArr2);
        iArr[0] = iArr[0] - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        Rect rect = new Rect(0, 0, revealClipFrameLayout.getMeasuredWidth(), revealClipFrameLayout.getMeasuredHeight());
        Rect rect2 = new Rect(0, 0, ((ImageFile) editableImage.k).e.a(), ((ImageFile) editableImage.k).e.b());
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(rect2), new RectF(rect), ScaleToFit.CENTER);
        RectF rectF = new RectF(rect2);
        matrix.mapRect(rectF);
        revealClipFrameLayout.setPivotX(0.0f);
        revealClipFrameLayout.setPivotY(0.0f);
        int round = Math.round(((float) rect.width()) - rectF.width());
        int round2 = Math.round(((float) rect.height()) - rectF.height());
        if (editableImage.bm_() > 1.0f) {
            measuredWidth = ((float) view.getMeasuredWidth()) / ((float) (revealClipFrameLayout.getMeasuredWidth() - round));
        } else {
            measuredWidth = ((float) view.getMeasuredHeight()) / ((float) (revealClipFrameLayout.getMeasuredHeight() - round2));
        }
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("clipX", new int[]{round, 0});
        PropertyValuesHolder ofInt2 = PropertyValuesHolder.ofInt("clipY", new int[]{round2, 0});
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(revealClipFrameLayout, new PropertyValuesHolder[]{ofInt, ofInt2});
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(revealClipFrameLayout, View.SCALE_X, new float[]{measuredWidth, 1.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(revealClipFrameLayout, View.SCALE_Y, new float[]{measuredWidth, 1.0f});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(revealClipFrameLayout, View.TRANSLATION_X, new float[]{((float) iArr[0]) - (((float) (round / 2)) * measuredWidth), 0.0f});
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(revealClipFrameLayout, View.TRANSLATION_Y, new float[]{((float) iArr[1]) - (measuredWidth * ((float) (round2 / 2))), 0.0f});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4, ofPropertyValuesHolder});
        animatorSet.setDuration(250);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        ofFloat4 = ObjectAnimator.ofFloat(revealClipFrameLayout, View.ALPHA, new float[]{0.0f, 1.0f});
        ofFloat4.setDuration(200);
        animatorSet.addListener(new d(editImageFragment));
        ofFloat4.start();
        animatorSet.start();
    }

    public void a(y yVar) {
        this.w = yVar;
        if (this.h != null) {
            this.h.a(yVar);
        }
    }

    public y b() {
        return this.w;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g o = o();
        this.u = o.f("scribe_section");
        this.J = o.a("lock_to_initial", false);
        this.d = o.b("initial_position");
        this.p = (ComposerType) o.h("composer_type");
        this.e = o.d("force_crop_ratio");
        if (bundle == null) {
            this.c = o.b("initial_type");
        } else {
            this.c = bundle.getInt("editor_type");
        }
        a aVar = (a) a_("sticker_catalog_repo");
        if (aVar == null) {
            aVar = new a(getContext(), aT().g(), new byc(1));
        }
        this.m = aVar;
        a("sticker_catalog_repo", (Object) this.m);
        this.h = new o(this, getActivity());
        if (bundle != null) {
            this.h.b(bundle);
        }
        this.h.a(this.w);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return layoutInflater.inflate(2130968790, null);
    }

    public void onViewCreated(View view, Bundle bundle) {
        boolean z;
        super.onViewCreated(view, bundle);
        this.G = 2130839276;
        this.F = 2130839277;
        this.E = 2130839266;
        this.D = 2130839267;
        this.j = (ImageButton) view.findViewById(2131952400);
        this.v = (ImageButton) view.findViewById(2131952399);
        this.l = (MediaImageView) view.findViewById(2131952396);
        if (this.I != null) {
            this.l.setOnImageLoadedListener(new e(this));
            this.l.a(x.a(getContext(), this.I));
        } else if (this.g != null) {
            this.g.a();
        }
        LockableViewPager lockableViewPager = (LockableViewPager) view.findViewById(2131952395);
        lockableViewPager.setPagingEnabled(false);
        this.i = (FilterFilmstripView) view.findViewById(2131952397);
        this.A = (TextView) view.findViewById(2131951939);
        this.k = view.findViewById(2131952403);
        this.n = view.findViewById(2131952398);
        ((TransitionDrawable) this.n.getBackground()).startTransition(0);
        this.o = view.findViewById(2131952408);
        for (int findViewById : q) {
            view.findViewById(findViewById).setOnClickListener(this);
        }
        this.B = (TextView) view.findViewById(2131951937);
        this.B.setOnClickListener(this);
        this.C = view.findViewById(2131952409);
        this.C.setOnClickListener(this);
        f(false);
        view.findViewById(2131952410).setVisibility(0);
        this.A.setText(BuildConfig.VERSION_NAME);
        lockableViewPager.setAdapter(this.h);
        lockableViewPager.setOnPageChangeListener(this.h);
        lockableViewPager.setCurrentItem(this.d, false);
        lockableViewPager.setOffscreenPageLimit(3);
        if (this.p == ComposerType.DIRECT_MESSAGE) {
            z = true;
        } else {
            z = false;
        }
        if (!buv.a(z)) {
            view.findViewById(2131952402).setVisibility(8);
        }
    }

    public void a(EditableImage editableImage) {
        this.v.setImageResource(editableImage.b ? this.F : this.G);
        k();
        n();
        if (this.z != null) {
            this.z.a(this.H, (EditableMedia) editableImage);
        }
        this.H = editableImage;
        if (!this.s.containsKey(editableImage)) {
            this.s.put(editableImage, new ab(this, editableImage));
        }
    }

    public void onActivityCreated(Bundle bundle) {
        boolean z = true;
        super.onActivityCreated(bundle);
        this.y = new af(this);
        this.y.execute(new Void[0]);
        boolean z2 = bundle != null && bundle.getBoolean("is_cropping");
        if (z2) {
            d(false);
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
        if (defaultSharedPreferences.getInt("filters_tooltip_times_shown", 0) >= 3 || defaultSharedPreferences.getLong("filters_tooltip_last_time_shown", 0) + 86400000 >= m.b()) {
            z = false;
        }
        this.x = z;
    }

    public void a(z zVar) {
        this.z = zVar;
    }

    public void a(aa aaVar) {
        this.g = aaVar;
    }

    public void e() {
        ag d = this.h.d();
        if (d != null) {
            d.q();
            a(d);
        }
        super.e();
    }

    public void a() {
        super.a();
        ag d = this.h.d();
        if (d != null) {
            d.r();
        }
    }

    public void onDestroy() {
        this.f = true;
        if (this.y != null) {
            this.y.cancel(false);
        }
        if (this.t != null) {
            this.t.b();
        }
        this.h.b();
        a.a();
        super.onDestroy();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.h.a(bundle);
        ag d = this.h.d();
        if (d != null) {
            int i;
            if (d.n()) {
                i = 2;
            } else if (d.f()) {
                i = 3;
            } else if (this.i.b()) {
                i = 1;
            } else {
                i = 0;
            }
            bundle.putInt("editor_type", i);
        }
    }

    public void onClick(View view) {
        boolean z = false;
        if (!this.h.c()) {
            ag d = this.h.d();
            if (d != null) {
                switch (view.getId()) {
                    case 2131951937:
                        if (d.f()) {
                            e(true);
                        } else if (d.m()) {
                            a(d);
                            c(d.a());
                        } else if (d.n()) {
                            b(true, false);
                            if (this.J) {
                                a(d);
                                c(d.a());
                            }
                            this.C.setVisibility(0);
                        }
                    case 2131952399:
                        l();
                    case 2131952400:
                        j();
                        if (!this.i.b()) {
                            z = true;
                        }
                        a(z, true);
                    case 2131952401:
                        d(false);
                    case 2131952402:
                        g();
                    case 2131952404:
                        d.k();
                        this.b = 1;
                    case 2131952405:
                        d.a(1.7777778f);
                        this.b = 3;
                    case 2131952406:
                        d.a(1.0f);
                        this.b = 4;
                    case 2131952407:
                        d.a(-90);
                    case 2131952409:
                        if (d.f()) {
                            e(true);
                        } else if (d.n()) {
                            b(true, true);
                            if (this.J) {
                                i();
                            }
                        } else {
                            i();
                        }
                    default:
                }
            }
        }
    }

    private void b(EditableImage editableImage) {
        this.I = editableImage;
    }

    void a(boolean z) {
        a(false, z);
        this.n.animate().translationY((float) this.n.getMeasuredHeight()).alpha(0.0f).setDuration(250).setListener(new f(this)).start();
    }

    void b(boolean z) {
        this.n.animate().cancel();
        this.n.setVisibility(0);
        if (z) {
            this.n.setAlpha(0.0f);
            ViewCompat.postOnAnimation(this.n, new g(this));
            return;
        }
        this.n.setTranslationY(0.0f);
        this.n.setAlpha(1.0f);
    }

    void c() {
        this.o.animate().translationY((float) (-this.o.getMeasuredHeight())).alpha(0.0f).setDuration(250).setListener(new i(this)).start();
    }

    void c(boolean z) {
        this.o.animate().cancel();
        this.o.setVisibility(0);
        if (z) {
            this.o.setAlpha(0.0f);
            ViewCompat.postOnAnimation(this.o, new j(this));
            return;
        }
        this.o.setTranslationY(0.0f);
        this.o.setAlpha(1.0f);
    }

    private void a(ag agVar) {
        agVar.a().h = agVar.h();
    }

    private void c(EditableImage editableImage) {
        if (this.z != null) {
            if (GalleryGridFragment.a(getActivity())) {
                this.z.a(editableImage, this.t != null ? this.t.b(editableImage.c) : null);
            } else {
                startActivityForResult(new b(getResources().getString(2131363328), getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE").f(String.format(":%s::", new Object[]{this.u})).a(), 1);
            }
        }
    }

    private void i() {
        for (Entry entry : this.s.entrySet()) {
            EditableImage editableImage = (EditableImage) entry.getKey();
            ab abVar = (ab) entry.getValue();
            editableImage.c = abVar.a;
            editableImage.f = abVar.b;
            editableImage.b = abVar.c;
            editableImage.e = abVar.d;
        }
        if (this.z != null) {
            this.z.m();
        }
    }

    private void j() {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(BuildConfig.VERSION_NAME, this.u, "editor", "filters", "click"));
    }

    public void a(boolean z, boolean z2) {
        if (getView() != null && this.i.a(z, z2)) {
            TransitionDrawable transitionDrawable = (TransitionDrawable) this.n.getBackground();
            if (z) {
                this.j.setImageResource(this.D);
                ag d = this.h.d();
                if (d != null) {
                    d.g();
                }
                transitionDrawable.startTransition(250);
            } else {
                this.j.setImageResource(this.E);
                transitionDrawable.reverseTransition(250);
            }
            k();
        }
    }

    public void f() {
        if (this.h != null) {
            ag d = this.h.d();
            if (d != null && d.n()) {
                b(true, true);
                return;
            } else if (d != null && d.f()) {
                e(true);
                return;
            } else if (this.z != null) {
                i();
            }
        }
        this.C.setVisibility(0);
    }

    void d(boolean z) {
        a(false, z);
        ag d = this.h.d();
        if (d != null) {
            a(d);
            d.j();
        }
        if (this.e == 0.0f) {
            this.k.setVisibility(0);
        }
        this.n.setVisibility(8);
        k();
    }

    void g() {
        ag d = this.h.d();
        if (d != null) {
            if (d.i() >= i.a()) {
                Toast.makeText(getContext(), getString(2131363327), 1).show();
                return;
            }
            this.o.setBackgroundColor(getResources().getColor(2131886115));
            d.d();
            a(false, false);
            this.n.setVisibility(8);
            k();
        }
    }

    void e(boolean z) {
        ag d = this.h.d();
        if (d != null) {
            this.o.setBackgroundDrawable(getResources().getDrawable(2130837610));
            d.e();
            b(false);
            this.n.setVisibility(0);
            if (z) {
                a(true, true);
            }
            k();
        }
    }

    private void b(boolean z, boolean z2) {
        ag d = this.h.d();
        if (d != null) {
            this.k.setVisibility(8);
            d.a(z2);
            if (!z2) {
                bbw bbw = (TwitterScribeLog) new TwitterScribeLog(aT().g()).b(BuildConfig.VERSION_NAME, this.u, "image_attachment", "crop", "success");
                switch (this.b) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        bbw.f("original_aspect");
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        bbw.f("free_aspect");
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        bbw.f("wide_aspect");
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        bbw.f("square_aspect");
                        break;
                }
                bbu.a(bbw);
            }
            this.n.setVisibility(0);
            k();
        }
    }

    private void k() {
        int i = 2131363522;
        ag d = this.h.d();
        if (d != null) {
            int i2;
            if (d.f()) {
                i2 = 2131363326;
                i = 2131362565;
            } else if (d.n()) {
                i2 = 2131363324;
                i = 2131361919;
            } else if (this.i.b()) {
                i2 = 2131363325;
            } else {
                i2 = 2131362605;
            }
            this.A.setText(i2);
            if (this.B != null) {
                this.B.setText(i);
            }
        }
    }

    private void l() {
        ag d = this.h.d();
        if (d != null) {
            this.v.setImageResource(d.u() ? this.F : this.G);
        }
    }

    void h() {
        bbn.a(new IllegalStateException("Filters failed to load"));
        Toast.makeText(getActivity(), 2131362812, 1).show();
    }

    void a(Filters filters) {
        this.y = null;
        if (this.f) {
            if (filters != null) {
                filters.b();
            }
        } else if (filters == null) {
            h();
        } else {
            this.t = filters;
            n();
        }
    }

    private void m() {
        this.i.postDelayed(new l(this, this.i.getActivePreview()), 250);
    }

    private void n() {
        ag d = this.h.d();
        if (d != null) {
            EditableImage a = d.a();
            if (buv.a(this.p == ComposerType.DIRECT_MESSAGE) && p()) {
                this.x = false;
                a(false, false);
            }
            this.i.setFilterListener(null);
            this.i.a(this.t, a.e().toString(), a.e);
            this.i.setSelectedFilter(a.c);
            this.i.setIntensity(a.d);
            this.i.setFilterListener(d);
            this.i.a(false);
            if (this.x && a.c != 0) {
                m();
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
                defaultSharedPreferences.edit().putInt("filters_tooltip_times_shown", defaultSharedPreferences.getInt("filters_tooltip_times_shown", 0) + 1).putLong("filters_tooltip_last_time_shown", m.b()).apply();
                this.x = false;
            }
        }
    }

    private boolean p() {
        if (this.c == 3) {
            return false;
        }
        Context context = getContext();
        t a = t.a(context, "sticker_selector_tooltip", (String) e.a(aT().e()));
        if (!a.a()) {
            return false;
        }
        Tooltip.a(context, 2131952402).a(2131363884).b(2131559133).d(2131952394).a(new m(this)).a(getFragmentManager(), "sticker_selector_tooltip");
        a.b();
        return true;
    }

    private boolean b(String str) {
        Context context = getContext();
        t a = t.a(context, "sticker_edit_tooltip", (String) e.a(aT().e()));
        if (!a.a()) {
            return false;
        }
        Tooltip.a(context, str).a(2131363880).b(2131559132).d(2131952394).a(getFragmentManager(), "sticker_edit_tooltip");
        a.b();
        return true;
    }

    void f(boolean z) {
        View view = getView();
        if (view != null) {
            for (int findViewById : r) {
                view.findViewById(findViewById).setEnabled(z);
            }
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1 && PermissionRequestActivity.a(intent)) {
            ag d = this.h.d();
            if (d != null) {
                c(d.a());
            }
        }
    }
}
