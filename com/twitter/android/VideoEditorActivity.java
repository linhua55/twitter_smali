package com.twitter.android;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.base.u;
import com.twitter.library.client.d;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.model.media.EditableVideo;

/* compiled from: Twttr */
public class VideoEditorActivity extends TwitterFragmentActivity {
    private static final String[] a;
    private VideoEditorFragment b;

    static {
        a = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
    }

    public static Intent a(Context context, EditableVideo editableVideo, boolean z) {
        return new u().d(z).a(context, VideoEditorActivity.class).putExtra("editable_video", editableVideo);
    }

    public static EditableVideo a(Intent intent) {
        return (EditableVideo) intent.getParcelableExtra("editable_video");
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968615);
        tVar.a(false);
        return tVar;
    }

    protected void o() {
        if (this.b.g()) {
            c();
        } else {
            super.o();
        }
    }

    public void onBackPressed() {
        if (this.b.g()) {
            c();
        } else {
            super.onBackPressed();
        }
    }

    private void c() {
        new Builder(this).setTitle(2131362628).setMessage(2131361844).setPositiveButton(2131362419, new xz(this)).setNegativeButton(2131362041, null).create().show();
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        setTitle(2131362628);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (bundle == null) {
            this.b = new VideoEditorFragment();
            supportFragmentManager.beginTransaction().add(2131951922, this.b).commit();
            return;
        }
        this.b = (VideoEditorFragment) supportFragmentManager.findFragmentById(2131951922);
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017200);
        return true;
    }

    public boolean a(ac acVar) {
        Intent intent = new Intent();
        VideoEditorFragment videoEditorFragment = this.b;
        if (acVar.a() != 2131951937) {
            return super.a(acVar);
        }
        intent.putExtra("editable_video", videoEditorFragment.h());
        setResult(-1, intent);
        finish();
        return true;
    }

    protected void onResume() {
        super.onResume();
        if (!lf.a().a((Context) this, a)) {
            startActivityForResult(new b(getString(2131363523), this, a).f("video_trimmer:::video").a(), 1);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return;
        }
        if (i2 != -1 || !PermissionRequestActivity.a(intent)) {
            setResult(1);
            finish();
        }
    }
}
