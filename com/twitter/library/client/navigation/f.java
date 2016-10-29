package com.twitter.library.client.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.support.v7.util.SortedList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import bcx;
import bus;
import com.twitter.android.UserAccount;
import com.twitter.app.common.account.d;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.util.b;
import defpackage.bcv;
import defpackage.bcy;
import defpackage.bdc;
import defpackage.che;
import java.util.List;

/* compiled from: Twttr */
public class f {
    private final Context a;
    private final LayoutInflater b;
    private final c c;
    private final ListView d;
    private final k e;
    private final int f;
    private final int g;
    private ColorStateList h;
    private ColorStateList i;
    private q j;
    private View k;
    private boolean l;
    private float m;

    public f(Context context, c cVar, View view) {
        this.a = context;
        this.b = LayoutInflater.from(context);
        this.c = cVar;
        this.c.a(this);
        Resources resources = context.getResources();
        this.f = resources.getDimensionPixelOffset(bcv.design_navigation_separator_vertical_padding);
        this.g = resources.getDimensionPixelSize(bcv.design_navigation_icon_size);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(bcv.design_navigation_padding_bottom);
        this.d = new ListView(this.a);
        this.d.setClipToPadding(false);
        this.d.setPadding(0, 0, 0, dimensionPixelOffset);
        a(view, dimensionPixelOffset);
        this.e = new k(this, this.a);
        this.d.setAdapter(this.e);
    }

    private void a(View view, int i) {
        if (view != null) {
            view.setPadding(0, 0, 0, i);
            this.k = view.findViewById(bcx.accounts);
            this.m = this.k.getRotation();
            boolean z = !bus.a().h();
            view.setOnClickListener(new g(this, z));
            view.findViewById(bcx.my_profile).setOnClickListener(new h(this));
            ViewGroup viewGroup = (ViewGroup) view.findViewById(bcx.other_accounts);
            if (!(viewGroup == null || z)) {
                viewGroup.removeAllViews();
                List a = b.a(d.a().c(), bg.a());
                if (a.isEmpty()) {
                    viewGroup.setVisibility(8);
                } else {
                    viewGroup.setVisibility(0);
                    int i2 = 0;
                    while (i2 < 2 && i2 < a.size()) {
                        UserAccount userAccount = (UserAccount) a.get(i2);
                        UserImageView userImageView = (UserImageView) this.b.inflate(bcy.drawer_user_image, null);
                        viewGroup.addView(userImageView);
                        userImageView.a(userAccount.b);
                        userImageView.setOnClickListener(new i(this, userAccount));
                        i2++;
                    }
                }
            }
            this.d.addHeaderView(view);
        }
    }

    public View a() {
        return this.d;
    }

    public boolean b() {
        if (this.l) {
            c();
            return false;
        }
        d();
        return true;
    }

    public void c() {
        che che = new che();
        SortedList b = this.c.b();
        int size = b.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            b bVar = (b) b.get(i);
            if (bVar.b()) {
                if (i > 0 && r1 != bVar.c()) {
                    che.a(new o());
                }
                i2 = bVar.c();
                che.a(new p(this, bVar));
            }
            i++;
            i2 = i2;
        }
        this.e.a(che.a());
        if (this.k != null) {
            this.k.setRotation(this.m);
        }
        this.l = false;
    }

    public void d() {
        List<UserAccount> a = b.a(d.a().c(), bg.a());
        che che = new che();
        for (UserAccount jVar : a) {
            che.a(new j(this, jVar));
        }
        if (!a.isEmpty()) {
            che.a(new o());
        }
        che.a(new p(this, new b(this.a, bcx.new_account, 0, 0).a(bdc.accounts_dialog_new_account)));
        che.a(new p(this, new b(this.a, bcx.add_account, 0, 0).a(bdc.accounts_dialog_add_account)));
        this.e.a(che.a());
        if (this.k != null) {
            this.k.setRotation(this.m + 180.0f);
        }
        this.l = true;
    }

    public void a(q qVar) {
        this.j = qVar;
    }

    public void a(ColorStateList colorStateList) {
        this.i = colorStateList;
        c();
    }

    public void b(ColorStateList colorStateList) {
        this.h = colorStateList;
        c();
    }
}
