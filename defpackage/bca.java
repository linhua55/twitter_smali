package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.LayoutRes;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Toast;
import bcb;
import bdd;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.android.widget.ToolBarItemView;
import com.twitter.internal.android.widget.e;
import com.twitter.library.client.navigation.ac;

/* compiled from: Twttr */
/* renamed from: bca */
public class bca implements e, ac {
    private final ToolBar a;
    private ToolBarItemView b;
    private int c;
    private int d;
    private int e;
    private View f;
    private bcb g;
    private boolean h;
    private boolean i;
    private boolean j;
    private CharSequence k;
    private CharSequence l;
    private Intent m;
    private boolean n;
    private int o;
    private CharSequence p;
    private Drawable q;
    private int r;
    private int s;
    private boolean t;

    public /* synthetic */ ac e(boolean z) {
        return c(z);
    }

    public /* synthetic */ ac f(boolean z) {
        return b(z);
    }

    public /* synthetic */ ac g(int i) {
        return d(i);
    }

    public bca(ToolBar toolBar) {
        this.a = toolBar;
        this.i = true;
        this.j = true;
        this.e = 1;
    }

    public bca(ToolBar toolBar, Context context, AttributeSet attributeSet) {
        int i = -1;
        this.a = toolBar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ToolBarItem);
        this.d = obtainStyledAttributes.getResourceId(bdd.ToolBarItem_android_id, 0);
        this.c = obtainStyledAttributes.getResourceId(bdd.ToolBarItem_android_icon, 0);
        this.k = obtainStyledAttributes.getText(bdd.ToolBarItem_android_title);
        if (this.c == 0 && this.k == null) {
            throw new IllegalArgumentException("ToolBar item requires either icon or title.");
        }
        this.e = obtainStyledAttributes.getInt(bdd.ToolBarItem_android_showAsAction, 1);
        b(obtainStyledAttributes.getResourceId(bdd.ToolBarItem_actionLayout, 0));
        this.j = obtainStyledAttributes.getBoolean(bdd.ToolBarItem_android_enabled, true);
        this.i = obtainStyledAttributes.getBoolean(bdd.ToolBarItem_android_visible, true);
        this.p = obtainStyledAttributes.getText(bdd.ToolBarItem_subtitle);
        this.t = obtainStyledAttributes.getBoolean(bdd.ToolBarItem_alignLeft, false);
        e(obtainStyledAttributes.getResourceId(bdd.ToolBarItem_overflowIcon, 0));
        if (obtainStyledAttributes.hasValue(bdd.ToolBarItem_order)) {
            i = obtainStyledAttributes.getInt(bdd.ToolBarItem_order, -1);
            if (i <= 0) {
                throw new IllegalArgumentException("ToolBar item order must be greater than 0");
            }
        }
        this.r = i;
        this.s = obtainStyledAttributes.getInt(bdd.ToolBarItem_priority, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        t();
        obtainStyledAttributes.recycle();
    }

    public int a() {
        return this.d;
    }

    public bca a(int i) {
        this.d = i;
        return this;
    }

    public int b() {
        return this.c;
    }

    public bca a(Bitmap bitmap) {
        this.c = 0;
        if (this.b != null) {
            this.b.setImageBitmap(bitmap);
        }
        return this;
    }

    public View c() {
        return this.b;
    }

    public bca a(ToolBarItemView toolBarItemView) {
        this.b = toolBarItemView;
        t();
        return this;
    }

    public bca b(@LayoutRes int i) {
        if (i != 0) {
            this.f = LayoutInflater.from(this.a.getThemedContext()).inflate(i, null, false);
        }
        return this;
    }

    public View d() {
        return this.f;
    }

    public bca a(View view) {
        this.f = view;
        return this;
    }

    public boolean e() {
        if (this.h || (this.e & 8) == 0 || this.f == null) {
            return false;
        }
        if (this.g == null || this.g.b(this)) {
            return this.a.e(this);
        }
        return false;
    }

    public boolean f() {
        if (!this.h || (this.e & 8) == 0 || this.f == null) {
            return false;
        }
        if (this.g == null || this.g.a(this)) {
            return this.a.d(this);
        }
        return false;
    }

    public boolean g() {
        return this.h;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public bca a(bcb bcb) {
        this.g = bcb;
        return this;
    }

    public boolean h() {
        return this.i;
    }

    public bca b(boolean z) {
        if (this.i != z) {
            this.i = z;
            this.a.f(this);
        }
        return this;
    }

    public int i() {
        return this.e;
    }

    public bca c(int i) {
        this.e = i;
        return this;
    }

    public CharSequence j() {
        return this.k;
    }

    public bca d(int i) {
        if (i != 0) {
            this.k = this.a.getThemedContext().getString(i);
            t();
        }
        return this;
    }

    public bca a(CharSequence charSequence) {
        this.k = charSequence;
        t();
        return this;
    }

    public bca b(CharSequence charSequence) {
        this.l = charSequence;
        t();
        return this;
    }

    public void k() {
        Context context = this.b.getContext();
        int[] iArr = new int[2];
        Rect rect = new Rect();
        this.b.getLocationOnScreen(iArr);
        this.b.getWindowVisibleDisplayFrame(rect);
        int width = this.b.getWidth();
        int height = this.b.getHeight();
        int i = iArr[1] + (height / 2);
        int i2 = iArr[0] + (width / 2);
        if (ViewCompat.getLayoutDirection(this.b) == 0) {
            i2 = context.getResources().getDisplayMetrics().widthPixels - i2;
        }
        Toast makeText = Toast.makeText(context, j(), 0);
        if (i < rect.height()) {
            makeText.setGravity(8388661, i2, height);
        } else {
            makeText.setGravity(81, 0, height);
        }
        makeText.show();
    }

    public boolean l() {
        return this.j;
    }

    public bca c(boolean z) {
        this.j = z;
        if (this.b != null) {
            this.b.setEnabled(z);
        }
        return this;
    }

    public Intent m() {
        return this.m;
    }

    public bca a(Intent intent) {
        this.m = intent;
        return this;
    }

    public void d(boolean z) {
        this.n = z;
    }

    public boolean n() {
        return this.n;
    }

    public void setBadgeMode(int i) {
        if (this.b != null) {
            this.b.setBadgeMode(i);
        }
    }

    public void setBadgeNumber(int i) {
        if (this.o != i) {
            this.o = i;
            if (this.b != null) {
                this.b.setBadgeNumber(i);
            }
        }
    }

    public CharSequence o() {
        return this.p;
    }

    public bca c(CharSequence charSequence) {
        this.p = charSequence;
        return this;
    }

    public bca a(Drawable drawable) {
        if (drawable != this.q) {
            this.q = drawable;
            this.a.i();
        }
        return this;
    }

    public bca e(int i) {
        if (i != 0) {
            this.q = this.a.getThemedContext().getResources().getDrawable(i);
        }
        return this;
    }

    public Drawable p() {
        return this.q;
    }

    public bca f(int i) {
        this.r = i;
        return this;
    }

    public int q() {
        return this.r;
    }

    public int r() {
        return this.s;
    }

    public boolean s() {
        return this.t;
    }

    private void t() {
        if (this.b == null) {
            return;
        }
        if (this.l != null) {
            this.b.setContentDescription(this.l);
        } else if (this.k != null) {
            this.b.setContentDescription(this.k);
        }
    }
}
