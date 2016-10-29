.class public Lcom/twitter/android/card/aj;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 6

    .prologue
    .line 24
    .line 25
    invoke-static {p1, p2}, Labb;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Labb;

    move-result-object v3

    .line 26
    new-instance v5, Laax;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "745291183405076480:live_video"

    invoke-direct {v5, v0, v1}, Laax;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/twitter/android/card/ag;

    new-instance v4, Labf;

    invoke-direct {v4}, Labf;-><init>()V

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/card/ag;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Labb;Labf;Laax;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
