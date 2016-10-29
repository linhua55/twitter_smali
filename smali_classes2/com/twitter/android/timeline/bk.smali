.class public final Lcom/twitter/android/timeline/bk;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/android/timeline/bj;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:I

.field l:I

.field m:Z

.field n:I

.field o:I

.field p:Z

.field q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/timeline/bk;->n:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/twitter/android/timeline/bk;->b:I

    .line 112
    return-object p0
.end method

.method public a(J)Lcom/twitter/android/timeline/bk;
    .locals 1

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/twitter/android/timeline/bk;->d:J

    .line 124
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/twitter/android/timeline/bk;->a:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/twitter/android/timeline/bk;->m:Z

    .line 164
    return-object p0
.end method

.method public a(ZZZZ)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/twitter/android/timeline/bk;->g:Z

    .line 143
    iput-boolean p2, p0, Lcom/twitter/android/timeline/bk;->h:Z

    .line 144
    iput-boolean p3, p0, Lcom/twitter/android/timeline/bk;->i:Z

    .line 145
    iput-boolean p4, p0, Lcom/twitter/android/timeline/bk;->j:Z

    .line 146
    return-object p0
.end method

.method public b(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/twitter/android/timeline/bk;->c:I

    .line 118
    return-object p0
.end method

.method public b(Z)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/twitter/android/timeline/bk;->p:Z

    .line 182
    return-object p0
.end method

.method public bq_()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/twitter/android/timeline/bk;->k:I

    iget v1, p0, Lcom/twitter/android/timeline/bk;->l:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/android/timeline/bk;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/bk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/twitter/android/timeline/bk;->f:I

    .line 130
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/twitter/android/timeline/bk;->e()Lcom/twitter/android/timeline/bj;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/twitter/android/timeline/bk;->e:I

    .line 136
    return-object p0
.end method

.method protected e()Lcom/twitter/android/timeline/bj;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/twitter/android/timeline/bj;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/bj;-><init>(Lcom/twitter/android/timeline/bk;)V

    return-object v0
.end method

.method public e(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/twitter/android/timeline/bk;->k:I

    .line 152
    return-object p0
.end method

.method public f(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/twitter/android/timeline/bk;->l:I

    .line 158
    return-object p0
.end method

.method public g(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/twitter/android/timeline/bk;->n:I

    .line 170
    return-object p0
.end method

.method public h(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/twitter/android/timeline/bk;->o:I

    .line 176
    return-object p0
.end method

.method public i(I)Lcom/twitter/android/timeline/bk;
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/twitter/android/timeline/bk;->q:I

    .line 188
    return-object p0
.end method
