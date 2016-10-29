.class public Lcjp;
.super Lcjj;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcjj",
        "<",
        "Lcjr;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field private final c:Lcjo;

.field private final d:Lcom/twitter/library/media/widget/z;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcjo;Lcom/twitter/library/media/widget/z;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcjj;-><init>(Landroid/app/Activity;)V

    .line 36
    iput-object p2, p0, Lcjp;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 37
    iput-object p3, p0, Lcjp;->c:Lcjo;

    .line 38
    iput-object p4, p0, Lcjp;->d:Lcom/twitter/library/media/widget/z;

    .line 39
    return-void
.end method

.method static synthetic a(Lcjp;)Lcjo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcjp;->c:Lcjo;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/ui/image/BaseMediaImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/ui/image/BaseMediaImageView;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->d()V

    .line 96
    :cond_0
    return-void
.end method

.method public a(Lcjr;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 56
    iget-object v3, p1, Lcjr;->a:Lcom/twitter/model/core/Tweet;

    .line 57
    iget-object v0, v3, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-eqz v0, :cond_1

    move v0, v6

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcjp;->d()Landroid/app/Activity;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    if-nez v2, :cond_0

    .line 60
    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {p0, v1, p1, v3, v2}, Lcjp;->a(Landroid/app/Activity;Ljava/lang/Object;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    move-result-object v1

    iput-object v1, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    .line 61
    iget-object v1, p0, Lcjp;->c:Lcjo;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    new-instance v2, Lcjq;

    invoke-direct {v2, p0}, Lcjq;-><init>(Lcjp;)V

    invoke-virtual {v1, v2}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setOnMediaClickListener(Lcom/twitter/library/media/widget/aa;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    iget-object v2, p0, Lcjp;->d:Lcom/twitter/library/media/widget/z;

    iget v4, p1, Lcjr;->b:I

    iget v5, p1, Lcjr;->c:I

    iget-object v8, p0, Lcjp;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v9, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v8, v9, :cond_2

    :goto_1
    invoke-static/range {v0 .. v6}, Lcjk;->a(ZLcom/twitter/library/media/widget/AdaptiveTweetMediaView;Lcom/twitter/library/media/widget/z;Lcom/twitter/model/core/Tweet;IIZ)V

    .line 89
    return-void

    :cond_1
    move v0, v7

    .line 57
    goto :goto_0

    :cond_2
    move v6, v7

    .line 86
    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcjr;

    invoke-virtual {p0, p1}, Lcjp;->a(Lcjr;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcjp;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    return-object v0
.end method
