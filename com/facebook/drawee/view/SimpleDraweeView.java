package com.facebook.drawee.view;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.drawee.generic.a;
import defpackage.bx;
import defpackage.bz;
import dn;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class SimpleDraweeView extends GenericDraweeView {
    private static bz<? extends dn> a;
    private dn b;

    public static void a(bz<? extends dn> bzVar) {
        a = bzVar;
    }

    public SimpleDraweeView(Context context, a aVar) {
        super(context, aVar);
        a();
    }

    public SimpleDraweeView(Context context) {
        super(context);
        a();
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        if (!isInEditMode()) {
            bx.a(a, (Object) "SimpleDraweeView was not initialized!");
            this.b = (dn) a.a();
        }
    }

    protected dn getControllerBuilder() {
        return this.b;
    }

    public void setImageURI(Uri uri) {
        a(uri, null);
    }

    public void a(Uri uri, @Nullable Object obj) {
        setController(this.b.d(obj).b(uri).b(getController()).m());
    }
}
