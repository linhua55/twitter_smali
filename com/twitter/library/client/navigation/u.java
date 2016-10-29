package com.twitter.library.client.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import bca;
import bcx;
import com.twitter.util.collection.MutableList;
import defpackage.bbx;
import defpackage.bdd;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
class u extends bbx {
    final List<bca> d;
    final List<b> e;
    final Set<Integer> f;
    final /* synthetic */ r g;

    u(r rVar, Context context, int i) {
        this.g = rVar;
        super(context, i);
        this.d = MutableList.a();
        this.e = MutableList.a();
        this.f = new HashSet();
    }

    protected void b() {
        TypedArray obtainStyledAttributes = this.b.obtainStyledAttributes(this.c, bdd.ToolBarItem);
        CharSequence text = obtainStyledAttributes.getText(bdd.ToolBarItem_component);
        int resourceId = obtainStyledAttributes.getResourceId(bdd.ToolBarItem_android_id, 0);
        if (r.b(this.g) && "drawer".equals(text)) {
            text = obtainStyledAttributes.getText(bdd.ToolBarItem_drawerTitle);
            if (text == null) {
                text = obtainStyledAttributes.getText(bdd.ToolBarItem_android_title);
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(bdd.ToolBarItem_drawerIcon, 0);
            if (resourceId2 == 0) {
                resourceId2 = obtainStyledAttributes.getResourceId(bdd.ToolBarItem_android_icon, 0);
            }
            int i = obtainStyledAttributes.getInt(bdd.ToolBarItem_groupId, Integer.MAX_VALUE);
            int i2 = obtainStyledAttributes.getInt(bdd.ToolBarItem_order, 500);
            boolean z = obtainStyledAttributes.getBoolean(bdd.ToolBarItem_android_visible, true);
            b c = new b(this.b, resourceId, i, i2).a(text).b(resourceId2).a(z).c(obtainStyledAttributes.getResourceId(bdd.ToolBarItem_actionLayout, 0));
            if (!(r.c(this.g) && resourceId == bcx.accounts)) {
                this.e.add(c);
            }
        } else if (r.d(this.g) && "tabs".equals(text)) {
            this.f.add(Integer.valueOf(resourceId));
        } else {
            this.d.add(new bca(this.g.a, this.b, this.c));
        }
        obtainStyledAttributes.recycle();
    }
}
