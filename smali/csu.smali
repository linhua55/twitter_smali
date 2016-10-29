.class public final Lcsu;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcss;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:J

.field j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final k:Lcom/twitter/util/collection/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 143
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    iput-object v0, p0, Lcsu;->k:Lcom/twitter/util/collection/v;

    .line 146
    return-void
.end method

.method public constructor <init>(Lcss;)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 143
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    iput-object v0, p0, Lcsu;->k:Lcom/twitter/util/collection/v;

    .line 149
    iget-object v0, p1, Lcss;->c:Ljava/lang/String;

    iput-object v0, p0, Lcsu;->a:Ljava/lang/String;

    .line 150
    iget-object v0, p1, Lcss;->d:Ljava/lang/String;

    iput-object v0, p0, Lcsu;->b:Ljava/lang/String;

    .line 151
    iget-wide v0, p1, Lcss;->e:J

    iput-wide v0, p0, Lcsu;->c:J

    .line 152
    iget-object v0, p1, Lcss;->f:Ljava/lang/String;

    iput-object v0, p0, Lcsu;->d:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcss;->g:Ljava/lang/String;

    iput-object v0, p0, Lcsu;->e:Ljava/lang/String;

    .line 154
    iget-boolean v0, p1, Lcss;->h:Z

    iput-boolean v0, p0, Lcsu;->f:Z

    .line 155
    iget-boolean v0, p1, Lcss;->i:Z

    iput-boolean v0, p0, Lcsu;->g:Z

    .line 156
    iget-boolean v0, p1, Lcss;->j:Z

    iput-boolean v0, p0, Lcsu;->h:Z

    .line 157
    iget-wide v0, p1, Lcss;->k:J

    iput-wide v0, p0, Lcsu;->i:J

    .line 158
    iget-object v0, p1, Lcss;->l:Ljava/util/Set;

    iput-object v0, p0, Lcsu;->j:Ljava/util/Set;

    .line 159
    iget-object v0, p0, Lcsu;->k:Lcom/twitter/util/collection/v;

    invoke-static {p1}, Lcss;->b(Lcss;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    .line 160
    return-void
.end method


# virtual methods
.method public a(J)Lcsu;
    .locals 1

    .prologue
    .line 182
    iput-wide p1, p0, Lcsu;->c:J

    .line 183
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcsu;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcsu;->a:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcsu;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcsu;->k:Lcom/twitter/util/collection/v;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 231
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcsu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcsu;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcsu;->k:Lcom/twitter/util/collection/v;

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    .line 237
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcsu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcsu;"
        }
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcsu;->j:Ljava/util/Set;

    .line 225
    return-object p0
.end method

.method public a(Z)Lcsu;
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcsu;->f:Z

    .line 201
    return-object p0
.end method

.method public b(J)Lcsu;
    .locals 1

    .prologue
    .line 218
    iput-wide p1, p0, Lcsu;->i:J

    .line 219
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcsu;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcsu;->b:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public b(Z)Lcsu;
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcsu;->g:Z

    .line 207
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcsu;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcsu;->d:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public c(Z)Lcsu;
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcsu;->h:Z

    .line 213
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcsu;->g()Lcss;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcsu;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcsu;->e:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public e()Lcsu;
    .locals 1

    .prologue
    .line 176
    const-string/jumbo v0, "earned"

    iput-object v0, p0, Lcsu;->b:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcsu;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Lcss;
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcss;

    invoke-direct {v0, p0}, Lcss;-><init>(Lcsu;)V

    return-object v0
.end method
