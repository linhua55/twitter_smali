.class public Lcom/twitter/library/card/w;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/q;


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

.field final c:Lclw;

.field final d:Ljava/lang/String;

.field final e:J

.field f:Z

.field g:Lcom/twitter/library/card/au;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;JLjava/lang/String;Lclw;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/card/w;->a:Ljava/lang/ref/WeakReference;

    .line 74
    iput-object p2, p0, Lcom/twitter/library/card/w;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 75
    iput-object p6, p0, Lcom/twitter/library/card/w;->c:Lclw;

    .line 76
    iput-object p5, p0, Lcom/twitter/library/card/w;->d:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Lcom/twitter/library/card/w;->e:J

    .line 78
    return-void
.end method

.method public static a(Landroid/app/Activity;Lclw;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/card/w;
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v1

    .line 40
    :cond_1
    const-class v0, Lcom/twitter/library/client/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not assignable from ActivityListenerRegistry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1}, Lclw;->b()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Lclw;->N()Lclm;

    move-result-object v2

    .line 54
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 55
    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {v0, v4, v5, v2}, Lcom/twitter/library/card/ae;->c(JLjava/lang/Object;)V

    .line 59
    :cond_3
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lclw;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lclw;->d()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 62
    iget-wide v8, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v3, v8, v9, v0}, Lcom/twitter/library/card/bn;->c(JLjava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_4
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v0

    invoke-virtual {v0, v6, p2, v2}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lcom/twitter/library/card/w;

    move-object v2, p0

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/card/w;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;JLjava/lang/String;Lclw;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/library/card/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 82
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/card/w;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/library/card/w;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/card/aw;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/twitter/library/card/w;->c:Lclw;

    invoke-virtual {v2}, Lclw;->N()Lclm;

    move-result-object v6

    .line 92
    iget-object v2, p0, Lcom/twitter/library/card/w;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {v1, v0, v2, v6}, Lcom/twitter/library/card/aw;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    .line 94
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->a(Lcom/twitter/library/client/q;)V

    .line 96
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    new-instance v1, Lcom/twitter/library/card/av;

    iget-wide v2, p0, Lcom/twitter/library/card/w;->e:J

    iget-wide v4, p0, Lcom/twitter/library/card/w;->e:J

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/card/av;-><init>(JJLclm;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/au;->a(Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/card/w;->f:Z

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/au;->a(Landroid/content/res/Configuration;)V

    .line 164
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/au;->a(Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public au_()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->ap_()V

    .line 134
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->b()V

    .line 105
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/twitter/library/card/w;->c()V

    .line 146
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/au;->b(Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/twitter/library/card/w;->f:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->a()V

    .line 111
    iget-object v0, p0, Lcom/twitter/library/card/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->b(Lcom/twitter/library/client/q;)V

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/card/w;->f:Z

    .line 118
    :cond_1
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

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
    .line 168
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->ao_()V

    .line 171
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/twitter/library/card/w;->g:Lcom/twitter/library/card/au;

    invoke-virtual {v0}, Lcom/twitter/library/card/au;->ao_()V

    .line 178
    :cond_0
    return-void
.end method
