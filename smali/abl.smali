.class public Labl;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;

.field private final c:Labk;

.field private final d:J

.field private final e:Lcom/twitter/model/core/TwitterUser;

.field private final f:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lbpu;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lrx/t;

.field private final h:Ldlx;

.field private final i:Ldjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjf",
            "<-",
            "Lcom/twitter/model/livevideo/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lrx/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/r",
            "<",
            "Lbpu;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ldjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjj",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            "Lbpu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLabk;)V
    .locals 9

    .prologue
    .line 95
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Labl;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLabk;Lrx/t;)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLabk;Lrx/t;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Labl;->f:Lrx/subjects/e;

    .line 53
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Labl;->h:Ldlx;

    .line 55
    new-instance v0, Labm;

    invoke-direct {v0, p0}, Labm;-><init>(Labl;)V

    iput-object v0, p0, Labl;->i:Ldjf;

    .line 66
    new-instance v0, Labn;

    invoke-direct {v0, p0}, Labn;-><init>(Labl;)V

    iput-object v0, p0, Labl;->j:Lrx/r;

    .line 83
    new-instance v0, Labo;

    invoke-direct {v0, p0}, Labo;-><init>(Labl;)V

    iput-object v0, p0, Labl;->k:Ldjj;

    .line 101
    iput-object p1, p0, Labl;->a:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Labl;->b:Lcom/twitter/library/client/Session;

    .line 103
    iput-wide p3, p0, Labl;->d:J

    .line 104
    iput-object p5, p0, Labl;->c:Labk;

    .line 105
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Labl;->e:Lcom/twitter/model/core/TwitterUser;

    .line 106
    iput-object p6, p0, Labl;->g:Lrx/t;

    .line 107
    return-void
.end method

.method static synthetic a(Labl;)Labk;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Labl;->c:Labk;

    return-object v0
.end method

.method static synthetic b(Labl;)Lrx/subjects/e;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Labl;->f:Lrx/subjects/e;

    return-object v0
.end method


# virtual methods
.method public a(Lars;)Lcom/twitter/library/service/x;
    .locals 7

    .prologue
    .line 139
    new-instance v0, Lbpv;

    iget-object v1, p0, Labl;->a:Landroid/content/Context;

    iget-object v2, p0, Labl;->b:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Labl;->e:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, p0, Labl;->d:J

    iget v6, p1, Lars;->l:I

    invoke-direct/range {v0 .. v6}, Lbpv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;JI)V

    iget-object v1, p1, Lars;->n:Lcom/twitter/model/timeline/ae;

    .line 141
    invoke-virtual {v0, v1}, Lbpv;->a(Lcom/twitter/model/timeline/ae;)Lbsj;

    move-result-object v0

    iget-wide v2, p1, Lars;->g:J

    .line 142
    invoke-virtual {v0, v2, v3}, Lbsj;->a(J)Lbsj;

    move-result-object v0

    iget v1, p1, Lars;->c:I

    .line 143
    invoke-virtual {v0, v1}, Lbsj;->c(I)Lbss;

    move-result-object v0

    check-cast v0, Lbpv;

    .line 144
    invoke-virtual {v0}, Lbpv;->e()Lrx/o;

    move-result-object v1

    invoke-virtual {p0, v1}, Labl;->a(Lrx/o;)V

    .line 145
    return-object v0
.end method

.method public a()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lbpu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Labl;->f:Lrx/subjects/e;

    return-object v0
.end method

.method a(Lrx/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<",
            "Lbpu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Labl;->c:Labk;

    iget-wide v2, p0, Labl;->d:J

    invoke-interface {v0, v2, v3}, Labk;->a(J)Lrx/o;

    move-result-object v0

    .line 164
    invoke-static {}, Ldcn;->d()Ldjj;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v1

    new-instance v2, Labp;

    invoke-direct {v2, p0}, Labp;-><init>(Labl;)V

    .line 165
    invoke-virtual {v1, v2}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v1

    .line 172
    invoke-static {}, Ldcn;->d()Ldjj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v1

    iget-object v2, p0, Labl;->i:Ldjf;

    .line 173
    invoke-virtual {v1, v2}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v0}, Lrx/o;->h(Lrx/o;)Lrx/o;

    move-result-object v1

    .line 176
    invoke-static {v1, v0}, Lrx/o;->b(Lrx/o;Lrx/o;)Lrx/o;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    iget-object v1, p0, Labl;->k:Ldjj;

    .line 178
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Labl;->j:Lrx/r;

    .line 179
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    .line 180
    iget-object v1, p0, Labl;->h:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 181
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Labl;->f:Lrx/subjects/e;

    invoke-virtual {v0}, Lrx/subjects/e;->bt_()V

    .line 128
    iget-object v0, p0, Labl;->h:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 129
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Labl;->c:Labk;

    iget-wide v2, p0, Labl;->d:J

    .line 153
    invoke-interface {v0, v2, v3}, Labk;->a(J)Lrx/o;

    move-result-object v0

    .line 154
    invoke-static {}, Ldcn;->d()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Labl;->k:Ldjj;

    .line 155
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Labl;->g:Lrx/t;

    .line 156
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Labl;->j:Lrx/r;

    .line 157
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    .line 158
    iget-object v1, p0, Labl;->h:Ldlx;

    invoke-virtual {v1, v0}, Ldlx;->a(Lrx/ap;)V

    .line 159
    return-void
.end method
