package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.support.annotation.DrawableRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cgu;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;

/* compiled from: Twttr */
public class hy extends xs {
    private final ia a;
    private int[] b;
    private String i;

    public hy(Context context, int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z, boolean z2, boolean z3, String str, ia iaVar) {
        this(context, i, eVar, friendshipCache, z, z2, z3, iaVar);
        this.i = str;
    }

    public hy(Context context, @DrawableRes int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z, boolean z2, boolean z3, ia iaVar) {
        super(context, i, eVar, friendshipCache, z);
        this.a = iaVar;
        c(z2);
        d(z3);
    }

    UserView a(Context context, ViewGroup viewGroup) {
        return a((UserView) LayoutInflater.from(context).inflate(2130969509, viewGroup, false));
    }

    protected UserView a(UserView userView) {
        UserView a = super.a(userView);
        a.setTag(new ib(userView, this.i));
        return a;
    }

    public cgu<Cursor> a(cgu<Cursor> cgu_android_database_Cursor) {
        this.b = new int[((cgu) com.twitter.util.object.e.b(cgu_android_database_Cursor, cgu.f())).aU_()];
        return super.a((cgu) cgu_android_database_Cursor);
    }

    public void a(View view, Context context, Cursor cursor, int i) {
        super.a(view, context, cursor, i);
        ib ibVar = (ib) view.getTag();
        this.b[i] = a(cursor, this.b[i], i);
        if (2 == this.b[i]) {
            if (ibVar.b == null) {
                ibVar.b = (TextView) ibVar.a.inflate().findViewById(2131953355);
            }
            ibVar.b.setText(a(cursor));
            ibVar.b.setVisibility(0);
        } else if (ibVar.b != null) {
            ibVar.b.setVisibility(8);
        }
    }

    private int a(Cursor cursor, int i, int i2) {
        if (i2 == 0) {
            return 2;
        }
        if (i != 0) {
            return i;
        }
        String a = a(cursor);
        cursor.moveToPrevious();
        String a2 = a(cursor);
        cursor.moveToNext();
        if (a.equalsIgnoreCase(a2)) {
            return 1;
        }
        return 2;
    }

    private String a(Cursor cursor) {
        return String.valueOf(this.a.a(com.twitter.util.object.e.b(cursor.getString(3))));
    }
}
