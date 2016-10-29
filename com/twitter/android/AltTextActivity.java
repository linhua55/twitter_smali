package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.ScrollView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.util.x;
import com.twitter.media.model.ImageFile;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class AltTextActivity extends TwitterFragmentActivity {
    private ScrollView a;
    private MediaImageView b;
    private EditText c;

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        this.a = (ScrollView) findViewById(2131951949);
        this.b = (MediaImageView) findViewById(2131951951);
        this.c = (EditText) findViewById(2131951952);
        h(false);
        Intent intent = getIntent();
        EditableMedia editableMedia = (EditableImage) intent.getParcelableExtra("editable_image");
        if (editableMedia != null) {
            this.b.setAspectRatio(((ImageFile) editableMedia.k).e.e());
            this.b.a(x.a((Context) this, editableMedia));
        } else {
            this.b.setVisibility(8);
        }
        CharSequence stringExtra = intent.getStringExtra("alt_text");
        if (stringExtra != null) {
            this.c.setText(stringExtra);
        }
        this.c.getViewTreeObserver().addOnGlobalLayoutListener(new y(this));
        this.a.addOnLayoutChangeListener(new z(this));
        this.c.addTextChangedListener(new aa(this, getResources().getInteger(2131755020), getResources().getString(2131361890, new Object[]{Integer.valueOf(r0)})));
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968627);
        tVar.b(false);
        tVar.a(false);
        return tVar;
    }

    public boolean a(w wVar) {
        wVar.a(2132017174);
        return super.a(wVar);
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a != 2131953458 && a != k.home) {
            return super.a(acVar);
        }
        if (a == 2131953458) {
            setResult(-1, new Intent().putExtra("alt_text", this.c.getText().toString().trim()));
        } else {
            setResult(0);
        }
        finish();
        return true;
    }
}
