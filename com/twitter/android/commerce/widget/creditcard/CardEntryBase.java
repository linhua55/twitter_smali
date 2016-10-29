package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

/* compiled from: Twttr */
public abstract class CardEntryBase<T> extends EditText implements TextWatcher, OnClickListener, OnKeyListener {
    protected f a;
    protected String b;
    protected Context c;
    private int d;
    private boolean e;

    protected abstract T getDataImpl();

    public abstract String getHelperText();

    protected abstract int getHintResource();

    public T getData() {
        if (d()) {
            return getDataImpl();
        }
        return null;
    }

    public CardEntryBase(Context context) {
        super(context);
        this.e = false;
        this.c = context;
        b();
        a();
    }

    public CardEntryBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.c = context;
        b();
        a();
    }

    public CardEntryBase(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.c = context;
        b();
        a();
    }

    public void b() {
        if (getHintResource() != 0) {
            setHint(getHintResource());
        }
    }

    public void a() {
        setGravity(17);
        setImeOptions(268435456);
        setBackgroundColor(17170445);
        setFocusableInTouchMode(false);
        setInputType(2);
        addTextChangedListener(this);
        setOnKeyListener(this);
        setOnClickListener(this);
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.b = charSequence.toString();
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (i == 0 && i2 == 1 && charSequence.length() == 0 && this.a != null) {
            this.a.setFocusToPrevious(this);
        }
    }

    public boolean requestRectangleOnScreen(Rect rect) {
        return false;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.actionLabel = null;
        editorInfo.inputType = 0;
        editorInfo.imeOptions = 1;
        return new a(this, super.onCreateInputConnection(editorInfo), false);
    }

    public int getLastError() {
        return this.d;
    }

    protected void setLastError(int i) {
        this.d = i;
    }

    public void c() {
        if (getText().toString().length() == 0 && this.a != null) {
            this.a.setFocusToPrevious(this);
        }
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (!(keyEvent.getAction() == 0 || i == 57 || i == 58 || i == 59 || i == 60 || i != 67 || getText().toString().length() != 0 || this.a == null)) {
            this.a.setFocusToPrevious(this);
        }
        return false;
    }

    public void onClick(View view) {
        setFocusableInTouchMode(true);
        requestFocus();
        ((InputMethodManager) this.c.getSystemService("input_method")).showSoftInput(this, 1);
        setSelection(getText().toString().length());
        if (getDelegate() != null) {
            getDelegate().setFocus(this);
        }
        setFocusableInTouchMode(false);
    }

    public f getDelegate() {
        return this.a;
    }

    public void setDelegate(f fVar) {
        this.a = fVar;
    }

    public boolean d() {
        return this.e;
    }

    public void setValid(boolean z) {
        this.e = z;
    }
}
