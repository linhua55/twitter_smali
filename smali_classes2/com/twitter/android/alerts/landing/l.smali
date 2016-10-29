.class public Lcom/twitter/android/alerts/landing/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;

.field private final c:Lro;

.field private final d:J

.field private final e:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lrx/t;

.field private final g:Ldlx;

.field private final h:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<",
            "Lbmd;",
            "Lclh;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ldjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjf",
            "<-",
            "Lclh;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lrx/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/r",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<-",
            "Lclh;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLro;)V
    .locals 9

    .prologue
    .line 99
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/alerts/landing/l;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLro;Lrx/t;)V

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLro;Lrx/t;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/l;->e:Lrx/subjects/e;

    .line 48
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/l;->g:Ldlx;

    .line 50
    new-instance v0, Lcom/twitter/android/alerts/landing/m;

    invoke-direct {v0, p0}, Lcom/twitter/android/alerts/landing/m;-><init>(Lcom/twitter/android/alerts/landing/l;)V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/l;->h:Ldjj;

    .line 58
    new-instance v0, Lcom/twitter/android/alerts/landing/n;

    invoke-direct {v0, p0}, Lcom/twitter/android/alerts/landing/n;-><init>(Lcom/twitter/android/alerts/landing/l;)V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/l;->i:Ldjf;

    .line 69
    new-instance v0, Lcom/twitter/android/alerts/landing/o;

    invoke-direct {v0, p0}, Lcom/twitter/android/alerts/landing/o;-><init>(Lcom/twitter/android/alerts/landing/l;)V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/l;->j:Lrx/r;

    .line 85
    new-instance v0, Lcom/twitter/android/alerts/landing/p;

    invoke-direct {v0, p0}, Lcom/twitter/android/alerts/landing/p;-><init>(Lcom/twitter/android/alerts/landing/l;)V

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/l;->k:Ldjj;

    .line 105
    iput-object p1, p0, Lcom/twitter/android/alerts/landing/l;->a:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/twitter/android/alerts/landing/l;->b:Lcom/twitter/library/client/Session;

    .line 107
    iput-wide p3, p0, Lcom/twitter/android/alerts/landing/l;->d:J

    .line 108
    iput-object p5, p0, Lcom/twitter/android/alerts/landing/l;->c:Lro;

    .line 109
    iput-object p6, p0, Lcom/twitter/android/alerts/landing/l;->f:Lrx/t;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/alerts/landing/l;)Lro;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/l;->c:Lro;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/alerts/landing/l;)Lrx/subjects/e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/l;->e:Lrx/subjects/e;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/l;->e:Lrx/subjects/e;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v0, "is_data_requested"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/alerts/landing/l;->l:Z

    goto :goto_0
.end method

.method a(Lrx/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<",
            "Lbmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/l;->c:Lro;

    iget-wide v2, p0, Lcom/twitter/android/alerts/landing/l;->d:J

    invoke-interface {v0, v2, v3}, Lro;->a(J)Lrx/o;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->h:Ldjj;

    .line 185
    invoke-virtual {p1, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/alerts/landing/l;->k:Ldjj;

    .line 186
    invoke-virtual {v1, v2}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/alerts/landing/l;->i:Ldjf;

    .line 187
    invoke-virtual {v1, v2}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Lrx/o;->h(Lrx/o;)Lrx/o;

    move-result-object v1

    .line 190
    invoke-static {v1, v0}, Lrx/o;->b(Lrx/o;Lrx/o;)Lrx/o;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->j:Lrx/r;

    .line 192
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->g:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 194
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/twitter/android/alerts/landing/l;->l:Z

    .line 167
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/l;->e:Lrx/subjects/e;

    invoke-virtual {v0}, Lrx/subjects/e;->bt_()V

    .line 133
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/l;->g:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 134
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "is_data_requested"

    iget-boolean v1, p0, Lcom/twitter/android/alerts/landing/l;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public c()Lcom/twitter/library/service/x;
    .locals 6

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/alerts/landing/l;->l:Z

    .line 150
    new-instance v0, Lbmf;

    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/alerts/landing/l;->b:Lcom/twitter/library/client/Session;

    iget-wide v4, p0, Lcom/twitter/android/alerts/landing/l;->d:J

    invoke-direct {v0, v1, v2, v4, v5}, Lbmf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    .line 151
    invoke-virtual {v0}, Lbmf;->b()Lrx/o;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/alerts/landing/l;->a(Lrx/o;)V

    .line 152
    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/twitter/android/alerts/landing/l;->l:Z

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/l;->c:Lro;

    iget-wide v2, p0, Lcom/twitter/android/alerts/landing/l;->d:J

    .line 175
    invoke-interface {v0, v2, v3}, Lro;->a(J)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->k:Ldjj;

    .line 176
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->f:Lrx/t;

    .line 177
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->j:Lrx/r;

    .line 178
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/twitter/android/alerts/landing/l;->g:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 180
    return-void
.end method
