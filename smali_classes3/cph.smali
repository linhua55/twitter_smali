.class public Lcph;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcpf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:Lcpu;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcph;)Lcpu;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcph;->i:Lcpu;

    return-object v0
.end method

.method static synthetic b(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->g:J

    return-wide v0
.end method

.method static synthetic c(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcph;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcph;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcph;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcph;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcph;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcph;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcph;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcph;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->a:J

    return-wide v0
.end method

.method static synthetic j(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->j:J

    return-wide v0
.end method

.method static synthetic k(Lcph;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcph;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->l:J

    return-wide v0
.end method

.method static synthetic m(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->m:J

    return-wide v0
.end method

.method static synthetic n(Lcph;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcph;->n:J

    return-wide v0
.end method

.method static synthetic o(Lcph;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcph;->o:Z

    return v0
.end method


# virtual methods
.method public a(J)Lcph;
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcph;->a:J

    .line 92
    return-object p0
.end method

.method public a(Lcpu;)Lcph;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcph;->i:Lcpu;

    .line 140
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcph;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcph;->b:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public a(Z)Lcph;
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcph;->o:Z

    .line 176
    return-object p0
.end method

.method public b(J)Lcph;
    .locals 1

    .prologue
    .line 121
    iput-wide p1, p0, Lcph;->f:J

    .line 122
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcph;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcph;->c:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    iget-object v0, p0, Lcph;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcph;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcph;->i:Lcpu;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcph;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcph;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)Lcph;
    .locals 1

    .prologue
    .line 127
    iput-wide p1, p0, Lcph;->g:J

    .line 128
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcph;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcph;->d:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcph;->e()Lcpf;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcph;
    .locals 1

    .prologue
    .line 133
    iput-wide p1, p0, Lcph;->h:J

    .line 134
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcph;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcph;->e:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method protected e()Lcpf;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcpf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcpf;-><init>(Lcph;Lcpg;)V

    return-object v0
.end method

.method public e(J)Lcph;
    .locals 1

    .prologue
    .line 145
    iput-wide p1, p0, Lcph;->j:J

    .line 146
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcph;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcph;->k:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public f(J)Lcph;
    .locals 1

    .prologue
    .line 157
    iput-wide p1, p0, Lcph;->l:J

    .line 158
    return-object p0
.end method

.method public g(J)Lcph;
    .locals 1

    .prologue
    .line 163
    iput-wide p1, p0, Lcph;->m:J

    .line 164
    return-object p0
.end method

.method public h(J)Lcph;
    .locals 1

    .prologue
    .line 169
    iput-wide p1, p0, Lcph;->n:J

    .line 170
    return-object p0
.end method
