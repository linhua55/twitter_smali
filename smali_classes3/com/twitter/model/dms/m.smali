.class public abstract Lcom/twitter/model/dms/m;
.super Lcom/twitter/model/dms/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/l",
        "<TD;>;B:",
        "Lcom/twitter/model/dms/m",
        "<TE;TB;TD;>;D:",
        "Lcom/twitter/model/dms/n;",
        ">",
        "Lcom/twitter/model/dms/d",
        "<TE;TB;TD;>;"
    }
.end annotation


# instance fields
.field d:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/twitter/model/dms/d;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/twitter/model/dms/l;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/d;-><init>(Lcom/twitter/model/dms/b;)V

    .line 144
    return-void
.end method

.method private static a(Lcom/twitter/model/dms/i;)Z
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/twitter/model/dms/i;Lcom/twitter/model/core/cx;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    iget v0, p1, Lcom/twitter/model/core/cx;->g:I

    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->e()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget v0, p1, Lcom/twitter/model/core/cx;->h:I

    .line 249
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->f()I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 250
    :goto_0
    invoke-static {p0}, Lcom/twitter/model/dms/m;->a(Lcom/twitter/model/dms/i;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/twitter/model/dms/i;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    .line 252
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 249
    goto :goto_0

    :cond_2
    move v3, v2

    .line 251
    goto :goto_1

    :cond_3
    move v1, v2

    .line 252
    goto :goto_2
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 158
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v1, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/model/dms/n;

    iget-object v1, v1, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    if-eqz v0, :cond_0

    .line 162
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->a()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iput-object v6, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v1, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/model/dms/n;

    iget-object v2, v1, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/model/dms/n;

    iget-object v1, v1, Lcom/twitter/model/dms/n;->c:Lcom/twitter/model/core/bm;

    const/4 v3, 0x1

    invoke-static {v2, v1, v6, v3}, Lcum;->a(Ljava/lang/String;Lcom/twitter/model/core/bm;Lcom/twitter/model/search/m;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    .line 196
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v3, Lcom/twitter/model/core/i;

    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v1, v0, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->c:Lcom/twitter/model/core/bm;

    invoke-direct {v3, v1, v0}, Lcom/twitter/model/core/i;-><init>(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    .line 172
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    invoke-virtual {p0, v3, v0}, Lcom/twitter/model/dms/m;->a(Lcom/twitter/model/core/i;Lcom/twitter/model/dms/i;)Lcom/twitter/model/core/cx;

    move-result-object v4

    .line 174
    if-eqz v4, :cond_0

    .line 178
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    instance-of v0, v0, Lcom/twitter/model/dms/bx;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bx;

    .line 180
    iget-object v1, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/model/dms/n;

    new-instance v2, Lcom/twitter/model/dms/bz;

    invoke-direct {v2}, Lcom/twitter/model/dms/bz;-><init>()V

    .line 181
    invoke-virtual {v0}, Lcom/twitter/model/dms/bx;->j()Lclw;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/twitter/model/dms/bz;->a(Lclw;)Lcom/twitter/model/dms/aq;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/bz;

    .line 182
    invoke-virtual {v0}, Lcom/twitter/model/dms/bx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/model/dms/bz;->a(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bz;

    iget-object v2, v4, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v2}, Lcom/twitter/model/dms/bz;->c(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bz;

    iget-object v2, v4, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v2}, Lcom/twitter/model/dms/bz;->b(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bz;

    .line 185
    invoke-virtual {v0}, Lcom/twitter/model/dms/bz;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/i;

    iput-object v0, v1, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    invoke-virtual {p0, v3, v4}, Lcom/twitter/model/dms/m;->a(Lcom/twitter/model/core/i;Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/i;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Lcom/twitter/model/core/i;Lcom/twitter/model/dms/i;)Lcom/twitter/model/core/cx;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 215
    iget-object v2, p1, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    .line 217
    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/twitter/model/dms/m;->a(Lcom/twitter/model/dms/i;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p2}, Lcom/twitter/model/dms/i;->e()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p2}, Lcom/twitter/model/dms/i;->f()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 226
    :goto_0
    return-object v0

    .line 221
    :cond_1
    iget-object v0, p1, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 222
    invoke-static {p2, v0, v2}, Lcom/twitter/model/dms/m;->a(Lcom/twitter/model/dms/i;Lcom/twitter/model/core/cx;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 226
    goto :goto_0
.end method

.method protected a(Lcom/twitter/model/core/i;Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/i;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p1, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 203
    iget-object v2, p2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v1, v2

    .line 204
    new-instance v3, Lcom/twitter/model/core/i;

    .line 205
    invoke-static {v0, v2, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/twitter/model/core/bo;

    iget-object v2, p1, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    invoke-direct {v0, v2}, Lcom/twitter/model/core/bo;-><init>(Lcom/twitter/model/core/bm;)V

    .line 207
    invoke-virtual {v0, p2}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/bo;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-direct {v3, v1, v0}, Lcom/twitter/model/core/i;-><init>(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    .line 204
    return-object v3
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/twitter/model/dms/m;->e()Lcom/twitter/model/dms/l;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/twitter/model/dms/m;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/dms/m;->d:Z

    .line 150
    invoke-direct {p0}, Lcom/twitter/model/dms/m;->h()V

    .line 151
    invoke-virtual {p0}, Lcom/twitter/model/dms/m;->f()Lcom/twitter/model/dms/l;

    move-result-object v0

    return-object v0
.end method

.method abstract f()Lcom/twitter/model/dms/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method protected g()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->a()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    .line 232
    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/dms/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
