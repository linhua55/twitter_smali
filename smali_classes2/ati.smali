.class public Lati;
.super Lcom/twitter/library/widget/renderablecontent/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/widget/renderablecontent/a",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        "Lcom/twitter/library/widget/renderablecontent/c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/library/media/widget/aa;

.field private final b:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/media/widget/aa;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 6

    .prologue
    .line 33
    sget-object v3, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/widget/renderablecontent/a;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 34
    iput-object p2, p0, Lati;->b:Lcom/twitter/model/core/Tweet;

    .line 35
    iput-object p3, p0, Lati;->a:Lcom/twitter/library/media/widget/aa;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p3, p5

    invoke-direct {v0, p2, p3, p4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected a(Landroid/app/Activity;)Lcom/twitter/library/widget/renderablecontent/c;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lati;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lasx;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-direct {v0, p1, v1}, Lasx;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Latg;

    invoke-direct {v0, p1}, Latg;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Latj;

    iget-object v1, p0, Lati;->b:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Lati;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p0, Lati;->a:Lcom/twitter/library/media/widget/aa;

    invoke-direct {v0, v1, v2, v3}, Latj;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/media/widget/aa;)V

    return-object v0
.end method
