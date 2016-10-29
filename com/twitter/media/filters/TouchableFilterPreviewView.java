package com.twitter.media.filters;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* compiled from: Twttr */
public class TouchableFilterPreviewView extends FilterPreviewView {
    private int b;
    private int[] c;
    private float d;
    private float e;
    private float f;
    private float g;
    private boolean h;
    private boolean i;
    private boolean j;

    public TouchableFilterPreviewView(Context context) {
        this(context, null);
    }

    public TouchableFilterPreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(Filters filters, a aVar) {
        super.a(filters, aVar);
        this.c = filters.a();
    }

    private float a(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 1) {
            return motionEvent.getX();
        }
        return (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
    }

    private float b(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 1) {
            return motionEvent.getY();
        }
        return (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = -1;
        float f = 1.0f;
        if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5) {
            this.d = a(motionEvent);
            this.e = b(motionEvent);
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = false;
            this.i = false;
            this.j = false;
            return true;
        } else if (this.j) {
            return false;
        } else {
            float a = a(motionEvent);
            float b = b(motionEvent);
            this.f += this.d - a;
            this.g += this.e - b;
            if (this.h || this.i) {
                if (this.h) {
                    if (motionEvent.getPointerCount() == 1) {
                        float d = this.a.d() - ((b - this.e) * 0.003f);
                        if (d < 0.3f) {
                            f = 0.3f;
                        } else if (d <= 1.0f) {
                            f = d;
                        }
                        this.a.c(f);
                    } else if (motionEvent.getPointerCount() == 2) {
                        float c = this.a.c() - ((b - this.e) * 0.003f);
                        if (c < 0.0f) {
                            f = 0.0f;
                        } else if (c <= 1.0f) {
                            f = c;
                        }
                        this.a.b(f);
                    }
                } else if (this.i) {
                    int i2;
                    int i3 = this.b;
                    if (this.f >= 0.0f) {
                        if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 6) {
                            if (((double) (this.f / ((float) this.a.b()))) > 0.5d) {
                                this.b = (this.b + 1) % this.c.length;
                                i2 = this.b;
                                a(this.b);
                                i3 = i2;
                                i2 = -1;
                            }
                            i2 = -1;
                        } else {
                            i3 = (this.b + 1) % this.c.length;
                            i2 = this.b;
                            f = 1.0f - (this.f / ((float) this.a.b()));
                        }
                    } else if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 6) {
                        if (((double) Math.abs(this.f / ((float) this.a.b()))) > 0.5d) {
                            this.b--;
                            if (this.b < 0) {
                                this.b += this.c.length;
                            }
                            i2 = this.b;
                            a(this.b);
                            i3 = i2;
                            i2 = -1;
                        }
                        i2 = -1;
                    } else {
                        i3 = this.b;
                        int length = (this.b - 1) % this.c.length;
                        if (length < 0) {
                            length += this.c.length;
                        }
                        i2 = length;
                        f = Math.abs(this.f / ((float) this.a.b()));
                    }
                    this.a.a(i3 == -1 ? -1 : this.c[i3]);
                    b bVar = this.a;
                    if (i2 != -1) {
                        i = this.c[i2];
                    }
                    bVar.b(i);
                    this.a.a(f);
                    b();
                }
            } else if (Math.abs(this.f) > Math.abs(this.g) && Math.abs(this.f) > 7.0f) {
                this.i = true;
            } else if (Math.abs(this.g) > Math.abs(this.f) && Math.abs(this.g) > 7.0f) {
                this.h = true;
            }
            this.d = a;
            this.e = b;
            return true;
        }
    }
}
