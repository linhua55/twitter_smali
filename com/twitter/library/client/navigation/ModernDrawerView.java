package com.twitter.library.client.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import bct;
import bdd;
import java.util.List;

/* compiled from: Twttr */
public class ModernDrawerView extends ScrimInsetsFrameLayout {
    private final c a;
    private final f b;
    private final View c;

    public ModernDrawerView(Context context) {
        this(context, null);
    }

    public ModernDrawerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.drawerViewStyle);
    }

    public ModernDrawerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.NavigationView, i, 0);
        this.a = new c();
        int resourceId = obtainStyledAttributes.getResourceId(bdd.NavigationView_headerLayout, 0);
        if (resourceId != 0) {
            this.c = LayoutInflater.from(context).inflate(resourceId, null);
        } else {
            this.c = null;
        }
        this.b = new f(context, this.a, this.c);
        addView(this.b.a());
        if (obtainStyledAttributes.hasValue(bdd.NavigationView_itemIconTint)) {
            this.b.a(obtainStyledAttributes.getColorStateList(bdd.NavigationView_itemIconTint));
        }
        if (obtainStyledAttributes.hasValue(bdd.NavigationView_itemTextColor)) {
            this.b.b(obtainStyledAttributes.getColorStateList(bdd.NavigationView_itemTextColor));
        }
        obtainStyledAttributes.recycle();
    }

    public void a(List<b> list) {
        this.a.a(list);
    }

    public void setOnDrawerItemClickListener(q qVar) {
        this.b.a(qVar);
    }

    public View getHeaderView() {
        return this.c;
    }

    public b a(int i) {
        return this.a.a(i);
    }

    public void a() {
        this.b.c();
    }
}
