.class public Ltv/periscope/android/view/PsButton;
.super Landroid/widget/Button;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/view/PsButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Ltv/periscope/android/util/v;->a(Landroid/widget/TextView;)V

    .line 29
    invoke-static {p1, p2, p0}, Ltv/periscope/android/view/as;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V

    .line 30
    return-void
.end method
