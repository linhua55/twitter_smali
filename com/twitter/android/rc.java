package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bdk;

/* compiled from: Twttr */
public class rc extends bdk<Cursor> {
    public rc(Context context) {
        super(context, 0);
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(2130968649, null);
    }

    public void a(View view, Context context, Cursor cursor) {
        ((TextView) view.findViewById(2131952010)).setText(TemporaryAppPasswordFragment.b(a(cursor)));
    }

    public static String a(Cursor cursor) {
        return cursor.getString(1);
    }
}
