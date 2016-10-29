package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Looper;
import android.text.Html;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Filter.FilterListener;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.MultiAutoCompleteTextView.Tokenizer;
import android.widget.PopupWindow;
import bct;
import bdd;
import com.twitter.android.mx;
import com.twitter.ui.widget.TwitterEditText;

@Deprecated
/* compiled from: Twttr */
public class PopupEditText extends TwitterEditText implements OnClickListener, OnItemClickListener, FilterListener {
    public static final Tokenizer a;
    public static final Filterable b;
    boolean c;
    boolean d;
    private final PopupWindow e;
    private final DropDownListView f;
    private final af g;
    private final int h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final int l;
    private final int m;
    private OnClickListener n;
    private ag o;
    private ListAdapter p;
    private Tokenizer q;
    private Filterable r;
    private DataSetObserver s;
    private long t;
    private int u;
    private final boolean v;

    static {
        a = new ab();
        b = new ac();
    }

    public PopupEditText(Context context) {
        this(context, null);
    }

    public PopupEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.popupEditTextStyle);
    }

    public PopupEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = false;
        this.d = false;
        this.u = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.PopupEditText, i, 0);
        this.l = obtainStyledAttributes.getDimensionPixelOffset(bdd.PopupEditText_popupMenuXOffset, 0);
        this.m = obtainStyledAttributes.getDimensionPixelOffset(bdd.PopupEditText_popupMenuYOffset, 0);
        this.h = obtainStyledAttributes.getInteger(bdd.PopupEditText_threshold, 1);
        this.i = obtainStyledAttributes.getBoolean(bdd.PopupEditText_showPopupOnInitialFocus, false);
        this.k = obtainStyledAttributes.getBoolean(bdd.PopupEditText_showFullScreen, false);
        this.j = obtainStyledAttributes.getBoolean(bdd.PopupEditText_showAsDropdown, true);
        this.v = obtainStyledAttributes.getBoolean(bdd.PopupEditText_stripHtml, false);
        DropDownListView dropDownListView = new DropDownListView(context, null, bct.popupEditListStyle);
        dropDownListView.setOnItemClickListener(this);
        this.f = dropDownListView;
        PopupWindow popupWindow = new PopupWindow(context, attributeSet, 16843519);
        popupWindow.setSoftInputMode(16);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setContentView(dropDownListView);
        this.e = popupWindow;
        super.setOnClickListener(this);
        this.g = new af(Looper.getMainLooper(), this);
        obtainStyledAttributes.recycle();
    }

    public void a(Tokenizer tokenizer, Filterable filterable, long j) {
        if (tokenizer == null) {
            throw new IllegalArgumentException("tokenizer cannot be null.");
        } else if (this.p == null) {
            throw new IllegalStateException("setAdapter must be called first with a non-null adapter");
        } else {
            this.r = filterable;
            this.q = tokenizer;
            this.t = j;
            this.g.a(filterable);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r14) {
        /*
        r13 = this;
        r12 = 2;
        r7 = -1;
        r2 = 1;
        r1 = 0;
        r0 = r14.getAction();
        r0 = r0 & 255;
        switch(r0) {
            case 0: goto L_0x0018;
            case 1: goto L_0x0066;
            case 2: goto L_0x000d;
            case 3: goto L_0x00d6;
            default: goto L_0x000d;
        };
    L_0x000d:
        r0 = r1;
    L_0x000e:
        if (r0 != 0) goto L_0x0016;
    L_0x0010:
        r0 = super.onTouchEvent(r14);
        if (r0 == 0) goto L_0x0017;
    L_0x0016:
        r1 = r2;
    L_0x0017:
        return r1;
    L_0x0018:
        r3 = r13.getCompoundDrawables();
        r0 = r14.getX();
        r4 = (int) r0;
        r5 = r13.getPaddingLeft();
        r6 = r13.getPaddingRight();
        r7 = r13.getCompoundPaddingLeft();
        r8 = r13.getCompoundPaddingRight();
        r9 = r13.getWidth();
        r0 = r1;
    L_0x0036:
        r10 = r3.length;
        if (r0 >= r10) goto L_0x004d;
    L_0x0039:
        r10 = r3[r0];
        if (r10 == 0) goto L_0x0063;
    L_0x003d:
        if (r0 != 0) goto L_0x004f;
    L_0x003f:
        r10 = r10.getBounds();
        r10 = r10.width();
        r10 = r10 + r5;
        r10 = r10 + r7;
        if (r4 > r10) goto L_0x0063;
    L_0x004b:
        r13.u = r1;
    L_0x004d:
        r0 = r1;
        goto L_0x000e;
    L_0x004f:
        if (r0 != r12) goto L_0x0063;
    L_0x0051:
        r11 = r9 - r6;
        r10 = r10.getBounds();
        r10 = r10.width();
        r10 = r11 - r10;
        r10 = r10 - r8;
        if (r4 < r10) goto L_0x0063;
    L_0x0060:
        r13.u = r12;
        goto L_0x004d;
    L_0x0063:
        r0 = r0 + 1;
        goto L_0x0036;
    L_0x0066:
        r0 = r13.u;
        if (r0 == r7) goto L_0x000d;
    L_0x006a:
        r0 = r14.getX();
        r3 = (int) r0;
        r0 = r14.getY();
        r0 = (int) r0;
        r4 = r13.getCompoundDrawables();
        r5 = r13.u;
        r4 = r4[r5];
        r5 = r13.getHeight();
        if (r0 >= r5) goto L_0x009c;
    L_0x0082:
        if (r0 <= 0) goto L_0x009c;
    L_0x0084:
        r0 = r2;
    L_0x0085:
        r5 = r13.u;
        switch(r5) {
            case 0: goto L_0x009e;
            case 1: goto L_0x008a;
            case 2: goto L_0x00b6;
            default: goto L_0x008a;
        };
    L_0x008a:
        r3 = r1;
    L_0x008b:
        if (r0 == 0) goto L_0x00d4;
    L_0x008d:
        if (r3 == 0) goto L_0x00d4;
    L_0x008f:
        r0 = r13.u;
        r0 = r13.a(r0);
        if (r0 == 0) goto L_0x00d4;
    L_0x0097:
        r0 = r2;
    L_0x0098:
        r13.u = r7;
        goto L_0x000e;
    L_0x009c:
        r0 = r1;
        goto L_0x0085;
    L_0x009e:
        r5 = r13.getPaddingLeft();
        r4 = r4.getBounds();
        r4 = r4.width();
        r4 = r4 + r5;
        r5 = r13.getCompoundPaddingLeft();
        r4 = r4 + r5;
        if (r3 > r4) goto L_0x00b4;
    L_0x00b2:
        r3 = r2;
        goto L_0x008b;
    L_0x00b4:
        r3 = r1;
        goto L_0x008b;
    L_0x00b6:
        r5 = r13.getWidth();
        r6 = r13.getPaddingRight();
        r5 = r5 - r6;
        r4 = r4.getBounds();
        r4 = r4.width();
        r4 = r5 - r4;
        r5 = r13.getCompoundPaddingRight();
        r4 = r4 - r5;
        if (r3 < r4) goto L_0x00d2;
    L_0x00d0:
        r3 = r2;
        goto L_0x008b;
    L_0x00d2:
        r3 = r1;
        goto L_0x008b;
    L_0x00d4:
        r0 = r1;
        goto L_0x0098;
    L_0x00d6:
        r13.u = r7;
        r0 = r1;
        goto L_0x000e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.widget.PopupEditText.onTouchEvent(android.view.MotionEvent):boolean");
    }

    protected boolean a(int i) {
        return false;
    }

    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        a(true);
    }

    public void a(boolean z) {
        if (this.q != null && this.r != null) {
            int selectionEnd = getSelectionEnd();
            if (selectionEnd != -1) {
                CharSequence text = getText();
                int findTokenStart = this.q.findTokenStart(text, selectionEnd);
                if (selectionEnd - findTokenStart < this.h) {
                    b();
                    return;
                }
                af afVar = this.g;
                afVar.removeMessages(0);
                afVar.sendMessageDelayed(afVar.obtainMessage(0, z ? 1 : 0, 0, text.subSequence(findTokenStart, selectionEnd)), this.t);
            }
        }
    }

    public void onFilterComplete(int i) {
        int selectionEnd = getSelectionEnd();
        if (selectionEnd - this.q.findTokenStart(getText(), selectionEnd) >= this.h) {
            a();
        } else {
            b();
        }
    }

    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (d()) {
            a();
        }
        return frame;
    }

    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            b();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            b();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.i && hasFocus() && !this.c) {
            a();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.n = onClickListener;
    }

    public void a() {
        if (getWindowVisibility() != 8) {
            if (this.p.getCount() == 0) {
                b();
                this.d = true;
                return;
            }
            int width = this.k ? getRootView().getWidth() : getWidth();
            PopupWindow popupWindow = this.e;
            if (!popupWindow.isShowing()) {
                popupWindow.setWidth(width);
                popupWindow.setWindowLayoutMode(0, -2);
                popupWindow.setInputMethodMode(1);
                if (this.j) {
                    popupWindow.showAsDropDown(this, this.l, this.m);
                } else {
                    popupWindow.setWindowLayoutMode(0, 0);
                    Rect rect = new Rect();
                    getWindowVisibleDisplayFrame(rect);
                    int[] iArr = new int[2];
                    getLocationInWindow(iArr);
                    popupWindow.setHeight(iArr[1] - rect.top);
                    popupWindow.showAsDropDown(this, this.l, this.m);
                }
                if (this.o != null) {
                    this.o.w();
                }
            } else if (this.j) {
                popupWindow.update(this, this.l, this.m, width, 0);
            }
            this.f.setSelectionAfterHeaderView();
            this.c = true;
        }
    }

    public void b() {
        this.e.dismiss();
        this.c = false;
        this.d = false;
        this.g.removeMessages(0);
    }

    public boolean c() {
        return this.c;
    }

    public void onClick(View view) {
        if (d()) {
            this.e.setInputMethodMode(1);
            a();
        }
        if (this.n != null) {
            this.n.onClick(view);
        }
    }

    public void setPopupEditTextListener(ag agVar) {
        this.o = agVar;
        this.g.a(agVar);
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.o != null) {
            this.o.a(i);
        }
        b();
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (this.p != null) {
            this.p.unregisterDataSetObserver(this.s);
        } else {
            this.s = new ae(this);
        }
        this.f.setAdapter(listAdapter);
        listAdapter.registerDataSetObserver(this.s);
        this.p = listAdapter;
    }

    public Adapter getAdapter() {
        return this.p;
    }

    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i == 4 && d()) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                getKeyDispatcherState().startTracking(keyEvent, this);
                return true;
            } else if (keyEvent.getAction() == 1) {
                getKeyDispatcherState().handleUpEvent(keyEvent);
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    b();
                    return true;
                }
            }
        }
        return super.onKeyPreIme(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        DropDownListView dropDownListView = this.f;
        int selectedItemPosition = dropDownListView.getSelectedItemPosition();
        if (!d() || selectedItemPosition < 0) {
            return super.onKeyUp(i, keyEvent);
        }
        return dropDownListView.onKeyUp(i, keyEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (d()) {
            DropDownListView dropDownListView = this.f;
            if (i != 62 && (dropDownListView.getSelectedItemPosition() >= 0 || !(i == 66 || i == 23))) {
                int count;
                int selectedItemPosition = dropDownListView.getSelectedItemPosition();
                PopupWindow popupWindow = this.e;
                boolean z = !popupWindow.isAboveAnchor();
                ListAdapter listAdapter = this.p;
                int i2;
                if (listAdapter != null) {
                    i2 = 0;
                    count = listAdapter.getCount();
                } else {
                    count = Integer.MIN_VALUE;
                    i2 = Integer.MAX_VALUE;
                }
                if (dropDownListView.onKeyDown(i, keyEvent)) {
                    popupWindow.setInputMethodMode(2);
                    dropDownListView.requestFocusFromTouch();
                    a();
                    switch (i) {
                        case mx.TwitterButton_iconLayout /*19*/:
                        case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                        case mx.TweetView_mediaDivider /*23*/:
                        case mx.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                            return true;
                    }
                } else if (z && i == 20) {
                    if (selectedItemPosition == count) {
                        return true;
                    }
                } else if (!z && i == 19 && selectedItemPosition == r3) {
                    return true;
                }
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean d() {
        return this.e.isShowing();
    }

    protected void onSelectionChanged(int i, int i2) {
        if (this.o != null) {
            this.o.a(i, i2);
        }
    }

    public boolean onTextContextMenuItem(int i) {
        boolean onTextContextMenuItem = super.onTextContextMenuItem(i);
        if (this.v) {
            switch (i) {
                case 16908322:
                    setText(Html.fromHtml(getText().toString()));
                    break;
            }
        }
        return onTextContextMenuItem;
    }
}
