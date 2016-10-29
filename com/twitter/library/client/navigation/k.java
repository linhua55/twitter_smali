package com.twitter.library.client.navigation;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bcx;
import bdl;
import com.twitter.android.UserAccount;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.util.ui.q;
import defpackage.bcy;

/* compiled from: Twttr */
class k extends bdl<n> {
    final /* synthetic */ f a;

    k(f fVar, Context context) {
        this.a = fVar;
        super(context);
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    protected boolean a(Context context, n nVar) {
        return !(nVar instanceof o);
    }

    protected int a(n nVar) {
        if (nVar instanceof o) {
            return 1;
        }
        if (nVar instanceof j) {
            return 2;
        }
        return 0;
    }

    public int getViewTypeCount() {
        return 3;
    }

    public long getItemId(int i) {
        n nVar = (n) getItem(i);
        if (nVar instanceof p) {
            return (long) ((p) nVar).b.a();
        }
        return 0;
    }

    protected View a(Context context, n nVar, ViewGroup viewGroup) {
        View inflate;
        if (nVar instanceof o) {
            inflate = this.a.b.inflate(bcy.design_navigation_item_separator, viewGroup, false);
            inflate.setPadding(0, this.a.f, 0, this.a.f);
            return inflate;
        } else if (nVar instanceof j) {
            inflate = this.a.b.inflate(bcy.drawer_account_item, viewGroup, false);
            inflate.setOnClickListener(new l(this));
            return inflate;
        } else {
            View inflate2 = this.a.b.inflate(bcy.drawer_menu_item, viewGroup, false);
            inflate2.setOnClickListener(new m(this));
            TextView textView = (TextView) inflate2.findViewById(bcx.title);
            if (this.a.h != null) {
                textView.setTextColor(this.a.h);
            }
            return inflate2;
        }
    }

    protected void a(View view, Context context, n nVar) {
        view.setTag(nVar);
        if (nVar instanceof p) {
            b a = ((p) nVar).b;
            view.setTag(bcx.drawer_item_tag, a);
            TextView textView = (TextView) view.findViewById(bcx.title);
            textView.setText(a.f());
            q.a(textView, null, null, null, null);
            if (a.g() != 0) {
                Drawable drawable = this.a.a.getResources().getDrawable(a.g());
                if (drawable != null) {
                    ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        drawable = constantState.newDrawable();
                    }
                    drawable = DrawableCompat.wrap(drawable).mutate();
                    drawable.setBounds(0, 0, this.a.g, this.a.g);
                    if (this.a.i != null) {
                        DrawableCompat.setTintList(drawable, this.a.i);
                    }
                    q.a(textView, drawable, null, null, null);
                }
            }
            ViewGroup viewGroup = (ViewGroup) view.findViewById(bcx.action_view);
            viewGroup.removeAllViews();
            viewGroup.setVisibility(8);
            View d = a.d();
            if (d != null) {
                if (d.getParent() instanceof ViewGroup) {
                    ((ViewGroup) d.getParent()).removeView(d);
                }
                viewGroup.setVisibility(0);
                viewGroup.addView(d);
            }
        } else if (nVar instanceof j) {
            UserAccount a2 = ((j) nVar).b;
            view.setTag(bcx.drawer_item_tag, a2);
            ((UserImageView) view.findViewById(bcx.user_image)).a(a2.b);
            ((TextView) view.findViewById(bcx.account_name)).setText(a2.b.d);
            ((TextView) view.findViewById(bcx.username)).setText('@' + a2.b.k);
        }
    }
}
