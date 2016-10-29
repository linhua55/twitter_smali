package com.twitter.android.news;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdk;
import cbj;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.media.request.b;
import com.twitter.util.al;

/* compiled from: Twttr */
public class a extends bdk<Cursor> {
    public a(Context context) {
        super(context, 0);
    }

    public int getViewTypeCount() {
        return a(bg.a().c().g()) ? 2 : 1;
    }

    public int getItemViewType(int i) {
        if (a(bg.a().c().g()) && i == 0) {
            return 1;
        }
        return 0;
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        int d;
        long g = bg.a().c().g();
        if (cursor.getString(5) != null && a(g) && cursor.getPosition() == 0) {
            d = n.d(g);
        } else {
            d = n.c(g);
        }
        View inflate = LayoutInflater.from(context).inflate(d, viewGroup, false);
        if (inflate != null) {
            inflate.setTag(new b(this, inflate));
        }
        return inflate;
    }

    public void a(View view, Context context, Cursor cursor) {
        b bVar = (b) view.getTag();
        bVar.a.setText(cursor.getString(4));
        long g = bg.a().c().g();
        int i = cursor.getInt(9);
        CharSequence quantityString = context.getResources().getQuantityString(n.a(), i, new Object[]{Integer.valueOf(i)});
        if (d.a("japan_news_headline_time_stamp_enabled")) {
            bVar.b.setText(String.format(context.getString(2131363147), new Object[]{quantityString, al.a(context.getResources(), cursor.getLong(10))}));
        } else if (n.a(g)) {
            bVar.b.setText(String.format(context.getString(2131363147), new Object[]{cursor.getString(6), quantityString}));
        } else {
            bVar.b.setText(quantityString);
        }
        String string = cursor.getString(5);
        if (string != null) {
            b a = com.twitter.media.request.a.a(string);
            if (!cbj.d(g)) {
                bVar.c.setVisibility(0);
                bVar.c.a(a);
            } else if (a(g) && cursor.getPosition() == 0) {
                bVar.c.setVisibility(8);
                bVar.e.setVisibility(0);
                bVar.e.a(a);
                bVar.f.setVisibility(0);
            } else {
                bVar.e.setVisibility(8);
                bVar.c.setVisibility(0);
                bVar.c.a(a);
                bVar.f.setVisibility(8);
            }
        } else {
            bVar.c.setVisibility(8);
        }
        g = bg.a().c().g();
        if (cbj.d(g)) {
            bVar.d.setText(cursor.getString(6));
            if (a(g) && cursor.getPosition() == 0) {
                bVar.g.setVisibility(0);
                bVar.b.setVisibility(8);
                bVar.g.setText(quantityString);
            } else {
                bVar.g.setVisibility(8);
                bVar.b.setVisibility(0);
            }
        }
        if (bVar.c != null) {
            bVar.c.setImageType("news");
        }
        if (bVar.e != null) {
            bVar.e.setImageType("news");
        }
    }

    private boolean a(long j) {
        if (i().getResources().getConfiguration().orientation == 1 && cbj.e(j)) {
            return true;
        }
        return false;
    }
}
