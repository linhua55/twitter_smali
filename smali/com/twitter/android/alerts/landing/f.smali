.class public Lcom/twitter/android/alerts/landing/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/alerts/landing/e;


# instance fields
.field private final a:Lcom/twitter/android/alerts/landing/d;

.field private final b:Lccp;

.field private final c:Lccq;

.field private final d:Lro;

.field private final e:Ldlx;

.field private f:Lclh;

.field private g:Ljava/lang/String;

.field private final h:Lrx/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/r",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/alerts/landing/d;Lro;Lccp;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/twitter/android/alerts/landing/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/alerts/landing/g;-><init>(Lcom/twitter/android/alerts/landing/f;)V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/f;->c:Lccq;

    .line 52
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/f;->e:Ldlx;

    .line 58
    new-instance v0, Lcom/twitter/android/alerts/landing/h;

    invoke-direct {v0, p0}, Lcom/twitter/android/alerts/landing/h;-><init>(Lcom/twitter/android/alerts/landing/f;)V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/f;->h:Lrx/r;

    .line 83
    iput-object p1, p0, Lcom/twitter/android/alerts/landing/f;->a:Lcom/twitter/android/alerts/landing/d;

    .line 84
    iput-object p2, p0, Lcom/twitter/android/alerts/landing/f;->d:Lro;

    .line 85
    iput-object p3, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/alerts/landing/f;Lclh;)Lclh;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/twitter/android/alerts/landing/f;->f:Lclh;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/alerts/landing/f;)Lcom/twitter/android/alerts/landing/d;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->a:Lcom/twitter/android/alerts/landing/d;

    return-object v0
.end method

.method private a(Lclh;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/twitter/android/alerts/landing/f;->b(Lclh;)V

    .line 139
    iget-object v0, p1, Lclh;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/alerts/landing/f;->a(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->a:Lcom/twitter/android/alerts/landing/d;

    iget-boolean v1, p1, Lclh;->f:Z

    invoke-interface {v0, v1}, Lcom/twitter/android/alerts/landing/d;->c(Z)V

    .line 141
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    iget-object v1, p0, Lcom/twitter/android/alerts/landing/f;->c:Lccq;

    invoke-interface {v0, p1, v1}, Lccp;->a(Ljava/lang/String;Lccq;)V

    .line 162
    iput-object p1, p0, Lcom/twitter/android/alerts/landing/f;->g:Ljava/lang/String;

    .line 164
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/alerts/landing/f;)Lclh;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->f:Lclh;

    return-object v0
.end method

.method private b(Lclh;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p1, Lclh;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/twitter/android/alerts/landing/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/f;->a:Lcom/twitter/android/alerts/landing/d;

    iget-object v2, p1, Lclh;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/alerts/landing/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/alerts/landing/f;Lclh;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/android/alerts/landing/f;->a(Lclh;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->f:Lclh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->f:Lclh;

    iget-object v0, v0, Lclh;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 148
    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 151
    :cond_0
    const-string/jumbo v2, ", "

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lccp;->a(Landroid/os/Bundle;)V

    .line 91
    return-void

    .line 90
    :cond_0
    const-string/jumbo v0, "state_map_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lrx/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->h:Lrx/r;

    invoke-virtual {p1, v0}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/f;->e:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 135
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    invoke-interface {v0}, Lccp;->a()V

    .line 102
    const-string/jumbo v0, "alerts_v2_experience_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v0, "AlertLanding"

    const-string/jumbo v1, "Alerts v2 feature switch disabled. Exiting."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->a:Lcom/twitter/android/alerts/landing/d;

    invoke-interface {v0}, Lcom/twitter/android/alerts/landing/d;->finish()V

    .line 106
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    invoke-interface {v1, v0}, Lccp;->b(Landroid/os/Bundle;)V

    .line 112
    const-string/jumbo v1, "state_map_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    invoke-interface {v0}, Lccp;->b()V

    .line 118
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    invoke-interface {v0}, Lccp;->c()V

    .line 128
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->e:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 129
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->b:Lccp;

    invoke-interface {v0}, Lccp;->d()V

    .line 123
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->f:Lclh;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->f:Lclh;

    iget-boolean v0, v0, Lclh;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->a:Lcom/twitter/android/alerts/landing/d;

    invoke-interface {v0, v1}, Lcom/twitter/android/alerts/landing/d;->c(Z)V

    .line 176
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/f;->f:Lclh;

    invoke-virtual {v0}, Lclh;->b()Lcli;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcli;->a(Z)Lcli;

    move-result-object v0

    invoke-virtual {v0}, Lcli;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclh;

    .line 177
    iget-object v2, p0, Lcom/twitter/android/alerts/landing/f;->d:Lro;

    .line 178
    invoke-interface {v2, v0}, Lro;->a(Lclh;)Lrx/o;

    move-result-object v0

    .line 179
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v2, Lcom/twitter/android/alerts/landing/i;

    invoke-direct {v2, p0, v1}, Lcom/twitter/android/alerts/landing/i;-><init>(Lcom/twitter/android/alerts/landing/f;Z)V

    .line 180
    invoke-virtual {v0, v2}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/f;->e:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1
.end method
