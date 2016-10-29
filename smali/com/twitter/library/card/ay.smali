.class public Lcom/twitter/library/card/ay;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/renderablecontent/e;


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field final c:Lclm;

.field final d:Ljava/lang/String;

.field final e:J

.field final f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field g:Z

.field h:Lcom/twitter/library/card/au;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;JLjava/lang/String;Lclm;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/card/ay;->a:Ljava/lang/ref/WeakReference;

    .line 59
    iput-object p2, p0, Lcom/twitter/library/card/ay;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 60
    iput-object p6, p0, Lcom/twitter/library/card/ay;->c:Lclm;

    .line 61
    iput-object p5, p0, Lcom/twitter/library/card/ay;->d:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lcom/twitter/library/card/ay;->e:J

    .line 63
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x5

    .line 64
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "profile"

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "spotlight"

    .line 66
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/library/card/ay;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 67
    return-void
.end method

.method public static a(Landroid/app/Activity;JLclw;)Lcom/twitter/library/card/ay;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 41
    if-nez p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object v1

    .line 45
    :cond_1
    if-eqz p3, :cond_0

    .line 49
    invoke-virtual {p3}, Lclw;->N()Lclm;

    move-result-object v7

    .line 50
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1, p2, v7}, Lcom/twitter/library/card/ae;->c(JLjava/lang/Object;)V

    .line 53
    new-instance v1, Lcom/twitter/library/card/ay;

    sget-object v3, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const-string/jumbo v6, "app"

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/card/ay;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;JLjava/lang/String;Lclm;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/au;->a(Landroid/content/res/Configuration;)V

    .line 161
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/au;->a(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public au_()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->ap_()V

    .line 131
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/twitter/library/card/ay;->bi_()V

    .line 143
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/au;->b(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public bh_()V
    .locals 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/library/card/ay;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/card/ay;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/library/card/ay;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/card/aw;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/twitter/library/card/ay;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v3, p0, Lcom/twitter/library/card/ay;->c:Lclm;

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/library/card/aw;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    .line 77
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->a(Lcom/twitter/library/client/q;)V

    .line 79
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    new-instance v1, Lcom/twitter/library/card/av;

    iget-wide v2, p0, Lcom/twitter/library/card/ay;->e:J

    iget-wide v4, p0, Lcom/twitter/library/card/ay;->e:J

    iget-object v6, p0, Lcom/twitter/library/card/ay;->c:Lclm;

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/av;-><init>(JJLclm;)V

    const-string/jumbo v2, "params_extra_scribe_association"

    iget-object v3, p0, Lcom/twitter/library/card/ay;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/card/av;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/library/card/av;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/twitter/library/card/au;->a(Ljava/lang/Object;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/card/ay;->g:Z

    .line 85
    :cond_0
    return-void
.end method

.method public bi_()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/twitter/library/card/ay;->g:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->a()V

    .line 99
    iget-object v0, p0, Lcom/twitter/library/card/ay;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->b(Lcom/twitter/library/client/q;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/card/ay;->g:Z

    .line 106
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->b()V

    .line 92
    :cond_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->e()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->ao_()V

    .line 168
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/twitter/library/card/ay;->h:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->ao_()V

    .line 175
    :cond_0
    return-void
.end method

.method public h()Lcom/twitter/library/widget/renderablecontent/c;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method
