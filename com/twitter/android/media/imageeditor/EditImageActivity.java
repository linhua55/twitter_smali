package com.twitter.android.media.imageeditor;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.android.composer.ComposerType;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import java.util.ArrayList;

/* compiled from: Twttr */
public class EditImageActivity extends TwitterFragmentActivity implements z {
    private EditImageFragment a;
    private ArrayList<EditableImage> b;

    public static Intent a(Context context, ArrayList<EditableImage> arrayList, ComposerType composerType, String str) {
        return new Intent(context, EditImageActivity.class).putExtra("editable_image", arrayList).putExtra("composer_type", composerType).putExtra("scribe_section", str);
    }

    public static Intent a(Context context, ArrayList<EditableImage> arrayList, String str, float f, int i, boolean z) {
        return new Intent(context, EditImageActivity.class).putExtra("editable_image", arrayList).putExtra("scribe_section", str).putExtra("crop_aspect_ratio", f).putExtra("editor_type", i).putExtra("lock_editor", z);
    }

    public static EditableImage a(Intent intent) {
        return (EditableImage) intent.getParcelableExtra("editable_image");
    }

    public static String b(Intent intent) {
        return intent.getStringExtra("filter_effect");
    }

    public t a(Bundle bundle, t tVar) {
        tVar.a(false);
        tVar.d(2130968789);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        this.b = getIntent().getParcelableArrayListExtra("editable_image");
        this.a = (EditImageFragment) getSupportFragmentManager().findFragmentByTag("image_edit");
        if (this.a == null) {
            Fragment a = new n().a(getIntent().getStringExtra("scribe_section")).a(0).b(getIntent().getIntExtra("editor_type", 1)).a((ComposerType) getIntent().getParcelableExtra("composer_type")).a(getIntent().getFloatExtra("crop_aspect_ratio", 0.0f)).a(getIntent().getBooleanExtra("lock_editor", false)).a();
            getSupportFragmentManager().beginTransaction().add(2131951923, a, "image_edit").commit();
            this.a = a;
        }
        this.a.a(new a(this));
        this.a.a((z) this);
    }

    public void onBackPressed() {
        this.a.f();
    }

    public void a(EditableImage editableImage, String str) {
        Intent intent = new Intent();
        intent.putExtra("editable_image", editableImage);
        if (str != null) {
            intent.putExtra("filter_effect", str);
        }
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
