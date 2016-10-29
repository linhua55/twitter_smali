.class public Lcom/twitter/android/revenue/card/ap;
.super Lcom/twitter/android/revenue/card/aj;
.source "Twttr"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final g:[I


# instance fields
.field private final h:Z

.field private final i:Lcom/twitter/ui/widget/TwitterEditText;

.field private final j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010441

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/revenue/card/ap;->g:[I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/revenue/card/aj;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ap;->j:Ljava/lang/ref/WeakReference;

    .line 41
    iput-boolean p3, p0, Lcom/twitter/android/revenue/card/ap;->h:Z

    .line 43
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->a:Landroid/view/View;

    const v1, 0x7f13053a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    .line 44
    if-eqz p3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 46
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    const v1, 0x7f0a044e

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setVisibility(I)V

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ap;->q:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    .line 128
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public a(JLclj;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/revenue/card/aj;->a(JLclj;)V

    .line 95
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/ap;->h:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    const-string/jumbo v1, "promotion_zipcode"

    invoke-static {v1, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/revenue/card/aj;->a(JLclm;)V

    .line 56
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/ap;->h:Z

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "promotion_zipcode"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/ap;->p()V

    .line 120
    invoke-super {p0, p1, p2}, Lcom/twitter/android/revenue/card/aj;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 121
    return-void
.end method

.method protected a(Lclj;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/aj;->a(Lclj;)V

    .line 89
    const-string/jumbo v0, "promotion_zipcode"

    invoke-direct {p0}, Lcom/twitter/android/revenue/card/ap;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lclj;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 141
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    const v1, 0x7f0a044e

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    .line 143
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setExtraState([I)V

    .line 144
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->b:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->e()V

    .line 147
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->i:Lcom/twitter/ui/widget/TwitterEditText;

    sget-object v1, Lcom/twitter/android/revenue/card/ap;->g:[I

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setExtraState([I)V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ap;->b:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f040223

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/ap;->h:Z

    if-eqz v0, :cond_0

    .line 73
    const v0, 0x7f0a0812

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/revenue/card/aj;->i()I

    move-result v0

    goto :goto_0
.end method

.method protected j()Lcom/twitter/android/revenue/card/ah;
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/android/revenue/card/ah;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/ap;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/ap;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/android/revenue/card/ap;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/revenue/card/ap;->w:Lcom/twitter/library/card/CardContext;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/revenue/card/ah;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/revenue/card/ai;)V

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/ap;->p()V

    .line 113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
