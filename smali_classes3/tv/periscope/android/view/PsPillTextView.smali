.class public Ltv/periscope/android/view/PsPillTextView;
.super Ltv/periscope/android/view/PsTextView;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltv/periscope/android/view/PsPillTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/view/PsPillTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/view/PsPillTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Ltv/periscope/android/view/PsPillTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    sget v1, Ltv/periscope/android/library/k;->ps__bg_featured:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/view/PsPillTextView;->b:Landroid/graphics/drawable/Drawable;

    .line 46
    sget v1, Ltv/periscope/android/library/j;->ps__pill_label_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 47
    sget v2, Ltv/periscope/android/library/j;->ps__label_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 48
    invoke-virtual {p0, v1, v2, v1, v2}, Ltv/periscope/android/view/PsPillTextView;->setPadding(IIII)V

    .line 50
    sget-object v1, Ltv/periscope/android/library/q;->PsPillTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 51
    sget v2, Ltv/periscope/android/library/q;->PsPillTextView_ps__pillColor:I

    sget v3, Ltv/periscope/android/library/i;->ps__featured:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/view/PsPillTextView;->a:I

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    iget-object v0, p0, Ltv/periscope/android/view/PsPillTextView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PsPillTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget v0, p0, Ltv/periscope/android/view/PsPillTextView;->a:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PsPillTextView;->setPillColor(I)V

    .line 57
    return-void
.end method

.method public getPillColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 83
    iget v0, p0, Ltv/periscope/android/view/PsPillTextView;->a:I

    return v0
.end method

.method public getPillText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Ltv/periscope/android/view/PsPillTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPillColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Ltv/periscope/android/view/PsPillTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/i;->ps__featured:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 70
    :cond_0
    iput p1, p0, Ltv/periscope/android/view/PsPillTextView;->a:I

    .line 71
    iget-object v0, p0, Ltv/periscope/android/view/PsPillTextView;->b:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Ltv/periscope/android/view/PsPillTextView;->a:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    return-void
.end method

.method public setPillText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget v0, Ltv/periscope/android/library/p;->ps__featured:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/PsPillTextView;->setText(I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Ltv/periscope/android/view/PsPillTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
