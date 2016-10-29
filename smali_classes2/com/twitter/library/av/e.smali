.class public Lcom/twitter/library/av/e;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field public c:Ljava/lang/String;

.field public d:Lcom/twitter/model/av/AVMediaPlaylist;

.field public e:Lcom/twitter/model/av/AVMedia;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Long;

.field public n:Lbxa;

.field public o:Ljava/lang/Long;

.field public p:Landroid/os/Bundle;

.field public q:Ljava/lang/Long;

.field public r:Ljava/lang/String;

.field public s:Lbvn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/av/c;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/twitter/library/av/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/av/c;-><init>(Lcom/twitter/library/av/e;Lcom/twitter/library/av/d;)V

    return-object v0
.end method

.method public a(I)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 206
    iput p1, p0, Lcom/twitter/library/av/e;->g:I

    .line 207
    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/twitter/library/av/e;->a:Landroid/content/Context;

    .line 177
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/twitter/library/av/e;->p:Landroid/os/Bundle;

    .line 254
    return-object p0
.end method

.method public a(Lbvn;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/twitter/library/av/e;->s:Lbvn;

    .line 269
    return-object p0
.end method

.method public a(Lbxa;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/twitter/library/av/e;->n:Lbxa;

    .line 244
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/twitter/library/av/e;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 182
    return-object p0
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/twitter/library/av/e;->e:Lcom/twitter/model/av/AVMedia;

    .line 197
    return-object p0
.end method

.method public a(Lcom/twitter/model/av/AVMediaPlaylist;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/twitter/library/av/e;->d:Lcom/twitter/model/av/AVMediaPlaylist;

    .line 192
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/twitter/library/av/e;->k:Ljava/lang/Boolean;

    .line 229
    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/twitter/library/av/e;->m:Ljava/lang/Long;

    .line 239
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/twitter/library/av/e;->c:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/twitter/library/av/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/library/av/e;"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/twitter/library/av/e;->f:Ljava/util/Map;

    .line 202
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/twitter/library/av/e;->h:Z

    .line 212
    return-object p0
.end method

.method public b(I)Lcom/twitter/library/av/e;
    .locals 1

    .prologue
    .line 216
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 217
    iput p1, p0, Lcom/twitter/library/av/e;->i:I

    .line 219
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/Long;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/twitter/library/av/e;->o:Ljava/lang/Long;

    .line 249
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/twitter/library/av/e;->j:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public c(Ljava/lang/Long;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/twitter/library/av/e;->q:Ljava/lang/Long;

    .line 259
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/twitter/library/av/e;->l:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/library/av/e;
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/twitter/library/av/e;->r:Ljava/lang/String;

    .line 264
    return-object p0
.end method
