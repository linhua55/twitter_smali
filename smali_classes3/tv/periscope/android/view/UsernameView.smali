.class public Ltv/periscope/android/view/UsernameView;
.super Ltv/periscope/android/view/PsTextView;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 37
    if-eqz p2, :cond_0

    sget v0, Ltv/periscope/android/library/k;->ps__ic_bluebird_user:I

    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    sget v0, Ltv/periscope/android/library/k;->ps__ic_verified:I

    :goto_1
    invoke-virtual {p0, v2, v1, v0, v1}, Ltv/periscope/android/view/UsernameView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 42
    invoke-virtual {p0}, Ltv/periscope/android/view/UsernameView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/j;->ps__drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/UsernameView;->setCompoundDrawablePadding(I)V

    .line 43
    return-void

    :cond_0
    move v2, v1

    .line 37
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/UsernameView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/view/UsernameView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Ltv/periscope/android/util/u;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/UsernameView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
