package com.twitter.android.widget;

import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class fa implements OnTouchListener {
    private final TextView a;
    private final fb b;
    private int c;

    public fa(TextView textView, fb fbVar) {
        this.c = -1;
        this.a = textView;
        this.b = fbVar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = true;
        boolean z2 = false;
        if (!(this.a == null || this.b == null)) {
            int action = motionEvent.getAction() & NalUnitUtil.EXTENDED_SAR;
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            int paddingLeft = this.a.getPaddingLeft();
            int paddingRight = this.a.getPaddingRight();
            int compoundPaddingLeft = this.a.getCompoundPaddingLeft();
            int compoundPaddingRight = this.a.getCompoundPaddingRight();
            int width = this.a.getWidth();
            int height = this.a.getHeight();
            switch (action) {
                case Util.TYPE_DASH /*0*/:
                    int x = (int) motionEvent.getX();
                    for (action = 0; action < compoundDrawables.length; action++) {
                        Drawable drawable = compoundDrawables[action];
                        if (drawable != null) {
                            if (action != 0) {
                                if (action == 2 && x >= ((width - paddingRight) - drawable.getBounds().width()) - compoundPaddingRight) {
                                    this.c = 2;
                                    break;
                                }
                            } else if (x <= (drawable.getBounds().width() + paddingLeft) + compoundPaddingLeft) {
                                this.c = 0;
                                break;
                            }
                        }
                    }
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (this.c != -1) {
                        int x2 = (int) motionEvent.getX();
                        action = (int) motionEvent.getY();
                        Drawable drawable2 = compoundDrawables[this.c];
                        boolean z3 = action < height && action > 0;
                        switch (this.c) {
                            case Util.TYPE_DASH /*0*/:
                                if (x2 > (drawable2.getBounds().width() + paddingLeft) + compoundPaddingLeft) {
                                    z = false;
                                    break;
                                }
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                if (x2 < ((width - paddingRight) - drawable2.getBounds().width()) - compoundPaddingRight) {
                                    z = false;
                                    break;
                                }
                                break;
                            default:
                                z = false;
                                break;
                        }
                        if (z3 && r2) {
                            z2 = this.b.a(this.c);
                        }
                        this.c = -1;
                        break;
                    }
                    break;
                case Util.TYPE_OTHER /*3*/:
                    this.c = -1;
                    break;
                default:
                    break;
            }
        }
        return z2;
    }
}
