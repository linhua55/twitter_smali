.class public Lcom/twitter/android/card/bm;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-string/jumbo v0, "summary_photo_image"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "player_image"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/card/bm;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 3

    .prologue
    .line 34
    invoke-static {p2}, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lcom/twitter/android/card/af;

    invoke-direct {v1}, Lcom/twitter/android/card/af;-><init>()V

    .line 36
    new-instance v0, Lcom/twitter/android/card/ae;

    invoke-direct {v0}, Lcom/twitter/android/card/ae;-><init>()V

    .line 42
    :goto_0
    sget-object v2, Lcom/twitter/android/card/bm;->a:Ljava/util/List;

    invoke-static {p3, v2}, Lcom/twitter/android/revenue/z;->a(Lclm;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    new-instance v2, Lcom/twitter/android/card/bl;

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/twitter/android/card/bl;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    move-object v0, v2

    .line 45
    :goto_1
    return-object v0

    .line 38
    :cond_0
    new-instance v1, Lcom/twitter/android/card/k;

    invoke-direct {v1, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/twitter/android/card/e;

    invoke-direct {v0, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Lcom/twitter/android/revenue/card/bf;

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/twitter/android/revenue/card/bf;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    move-object v0, v2

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/twitter/android/card/bm;->a:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/twitter/android/revenue/z;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
