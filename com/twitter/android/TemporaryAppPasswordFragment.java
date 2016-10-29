package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import beu;
import cgq;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.t;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.bdl;
import defpackage.cgu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TemporaryAppPasswordFragment extends TwitterListFragment<Cursor, rc> {
    private String a;
    private long b;
    private String c;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        h C = C();
        this.a = C.f("account_name");
        Session aT = aT();
        if (aj.a(this.a)) {
            this.a = aT.e();
        }
        if (bundle == null) {
            this.b = C.a("account_id", aT.g());
            bbu.a(new TwitterScribeLog(this.b).b("temporary_app_password::::impression"));
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Context activity = getActivity();
        bdl rcVar = new rc(activity);
        ap().a(rcVar, new rd(activity, rcVar));
        c(BuildConfig.VERSION_NAME);
    }

    public void a() {
        super.a();
        if (aj.a(this.c) && !l(0)) {
            m();
        }
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.c(2130969442);
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        switch (i) {
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                com.twitter.model.account.h e = ((beu) xVar).e();
                if (xVar.U()) {
                    a(e.a());
                    return;
                }
                a(2131362997);
                getActivity().finish();
            default:
        }
    }

    private void c(String str) {
        if (!str.equals(this.c)) {
            Cursor matrixCursor;
            if (aj.b((CharSequence) str)) {
                matrixCursor = new MatrixCursor(new String[]{"_id", "code"});
                matrixCursor.addRow(new Object[]{Integer.valueOf(0), str});
            } else {
                matrixCursor = null;
            }
            b((cgu) new cgq(matrixCursor));
            this.c = str;
        }
    }

    void a(String str) {
        Activity activity = getActivity();
        if (aj.a((CharSequence) str)) {
            a(2131363008);
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        c(str);
    }

    protected void a(ListView listView, View view, int i, long j) {
        if (getActivity() != null) {
            switch (i) {
                case mx.View_android_theme /*0*/:
                    n();
                case WireMessage.WIRE_CHAT /*1*/:
                    c(BuildConfig.VERSION_NAME);
                    m();
                default:
            }
        }
    }

    private void m() {
        c(new beu(getContext(), aT()), 11, 0);
    }

    private void n() {
        Cursor cursor = (Cursor) ap().a.getItemAtPosition(0);
        if (cursor != null) {
            String a = rc.a(cursor);
            if (aj.b((CharSequence) a)) {
                aq.a(getActivity(), a);
                a(2131362329);
            }
        }
    }

    private static String d(String str) {
        if (str == null || str.length() != 12) {
            return BuildConfig.VERSION_NAME;
        }
        return str.substring(0, 4) + " " + str.substring(4, 8) + " " + str.substring(8);
    }

    void a(int i) {
        Context activity = getActivity();
        if (activity != null) {
            Toast.makeText(activity, getString(i), 1).show();
        }
    }
}
