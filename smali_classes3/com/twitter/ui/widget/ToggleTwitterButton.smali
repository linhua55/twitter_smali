.class public Lcom/twitter/ui/widget/ToggleTwitterButton;
.super Lcom/twitter/ui/widget/TwitterButton;
.source "Twttr"


# instance fields
.field private a:Z

.field private final g:I

.field private final h:I

.field private final i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Bitmap;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcxh;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/ui/widget/TwitterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v2, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    .line 37
    iput-boolean v2, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->n:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Lcxq;->ToggleTwitterButton:[I

    invoke-virtual {v0, p2, v3, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 52
    sget v0, Lcxq;->ToggleTwitterButton_styleIdOn:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->g:I

    .line 53
    sget v0, Lcxq;->ToggleTwitterButton_styleIdOff:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->h:I

    .line 54
    sget v0, Lcxq;->ToggleTwitterButton_shouldToggleOnClick:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->i:Z

    .line 56
    sget v0, Lcxq;->ToggleTwitterButton_toggleIconCanBeFlipped:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->m:Z

    .line 57
    sget v0, Lcxq;->ToggleTwitterButton_nodpiBaseToggleIconName:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->k:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->j:Z

    .line 59
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->j:Z

    if-eqz v0, :cond_0

    .line 60
    sget v0, Lcxq;->ToggleTwitterButton_toggleIconSize:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 61
    iget-object v4, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->k:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->l:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->j:Z

    .line 65
    :cond_0
    sget v0, Lcxq;->ToggleTwitterButton_initOn:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->g:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setButtonAppearance(I)V

    .line 68
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void

    :cond_1
    move v0, v2

    .line 58
    goto :goto_0

    :cond_2
    move v1, v2

    .line 62
    goto :goto_1

    .line 65
    :cond_3
    iget v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->h:I

    goto :goto_2
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->j:Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    if-eqz v0, :cond_3

    .line 90
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->l:Landroid/graphics/Bitmap;

    .line 95
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->n:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->n:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 97
    :cond_3
    invoke-super {p0}, Lcom/twitter/ui/widget/TwitterButton;->b()V

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->n:Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/ui/widget/TwitterButton;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setToggledOn(Z)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    return v0
.end method

.method getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->l:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 138
    check-cast p1, Lcom/twitter/ui/widget/ToggleTwitterButton$SavedState;

    .line 139
    invoke-virtual {p1}, Lcom/twitter/ui/widget/ToggleTwitterButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/twitter/ui/widget/TwitterButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 140
    iget-boolean v0, p1, Lcom/twitter/ui/widget/ToggleTwitterButton$SavedState;->a:Z

    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setToggledOn(Z)V

    .line 141
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/twitter/ui/widget/ToggleTwitterButton$SavedState;

    invoke-super {p0}, Lcom/twitter/ui/widget/TwitterButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    invoke-direct {v0, v1, v2}, Lcom/twitter/ui/widget/ToggleTwitterButton$SavedState;-><init>(Landroid/os/Parcelable;Z)V

    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->i:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->d()V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/twitter/ui/widget/TwitterButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setToggledOn(Z)V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    if-eq v0, p1, :cond_0

    .line 116
    iput-boolean p1, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    .line 117
    iget-boolean v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->g:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setButtonAppearance(I)V

    .line 118
    invoke-virtual {p0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->requestLayout()V

    .line 120
    :cond_0
    return-void

    .line 117
    :cond_1
    iget v0, p0, Lcom/twitter/ui/widget/ToggleTwitterButton;->h:I

    goto :goto_0
.end method
