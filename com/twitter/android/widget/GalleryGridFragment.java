package com.twitter.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v7.recyclerview.BuildConfig;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.GridView;
import android.widget.Scroller;
import android.widget.TextView;
import com.twitter.android.lf;
import com.twitter.android.media.imageeditor.y;
import com.twitter.android.mx;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.media.manager.l;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ab;
import com.twitter.util.collection.m;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.serialization.s;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.but;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class GalleryGridFragment extends AbsFragment implements OnScrollListener, y, ax, ay, az {
    protected at a;
    protected boolean b;
    private final bd c;
    private int d;
    private int e;
    private int f;
    private View[] g;
    private GridView h;
    private View i;
    private TextView j;
    private bc k;
    private Map<Uri, EditableMedia> l;
    private boolean m;
    private boolean n;
    private int o;
    private boolean p;
    private EditableImage q;
    private Map<String, EditableMedia> r;
    private Cursor s;
    private boolean t;

    public GalleryGridFragment() {
        this.c = new bd(this);
        this.r = new HashMap();
    }

    public static GalleryGridFragment b(int i, int i2, boolean z, int i3, boolean z2) {
        GalleryGridFragment galleryGridFragment = new GalleryGridFragment();
        galleryGridFragment.a(new h().a("style_id", i).a("header", i3).a("scroll_header", i2).a("show_expand", z).a("new_media_flow", z2).c());
        return galleryGridFragment;
    }

    public static boolean a(Context context) {
        return lf.a().a(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    public void onCreate(Bundle bundle) {
        EditableImage editableImage;
        int i = -1;
        super.onCreate(bundle);
        g o = o();
        Theme theme = getActivity().getTheme();
        theme.applyStyle(o.b("style_id"), false);
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(2130772018, typedValue, true);
        this.d = getResources().getColor(typedValue.resourceId);
        this.b = o.a("new_media_flow", false);
        this.e = o.b("header");
        this.f = o.b("scroll_header");
        if (bundle != null) {
            i = bundle.getInt("first_visible_position", -1);
        }
        this.o = i;
        boolean z = bundle == null || bundle.getBoolean("disable_grid_reload", false);
        this.p = z;
        if (bundle != null) {
            editableImage = (EditableImage) bundle.getParcelable("expanded_image");
        } else {
            editableImage = null;
        }
        this.q = editableImage;
        boolean a = o.a("show_expand", false);
        a(a);
        if (bundle != null) {
            this.r = (Map) ab.a(bundle, "editable_images", s.a(s.i, EditableMedia.j));
        }
        this.a.a(this);
        if (this.b) {
            this.a.a(this);
        }
        if (this.l != null) {
            for (Entry value : this.l.entrySet()) {
                this.a.b((EditableMedia) value.getValue());
            }
            this.l = null;
        }
        if (a) {
            this.a.a(this);
        }
        if (this.m) {
            this.a.a(false);
            this.m = false;
        }
        if (this.n) {
            this.a.b(true);
            this.n = false;
        }
        if (a(getActivity())) {
            i();
        } else {
            this.t = false;
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130968836, null);
        View findViewById = inflate.findViewById(2131952499);
        if (this.e > 0) {
            LayoutParams layoutParams = findViewById.getLayoutParams();
            layoutParams.height = this.e;
            findViewById.setLayoutParams(layoutParams);
        } else {
            findViewById.setVisibility(8);
        }
        GridView gridView = (GridView) inflate.findViewById(2131952500);
        gridView.setAdapter(this.a);
        gridView.setOnScrollListener(this);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(2130772017, typedValue, true);
        gridView.setBackgroundResource(typedValue.resourceId);
        if (this.b) {
            int round = Math.round(getResources().getDimension(2131689821));
            gridView.setVerticalSpacing(round);
            gridView.setHorizontalSpacing(round);
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) gridView.getLayoutParams();
            marginLayoutParams.leftMargin = 0;
            marginLayoutParams.rightMargin = 0;
            inflate.findViewById(bcx.divider).setVisibility(8);
        }
        gridView.setRecyclerListener(this.a);
        gridView.setNumColumns(b(getActivity()));
        this.h = gridView;
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        a(this.f, b(getActivity()));
        c(this.g);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("first_visible_position", this.h.getFirstVisiblePosition());
        bundle.putBoolean("disable_grid_reload", getActivity().getChangingConfigurations() != 0);
        bundle.putParcelable("expanded_image", this.q);
        ab.a(bundle, "editable_images", this.r, s.a(s.i, EditableMedia.j));
        if (this.s != null) {
            bundle.putInt("images_count", this.s.getCount());
        }
    }

    void a(Loader<Cursor> loader, Cursor cursor) {
        switch (loader.getId()) {
            case mx.View_android_theme /*0*/:
                this.a.swapCursor(cursor);
                if (this.o > 0 && this.o < this.a.getCount()) {
                    int i = this.o;
                    this.o = 0;
                    this.h.post(new ba(this, i));
                }
                if (getActivity() != null && cursor != null) {
                    bbu.a(((TwitterScribeLog) new TwitterScribeLog(aT().g()).b("composition::photo_gallery::load_finished")).a((long) cursor.getCount()));
                }
            case WireMessage.WIRE_CHAT /*1*/:
                this.s = cursor;
            default:
        }
    }

    void b() {
        this.a.swapCursor(null);
        this.s = null;
    }

    public void a(DraggableDrawerLayout draggableDrawerLayout) {
        draggableDrawerLayout.setDrawerDraggable(true);
        draggableDrawerLayout.setDispatchDragToChildren(true);
        draggableDrawerLayout.setFullScreenHeaderView(a((ViewGroup) draggableDrawerLayout));
    }

    public View a(ViewGroup viewGroup) {
        if (this.i == null) {
            this.i = LayoutInflater.from(getActivity()).inflate(2130968838, viewGroup, false);
            TypefacesTextView typefacesTextView = (TypefacesTextView) this.i.findViewById(2131952263);
            typefacesTextView.setOnClickListener(new bb(this));
            typefacesTextView.setTextColor(this.d);
            this.j = (TextView) this.i.findViewById(2131952427);
            this.j.setTextColor(this.d);
            if (this.b) {
                this.j.setTypeface(Typeface.DEFAULT_BOLD);
            }
            g();
        }
        return this.i;
    }

    public void a(View view, EditableMedia editableMedia) {
        if (editableMedia != null) {
            this.k.a(editableMedia);
        }
    }

    public void b(View view, EditableMedia editableMedia) {
        if (editableMedia != null) {
            bbu.a(new TwitterScribeLog(aT().g()).b(BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "photo_gallery", "thumbnail", "long_press"));
            a(editableMedia);
        }
    }

    public void a(EditableMedia editableMedia) {
        if (this.k != null && this.q == null) {
            this.o = this.h.getFirstVisiblePosition();
            this.p = true;
            View a = this.a.a(editableMedia);
            if (editableMedia instanceof EditableImage) {
                this.q = (EditableImage) editableMedia;
            }
            if (a != null) {
                this.k.a(editableMedia, a);
            }
        }
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 2 || i == 0) {
            this.a.c(i == 2);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        boolean z = false;
        if (this.k != null) {
            View childAt = absListView.getChildAt(0);
            bc bcVar = this.k;
            if (childAt != null && i == 0 && childAt.getTop() >= 0) {
                z = true;
            }
            bcVar.b(z);
        }
    }

    public void c() {
        if (this.t) {
            getLoaderManager().restartLoader(0, null, this.c);
        } else if (getActivity() != null && a(getActivity())) {
            i();
        }
    }

    public void a(bc bcVar) {
        this.k = bcVar;
    }

    public void b(EditableMedia editableMedia) {
        if (this.a == null) {
            if (this.l == null) {
                this.l = new HashMap();
            }
            this.l.put(editableMedia.e(), editableMedia);
        } else {
            this.a.b(editableMedia);
        }
        g();
    }

    public void a(Uri uri) {
        if (this.a != null) {
            this.a.a(uri);
        } else if (this.l != null) {
            this.l.remove(uri);
        }
        g();
    }

    public void b(boolean z) {
        if (this.a == null) {
            this.m = !z;
        } else {
            this.a.a(z);
        }
    }

    public void c(boolean z) {
        if (this.a == null) {
            this.n = z;
        } else {
            this.a.b(z);
        }
    }

    public void a(float f) {
        Scroller scroller = new Scroller(getActivity());
        scroller.fling(0, 0, 0, (int) f, 0, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, RtlSpacingHelper.UNDEFINED, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        this.h.smoothScrollBy(Math.min(-scroller.getFinalY(), getResources().getDisplayMetrics().heightPixels), scroller.getDuration());
    }

    public void onStart() {
        super.onStart();
        if (this.p) {
            this.p = false;
        } else {
            c();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.a.b();
    }

    public void onDestroy() {
        super.onDestroy();
        Activity activity = getActivity();
        if (!(activity == null || activity.isChangingConfigurations())) {
            h();
        }
        this.c.a();
        this.a = null;
    }

    public void a(View[] viewArr) {
        this.g = viewArr;
    }

    public void b(View[] viewArr) {
        if (this.a == null) {
            a(viewArr);
        } else {
            c(viewArr);
        }
    }

    public static int b(Context context) {
        if (but.b()) {
            return context.getResources().getInteger(2131755014);
        }
        return context.getResources().getInteger(2131755013);
    }

    protected void a(boolean z) {
        this.a = new at(getActivity(), 0, z, 0, this.b);
    }

    private void a(int i, int i2) {
        if (i2 > 0) {
            LayoutParams layoutParams = new AbsListView.LayoutParams(-1, i);
            Context activity = getActivity();
            for (int i3 = 0; i3 < i2; i3++) {
                View view = new View(activity);
                view.setLayoutParams(layoutParams);
                view.setBackgroundDrawable(getView().getBackground());
                this.a.a(view);
            }
        }
    }

    private void c(View[] viewArr) {
        if (viewArr != null) {
            for (View a : viewArr) {
                this.a.a(a);
            }
        }
    }

    private void g() {
        if (ad() && this.j != null) {
            int a = this.a != null ? this.a.a() : this.l != null ? this.l.size() : 0;
            Resources resources = getResources();
            this.j.setText(a == 0 ? resources.getString(2131362738) : resources.getQuantityString(2131492890, a, new Object[]{Integer.valueOf(a)}));
        }
    }

    private void h() {
        m a = l.a(getActivity()).f().a();
        if (a != null) {
            a.a();
        }
    }

    public j<EditableMedia> a(int i) {
        return ObservablePromise.a(this.q);
    }

    public int getCount() {
        return 1;
    }

    public int getInitialPosition() {
        return 0;
    }

    public void f() {
        this.q = null;
    }

    public void c(EditableMedia editableMedia) {
        this.r.put(editableMedia.e().toString(), editableMedia);
    }

    public void a(EditableImage editableImage) {
        this.a.a(editableImage);
    }

    private void i() {
        getLoaderManager().initLoader(0, null, this.c);
        this.t = true;
    }
}
