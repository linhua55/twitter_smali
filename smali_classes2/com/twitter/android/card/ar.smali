.class public Lcom/twitter/android/card/ar;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/card/aw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    .line 22
    invoke-static {}, Lcbl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/twitter/android/card/at;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/card/at;-><init>(Lcom/twitter/android/card/as;)V

    iput-object v0, p0, Lcom/twitter/android/card/ar;->a:Lcom/twitter/library/card/aw;

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/twitter/android/card/bm;

    invoke-direct {v0}, Lcom/twitter/android/card/bm;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/card/ar;->a:Lcom/twitter/library/card/aw;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/card/ar;->a:Lcom/twitter/library/card/aw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/library/card/aw;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/card/ar;->a:Lcom/twitter/library/card/aw;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/card/aw;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v0

    return v0
.end method
