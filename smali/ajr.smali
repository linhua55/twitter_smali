.class public Lajr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalk",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lajp;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lajp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lajr;->b:Landroid/content/res/Resources;

    .line 28
    iput-object p2, p0, Lajr;->a:Lajp;

    .line 29
    return-void
.end method

.method private a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lajr;->a:Lajp;

    iget-object v1, p1, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lajp;->a(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p1, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 51
    invoke-direct {p0, p3, p2}, Lajr;->b(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    iget-object v1, p1, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Lajr;->a:Lajp;

    iget-object v2, p1, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lajp;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 60
    :goto_1
    invoke-virtual {p1}, Lcom/twitter/model/moments/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lajr;->a:Lajp;

    invoke-virtual {v0}, Lajp;->a()V

    .line 65
    :goto_2
    iget-object v0, p0, Lajr;->a:Lajp;

    iget-boolean v1, p1, Lcom/twitter/model/moments/ad;->f:Z

    invoke-virtual {v0, v1}, Lajp;->a(Z)V

    .line 67
    iget-object v0, p1, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    invoke-static {v0}, Lcom/twitter/model/moments/a;->a(Lcom/twitter/model/moments/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p1, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    .line 69
    iget-object v1, p0, Lajr;->a:Lajp;

    invoke-virtual {v1, v0}, Lajp;->a(Lcom/twitter/model/moments/a;)V

    .line 73
    :goto_3
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lajr;->a:Lajp;

    iget-object v1, p1, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lajp;->b(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lajr;->a:Lajp;

    iget-object v1, p0, Lajr;->b:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Lcom/twitter/android/moments/data/ag;->a(Landroid/content/res/Resources;Lcom/twitter/model/moments/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajp;->c(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 71
    :cond_3
    iget-object v0, p0, Lajr;->a:Lajp;

    invoke-virtual {v0}, Lajp;->b()V

    goto :goto_3
.end method

.method private b(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 94
    if-eqz p1, :cond_0

    .line 95
    sget-object v0, Lajs;->b:[I

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const-string/jumbo v0, ""

    .line 125
    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    .line 98
    sget-object v0, Lajs;->a:[I

    iget-object v1, p1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 108
    const v0, 0x7f0a055c

    .line 125
    :goto_1
    iget-object v1, p0, Lajr;->b:Landroid/content/res/Resources;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lajr;->b:Landroid/content/res/Resources;

    const v4, 0x7f0a0a87

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p2, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_1
    const v0, 0x7f0a0559

    .line 101
    goto :goto_1

    .line 104
    :pswitch_2
    const v0, 0x7f0a055d

    .line 105
    goto :goto_1

    .line 115
    :pswitch_3
    const v0, 0x7f0a055a

    .line 116
    goto :goto_1

    .line 123
    :cond_0
    const v0, 0x7f0a055b

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lajr;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 42
    iget-object v0, p0, Lajr;->a:Lajp;

    invoke-virtual {v0}, Lajp;->f()V

    .line 43
    iget-object v0, p0, Lajr;->a:Lajp;

    invoke-virtual {v0}, Lajp;->d()V

    .line 44
    return-void
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    .line 34
    invoke-direct {p0, v0, p2, p1}, Lajr;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 36
    iget-object v0, p0, Lajr;->a:Lajp;

    invoke-virtual {v0}, Lajp;->e()V

    .line 37
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lajr;->a:Lajp;

    invoke-virtual {v0}, Lajp;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public aX_()Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lalk",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
