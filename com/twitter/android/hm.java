package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.widget.BaseUserView;
import com.twitter.library.widget.UserApprovalView;
import com.twitter.library.widget.e;
import java.util.Map;

/* compiled from: Twttr */
public class hm extends xs {
    private final Map<Long, Integer> a;
    private final e<UserApprovalView> b;

    public hm(Context context, e<UserApprovalView> eVar, Map<Long, Integer> map) {
        super(context, 0, null, null, false);
        this.a = map;
        this.b = eVar;
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        UserApprovalView userApprovalView = (UserApprovalView) LayoutInflater.from(context).inflate(2130969495, viewGroup, false);
        e eVar = this.b;
        userApprovalView.a(0, 2130838911, eVar);
        userApprovalView.a(1, 2130839188, eVar);
        userApprovalView.a(2, 2130837689, eVar);
        userApprovalView.a(2, 2130837690);
        userApprovalView.setTag(new xp(userApprovalView));
        return userApprovalView;
    }

    public void a(View view, Context context, Cursor cursor, int i) {
        long j = cursor.getLong(2);
        UserApprovalView userApprovalView = (UserApprovalView) view;
        a((BaseUserView) userApprovalView, cursor, j, i);
        if (this.h == j) {
            userApprovalView.setState(0);
            userApprovalView.g();
            return;
        }
        Integer num = (Integer) this.a.get(Long.valueOf(j));
        if (num != null) {
            switch (num.intValue()) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    userApprovalView.setState(1);
                    userApprovalView.d();
                    return;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    userApprovalView.setState(2);
                    userApprovalView.g();
                    return;
                case Util.TYPE_OTHER /*3*/:
                    userApprovalView.setState(3);
                    userApprovalView.d();
                    return;
                default:
                    userApprovalView.setState(0);
                    userApprovalView.c();
                    return;
            }
        }
        userApprovalView.setState(0);
        userApprovalView.c();
    }
}
