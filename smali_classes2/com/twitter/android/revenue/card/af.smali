.class public Lcom/twitter/android/revenue/card/af;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/android/revenue/card/z;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/revenue/card/z;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
