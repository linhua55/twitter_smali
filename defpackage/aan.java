package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.android.media.stickers.StickerMediaView;
import com.twitter.util.object.e;
import crl;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: aan */
class aan extends crl {
    private final StickerMediaView a;
    private float b;
    private float c;
    private boolean d;

    aan(StickerMediaView stickerMediaView, View view, cqp cqp) {
        super(view, cqp);
        this.a = stickerMediaView;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.a == null) {
            return super.onTouch(view, motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.d = true;
            this.b = motionEvent.getRawX();
            this.c = motionEvent.getRawY();
            return super.onTouch(view, motionEvent);
        }
        if (this.d) {
            switch (actionMasked) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (!((StickerMediaView) e.a(this.a)).a((int) this.b, (int) this.c)) {
                        this.a.a(false);
                        break;
                    }
                    return true;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (Math.abs(motionEvent.getRawX() - this.b) > ((float) this.e) || Math.abs(motionEvent.getRawY() - this.c) > ((float) this.e)) {
                        this.d = false;
                        break;
                    }
            }
        }
        return super.onTouch(view, motionEvent);
    }
}
