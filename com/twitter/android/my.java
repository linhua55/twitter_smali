package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.support.annotation.DrawableRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.widget.BaseUserView;
import com.twitter.library.widget.UserSocialView;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.bg;
import com.twitter.util.ak;
import defpackage.bcv;
import defpackage.bcw;
import defpackage.bdc;
import defpackage.bdd;

/* compiled from: Twttr */
public class my extends xs {
    protected final boolean a;
    protected boolean b;
    private boolean i;
    private final boolean j;

    public my(Context context, @DrawableRes int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z, boolean z2, boolean z3) {
        super(context, i, eVar, friendshipCache, z2);
        this.b = true;
        this.a = z;
        this.j = z3;
    }

    public my(Context context, @DrawableRes int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z) {
        this(context, i, eVar, friendshipCache, z, false, false);
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        if (!this.a) {
            return super.a(context, cursor, viewGroup);
        }
        if (this.j) {
            View view = (GroupedRowView) LayoutInflater.from(context).inflate(2130968880, viewGroup, false);
            view.setStyle(2);
            a(a(view));
            return view;
        }
        return a((UserView) LayoutInflater.from(context).inflate(this.d ? 2130968673 : 2130969510, viewGroup, false));
    }

    public void a(View view, Context context, Cursor cursor, int i) {
        String str = null;
        super.a(view, context, cursor, i);
        int i2 = cursor.getInt(14);
        if (this.a) {
            UserSocialView userSocialView = (UserSocialView) a(view);
            userSocialView.setContentSize(ao.a);
            if (this.c) {
                userSocialView.a(cursor.getString(8), bg.a(cursor.getBlob(9)));
            } else {
                userSocialView.a(null, null);
            }
            if (this.i) {
                userSocialView.d();
                userSocialView.setContentSize(context.getResources().getDimension(bcv.font_size_small));
                userSocialView.setScreenNameColor(context.getResources().getColor(2131886400));
            }
            int i3 = this.b ? cursor.getInt(12) : -1;
            switch (i3) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                    userSocialView.a(i3, bcw.ic_activity_follow_tweet_default, cursor.getString(13), i2, ak.f());
                    return;
                default:
                    userSocialView.a(i3, 0, null, 0, ak.f());
                    return;
            }
        }
        switch (cursor.getInt(12)) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                str = context.getString(bdc.social_both_follow, new Object[]{cursor.getString(13)});
                break;
            case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                if (i2 != 0) {
                    str = context.getResources().getQuantityString(2131492870, i2, new Object[]{cursor.getString(13), Integer.valueOf(i2)});
                    break;
                } else {
                    str = context.getString(2131362711, new Object[]{cursor.getString(13)});
                    break;
                }
        }
        ((BaseUserView) view).setExtraInfo(str);
    }

    public UserView a(View view) {
        if (this.j) {
            return (UserView) ((GroupedRowView) view).getChildAt(0);
        }
        return super.a(view);
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void b() {
        this.i = true;
    }
}
