package com.twitter.android.nativecards.pollcompose;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v4.view.InputDeviceCompat;
import com.twitter.android.media.camera.CameraActivity;
import com.twitter.android.media.imageeditor.EditImageFragment;
import com.twitter.android.media.imageeditor.z;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.media.model.MediaFile;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.collection.n;
import defpackage.cym;
import defpackage.dbd;
import java.util.List;
import rx.o;

/* compiled from: Twttr */
public class AddImagePollActivity extends TwitterFragmentActivity implements z, j, m {
    private List<DialogChoiceOption> a;

    /* compiled from: Twttr */
    enum DialogChoiceOption {
        TAKE_PHOTO(2131361873),
        CHOOSE_PHOTO(2131361871),
        REMOVE_PHOTO(2131361872);
        
        @StringRes
        final int mStringResourceId;

        private DialogChoiceOption(int i) {
            this.mStringResourceId = i;
        }
    }

    /* compiled from: Twttr */
    public class ImagePickerSelectDialog extends PromptDialogFragment {
        public static ImagePickerSelectDialog a(CharSequence[] charSequenceArr) {
            return (ImagePickerSelectDialog) ((ec) new g(1).a(charSequenceArr)).i();
        }
    }

    public AddImagePollActivity() {
        this.a = n.g();
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        overridePendingTransition(0, 0);
        tVar.d(2130968789);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        n d = n.d();
        if (getIntent().getBooleanExtra("has_image", false)) {
            d.c(DialogChoiceOption.REMOVE_PHOTO);
        }
        if (com.twitter.android.util.j.a((Context) this)) {
            d.c(DialogChoiceOption.TAKE_PHOTO);
        }
        d.c(DialogChoiceOption.CHOOSE_PHOTO);
        this.a = (List) d.q();
        ImagePickerSelectDialog a = ImagePickerSelectDialog.a(a(this.a));
        a.a((j) this);
        a.a((m) this);
        a.a(getSupportFragmentManager());
    }

    private CharSequence[] a(List<DialogChoiceOption> list) {
        CharSequence[] charSequenceArr = new CharSequence[list.size()];
        for (int i = 0; i < list.size(); i++) {
            charSequenceArr[i] = getString(((DialogChoiceOption) list.get(i)).mStringResourceId);
        }
        return charSequenceArr;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i) {
            case InputDeviceCompat.SOURCE_DPAD /*513*/:
                if (i2 == -1 && PermissionRequestActivity.a(intent)) {
                    startActivityForResult(CameraActivity.a(this, 1, false, false), 515);
                } else {
                    finish();
                }
            case 514:
                if (i2 == -1) {
                    a(o.b(intent.getData()).g(new a(this)));
                } else {
                    finish();
                }
            case 515:
                if (i2 == -1) {
                    a(o.b((MediaFile) intent.getParcelableExtra("media_file")));
                } else {
                    finish();
                }
            default:
                finish();
        }
    }

    void a(EditableImage editableImage) {
        EditImageFragment editImageFragment = (EditImageFragment) getSupportFragmentManager().findFragmentByTag("image_edit");
        if (editImageFragment == null) {
            editImageFragment = new com.twitter.android.media.imageeditor.n().a(getIntent().getStringExtra("composition")).a(0).b(2).a(true).a(1.0f).a();
            getSupportFragmentManager().beginTransaction().add(2131951923, editImageFragment, "image_edit").commit();
        }
        editImageFragment.a(new b(this, editableImage));
        editImageFragment.a((z) this);
    }

    private void a(o<MediaFile> oVar) {
        oVar.g(new d(this)).b(dbd.d()).a(cym.a()).c(new c(this));
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public void a(DialogInterface dialogInterface, int i) {
        finish();
    }

    public void a(android.content.DialogInterface r3, int r4, int r5) {
        /* JADX: method processing error */
/*
        Error: java.util.ConcurrentModificationException
	at java.util.ArrayList$Itr.checkForComodification(ArrayList.java:859)
	at java.util.ArrayList$Itr.next(ArrayList.java:831)
	at jadx.core.dex.visitors.ReSugarCode.getEnumMap(ReSugarCode.java:171)
	at jadx.core.dex.visitors.ReSugarCode.processEnumSwitch(ReSugarCode.java:123)
	at jadx.core.dex.visitors.ReSugarCode.process(ReSugarCode.java:68)
	at jadx.core.dex.visitors.ReSugarCode.visit(ReSugarCode.java:52)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r2 = this;
        r0 = r2.a;
        r0 = r0.get(r5);
        r0 = (com.twitter.android.nativecards.pollcompose.AddImagePollActivity.DialogChoiceOption) r0;
        r1 = com.twitter.android.nativecards.pollcompose.e.a;
        r0 = r0.ordinal();
        r0 = r1[r0];
        switch(r0) {
            case 1: goto L_0x0017;
            case 2: goto L_0x0025;
            case 3: goto L_0x002b;
            default: goto L_0x0013;
        };
    L_0x0013:
        r2.finish();
    L_0x0016:
        return;
    L_0x0017:
        r0 = 1;
        r1 = ":composition:poll_compose:twitter_camera";
        r0 = com.twitter.android.media.camera.z.a(r2, r0, r1);
        r1 = 513; // 0x201 float:7.19E-43 double:2.535E-321;
        r2.startActivityForResult(r0, r1);
        goto L_0x0016;
    L_0x0025:
        r0 = 514; // 0x202 float:7.2E-43 double:2.54E-321;
        com.twitter.library.media.util.z.a(r2, r0);
        goto L_0x0016;
    L_0x002b:
        r0 = -1;
        r1 = 0;
        r2.setResult(r0, r1);
        r2.finish();
        goto L_0x0016;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.nativecards.pollcompose.AddImagePollActivity.a(android.content.DialogInterface, int, int):void");
    }

    public void a(EditableImage editableImage, String str) {
        Intent intent = new Intent();
        intent.putExtra("extra_editable_image", editableImage);
        setResult(-1, intent);
        finish();
    }

    public void m() {
        setResult(0);
        finish();
    }

    public void a(EditableMedia editableMedia, EditableMedia editableMedia2) {
    }
}
