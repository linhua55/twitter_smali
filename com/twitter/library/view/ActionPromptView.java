package com.twitter.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import bcx;
import com.twitter.model.timeline.s;
import com.twitter.ui.widget.PromptView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.object.ObjectUtils;
import defpackage.bct;
import defpackage.bdc;
import defpackage.bdd;

/* compiled from: Twttr */
public class ActionPromptView extends PromptView {
    private s a;
    private a d;

    public ActionPromptView(Context context) {
        this(context, null);
    }

    public ActionPromptView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.actionPromptViewStyle);
    }

    public ActionPromptView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ActionPromptView, i, 0);
        a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public ActionPromptView(Context context, int i) {
        super(context, null);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, bdd.ActionPromptView);
        a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public s getActionPrompt() {
        return this.a;
    }

    public TwitterButton getActionPromptButton() {
        return getPromptButton();
    }

    public void setActionPrompt(s sVar) {
        if (!ObjectUtils.a(sVar, this.a)) {
            this.a = sVar;
            setTitle(sVar.b);
            setButtonText(bdc.action_prompt_cancel_button_text);
            setVisibility(0);
            requestLayout();
        }
    }

    public void c() {
        this.a = null;
        setVisibility(8);
    }

    public int getLayoutHeight() {
        int i = getLayoutParams().height;
        if (i < 0) {
            return getMeasuredHeight();
        }
        return i;
    }

    public void a(int i) {
        this.d.a(i);
    }

    private void a(TypedArray typedArray) {
        this.d = new a(typedArray.getColor(bdd.ActionPromptView_actionPromptBackgroundColor, 0), typedArray.getDimensionPixelOffset(bdd.ActionPromptView_actionPromptPointerHeight, 0), typedArray.getDimensionPixelOffset(bdd.ActionPromptView_actionPromptPointerRadius, 0));
        findViewById(bcx.prompt_inner_container).setBackground(this.d);
        setOnClickListener(null);
    }

    protected void a() {
        f();
    }
}
