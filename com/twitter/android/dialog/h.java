package com.twitter.android.dialog;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import java.util.List;

/* compiled from: Twttr */
public class h {
    public static Dialog a(Context context, List<j> list) {
        Dialog create = new Builder(context).setItems(a(list), new i(list)).create();
        create.show();
        return create;
    }

    private static String[] a(List<j> list) {
        int size = list.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = ((j) list.get(i)).a;
        }
        return strArr;
    }
}
