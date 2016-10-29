package com.twitter.android.profilecompletionmodule;

import com.twitter.android.ProfileActivity;
import com.twitter.android.client.bv;
import com.twitter.android.media.camera.CameraActivity;
import com.twitter.android.media.imageeditor.EditImageActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.av;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.z;
import com.twitter.media.model.MediaFile;
import com.twitter.model.media.EditableImage;
import com.twitter.util.collection.x;
import com.twitter.util.concurrent.j;
import defpackage.aom;
import defpackage.vr;
import java.util.ArrayList;

/* compiled from: Twttr */
public class f extends aom implements e {
    private final BaseFragmentActivity a;

    protected f(BaseFragmentActivity baseFragmentActivity) {
        super(baseFragmentActivity);
        this.a = baseFragmentActivity;
    }

    public void a(boolean z) {
        if (z) {
            Session c = bg.a().c();
            this.a.startActivity(ProfileActivity.a(this.a, c.g(), c.e(), null, null, -1, null, null).addFlags(603979776));
        }
        this.a.finish();
    }

    public void a(String str, String[] strArr, int i) {
        this.a.startActivityForResult(new b(str, this.a, strArr).a(), i);
    }

    public void a(int i, boolean z) {
        this.a.startActivityForResult(CameraActivity.a(this.a, 1, false, z), i);
    }

    public void a(int i) {
        z.a(this.a, i);
    }

    public void a(BaseDialogFragment baseDialogFragment) {
        baseDialogFragment.a(this.a.getSupportFragmentManager());
    }

    public void a(ProfileCompletionModulePendingChanges profileCompletionModulePendingChanges) {
        if (profileCompletionModulePendingChanges.g()) {
            boolean z;
            MediaFile a = profileCompletionModulePendingChanges.a();
            MediaFile b = profileCompletionModulePendingChanges.b();
            String c = profileCompletionModulePendingChanges.c();
            String e = profileCompletionModulePendingChanges.e();
            x b2 = x.b(profileCompletionModulePendingChanges.f());
            if (profileCompletionModulePendingChanges.c() != null) {
                z = true;
            } else {
                z = false;
            }
            bv.a(this.a, bg.a().c(), new av(a, b, false, null, c, null, e, b2, z, false, profileCompletionModulePendingChanges.d()));
        }
    }

    public void a(int i, EditableImage editableImage) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(editableImage);
        this.a.startActivityForResult(EditImageActivity.a(this.a, arrayList, "profile", 3.0f, 2, true), i);
    }

    public void a(j<?> jVar) {
        this.a.a((j) jVar);
    }

    public void a() {
        vr.a(this.a);
    }
}
