package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import bdt;
import cgq;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.android.widget.bl;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.t;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import com.twitter.model.account.a;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bdl;
import defpackage.bek;
import defpackage.cgu;
import java.io.File;

/* compiled from: Twttr */
public class BackupCodeFragment extends TwitterListFragment<Cursor, af> implements j, m {
    private static final String[] a;
    private String b;
    private long c;
    private String d;

    static {
        a = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"};
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        h C = C();
        this.b = C.f("bc_account_name");
        Session aT = aT();
        if (aj.a(this.b)) {
            this.b = aT.e();
        }
        if (bundle == null) {
            this.c = C.a("bc_account_id", aT.g());
            bbu.a(new TwitterScribeLog(this.c).b("backup_code::::impression"));
        }
        if (bundle == null && C.a("show_welcome", false)) {
            n();
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Context activity = getActivity();
        bdl afVar = new af(activity);
        ap().a(afVar, new ag(activity, afVar));
        b(BuildConfig.VERSION_NAME);
    }

    public void a() {
        super.a();
        if (aj.a(this.d) && !l(0)) {
            c(new bdt(getContext(), aT(), true), 12, 0);
        }
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        a e;
        switch (i) {
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                e = ((bdt) xVar).e();
                if (xVar.U()) {
                    a((String) CollectionUtils.b(e.a()), true);
                }
            case mx.TwitterEditText_characterCounterColor /*12*/:
                e = ((bdt) xVar).e();
                if (xVar.U()) {
                    Object[] a = e.a();
                    if (CollectionUtils.a(a)) {
                        c(new bdt(getContext(), aT(), false), 11, 0);
                    } else {
                        a(a[0], false);
                    }
                }
            default:
        }
    }

    private void b(String str) {
        if (!str.equals(this.d)) {
            Cursor matrixCursor;
            if (aj.b((CharSequence) str)) {
                matrixCursor = new MatrixCursor(new String[]{"_id", "code"});
                matrixCursor.addRow(new Object[]{Integer.valueOf(0), str});
            } else {
                matrixCursor = null;
            }
            b((cgu) new cgq(matrixCursor));
            this.d = str;
        }
    }

    void a(String str, boolean z) {
        Activity activity = getActivity();
        if (aj.a((CharSequence) str)) {
            a(2131363008);
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        b(str);
        if (z) {
            n();
        }
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.c(2130968648);
    }

    protected void a(ListView listView, View view, int i, long j) {
        Context activity = getActivity();
        if (i == listView.getAdapter().getCount() - 1 && activity != null) {
            b(BuildConfig.VERSION_NAME);
            bek.c(activity, this.b);
            c(new bdt(getContext(), aT(), false), 11, 0);
        } else if (((bl) listView.getAdapter()).b(i)) {
            m();
        }
    }

    private void m() {
        Cursor cursor = (Cursor) ap().a.getItemAtPosition(1);
        if (cursor != null) {
            String a = af.a(cursor);
            if (aj.b((CharSequence) a)) {
                aq.a(getActivity(), a);
                a(2131362329);
            }
        }
    }

    private static String c(String str) {
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

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i != 1) {
            return;
        }
        if (i2 == -1) {
            bbu.a(new TwitterScribeLog(this.c).b("backup_code::take_screenshot:ok:click"));
            Context activity = getActivity();
            if (lf.a().a(activity, a)) {
                p();
                return;
            } else {
                startActivityForResult(new b(getResources().getString(2131363527), activity, a).f("backup_code::take_screenshot:").a(), 10);
                return;
            }
        }
        bbu.a(new TwitterScribeLog(this.c).b("backup_code::take_screenshot:cancel:click"));
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && PermissionRequestActivity.a(intent)) {
            p();
        }
    }

    public void a(DialogInterface dialogInterface, int i) {
        bbu.a(new TwitterScribeLog(this.c).b("backup_code::take_screenshot:cancel:click"));
    }

    private void n() {
        bbu.a(new TwitterScribeLog(this.c).b("backup_code::take_screenshot::impression"));
        ((ec) ((ec) ((ec) ((ec) new ec(1).a(2131363002)).b(2131363019)).d(2131364205)).f(2131363158)).i().a((j) this).a((Fragment) this).a(getFragmentManager());
    }

    void a(File file) {
        if (file != null) {
            bbu.a(new TwitterScribeLog(this.c).b("backup_code::take_screenshot::success"));
            a(2131363542);
            return;
        }
        l();
    }

    void l() {
        bbu.a(new TwitterScribeLog(this.c).b("backup_code::take_screenshot::failure"));
        ((ec) ((ec) ((ec) new ec(2).a(2131364045)).b(2131364046)).d(2131363218)).i().a(getFragmentManager());
    }

    private void p() {
        View rootView = getView().getRootView();
        rootView.setDrawingCacheEnabled(true);
        Bitmap a = com.twitter.media.util.a.a(rootView.getDrawingCache());
        rootView.setDrawingCacheEnabled(false);
        Context activity = getActivity();
        if (activity != null) {
            new ah(this, activity, getString(2131363531)).execute(new Bitmap[]{a});
            return;
        }
        l();
    }
}
