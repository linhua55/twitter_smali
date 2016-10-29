package com.twitter.android.widget;

import android.content.res.Resources;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.util.collection.n;
import defpackage.bcu;
import java.util.List;

/* compiled from: Twttr */
public class bf {
    public static View[] a(int[] iArr, FragmentActivity fragmentActivity, MediaAttachmentController mediaAttachmentController, bc bcVar) {
        LayoutInflater layoutInflater = fragmentActivity.getLayoutInflater();
        Resources resources = fragmentActivity.getResources();
        n a = n.a(iArr.length);
        for (int i : iArr) {
            switch (i) {
                case Util.TYPE_DASH /*0*/:
                    a.c(a(layoutInflater, resources, bcVar));
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    a.c(b(layoutInflater, resources, bcVar));
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    a.c(a(layoutInflater, resources, mediaAttachmentController));
                    break;
                default:
                    break;
            }
        }
        List list = (List) a.q();
        return (View[]) list.toArray(new View[list.size()]);
    }

    private static View a(LayoutInflater layoutInflater, Resources resources, bc bcVar) {
        View inflate = layoutInflater.inflate(2130968841, null);
        inflate.setOnClickListener(new bg(bcVar));
        ImageView imageView = (ImageView) inflate.findViewById(2131951669);
        inflate.setBackgroundColor(resources.getColor(bcu.text_black));
        imageView.setImageResource(2130837788);
        return inflate;
    }

    private static View b(LayoutInflater layoutInflater, Resources resources, bc bcVar) {
        View inflate = layoutInflater.inflate(2130968843, null);
        inflate.setOnClickListener(new bh(bcVar));
        inflate.setBackgroundColor(resources.getColor(bcu.text_black));
        return inflate;
    }

    private static View a(LayoutInflater layoutInflater, Resources resources, MediaAttachmentController mediaAttachmentController) {
        View inflate = layoutInflater.inflate(2130968840, null);
        inflate.setOnClickListener(new bi(mediaAttachmentController));
        ImageView imageView = (ImageView) inflate.findViewById(2131951669);
        inflate.setBackgroundColor(resources.getColor(bcu.text_black));
        imageView.setImageResource(2130837785);
        return inflate;
    }
}
