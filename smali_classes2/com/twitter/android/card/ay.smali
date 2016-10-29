.class public Lcom/twitter/android/card/ay;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/card/av;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/android/card/av;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/card/av;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/av/card/l;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/twitter/android/av/card/l;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/av/card/l;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    return-object v0
.end method
