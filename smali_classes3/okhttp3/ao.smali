.class public Lokhttp3/ao;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/ad;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/al;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/al;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Lokhttp3/ab;

.field final i:Lokhttp3/d;

.field final j:Ldfr;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Ldha;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lokhttp3/p;

.field final p:Lokhttp3/b;

.field final q:Lokhttp3/b;

.field final r:Lokhttp3/v;

.field final s:Lokhttp3/ae;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-array v0, v5, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Ldey;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/ao;->z:Ljava/util/List;

    .line 121
    new-array v0, v5, [Lokhttp3/x;

    sget-object v1, Lokhttp3/x;->a:Lokhttp3/x;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/x;->b:Lokhttp3/x;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/x;->c:Lokhttp3/x;

    aput-object v1, v0, v4

    invoke-static {v0}, Ldey;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/ao;->A:Ljava/util/List;

    .line 125
    new-instance v0, Lokhttp3/ap;

    invoke-direct {v0}, Lokhttp3/ap;-><init>()V

    sput-object v0, Ldew;->a:Ldew;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lokhttp3/aq;

    invoke-direct {v0}, Lokhttp3/aq;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/ao;-><init>(Lokhttp3/aq;)V

    .line 204
    return-void
.end method

.method private constructor <init>(Lokhttp3/aq;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iget-object v0, p1, Lokhttp3/aq;->a:Lokhttp3/ad;

    iput-object v0, p0, Lokhttp3/ao;->a:Lokhttp3/ad;

    .line 208
    iget-object v0, p1, Lokhttp3/aq;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/ao;->b:Ljava/net/Proxy;

    .line 209
    iget-object v0, p1, Lokhttp3/aq;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/ao;->c:Ljava/util/List;

    .line 210
    iget-object v0, p1, Lokhttp3/aq;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/ao;->d:Ljava/util/List;

    .line 211
    iget-object v0, p1, Lokhttp3/aq;->e:Ljava/util/List;

    invoke-static {v0}, Ldey;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->e:Ljava/util/List;

    .line 212
    iget-object v0, p1, Lokhttp3/aq;->f:Ljava/util/List;

    invoke-static {v0}, Ldey;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->f:Ljava/util/List;

    .line 213
    iget-object v0, p1, Lokhttp3/aq;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/ao;->g:Ljava/net/ProxySelector;

    .line 214
    iget-object v0, p1, Lokhttp3/aq;->h:Lokhttp3/ab;

    iput-object v0, p0, Lokhttp3/ao;->h:Lokhttp3/ab;

    .line 215
    iget-object v0, p1, Lokhttp3/aq;->i:Lokhttp3/d;

    iput-object v0, p0, Lokhttp3/ao;->i:Lokhttp3/d;

    .line 216
    iget-object v0, p1, Lokhttp3/aq;->j:Ldfr;

    iput-object v0, p0, Lokhttp3/ao;->j:Ldfr;

    .line 217
    iget-object v0, p1, Lokhttp3/aq;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/ao;->k:Ljavax/net/SocketFactory;

    .line 220
    iget-object v0, p0, Lokhttp3/ao;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/x;

    .line 221
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/x;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 222
    goto :goto_0

    :cond_1
    move v0, v2

    .line 221
    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p1, Lokhttp3/aq;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    .line 225
    :cond_3
    iget-object v0, p1, Lokhttp3/aq;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/ao;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 226
    iget-object v0, p1, Lokhttp3/aq;->m:Ldha;

    iput-object v0, p0, Lokhttp3/ao;->m:Ldha;

    .line 233
    :goto_2
    iget-object v0, p1, Lokhttp3/aq;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/ao;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 234
    iget-object v0, p1, Lokhttp3/aq;->o:Lokhttp3/p;

    iget-object v1, p0, Lokhttp3/ao;->m:Ldha;

    invoke-virtual {v0, v1}, Lokhttp3/p;->a(Ldha;)Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->o:Lokhttp3/p;

    .line 236
    iget-object v0, p1, Lokhttp3/aq;->p:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/ao;->p:Lokhttp3/b;

    .line 237
    iget-object v0, p1, Lokhttp3/aq;->q:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/ao;->q:Lokhttp3/b;

    .line 238
    iget-object v0, p1, Lokhttp3/aq;->r:Lokhttp3/v;

    iput-object v0, p0, Lokhttp3/ao;->r:Lokhttp3/v;

    .line 239
    iget-object v0, p1, Lokhttp3/aq;->s:Lokhttp3/ae;

    iput-object v0, p0, Lokhttp3/ao;->s:Lokhttp3/ae;

    .line 240
    iget-boolean v0, p1, Lokhttp3/aq;->t:Z

    iput-boolean v0, p0, Lokhttp3/ao;->t:Z

    .line 241
    iget-boolean v0, p1, Lokhttp3/aq;->u:Z

    iput-boolean v0, p0, Lokhttp3/ao;->u:Z

    .line 242
    iget-boolean v0, p1, Lokhttp3/aq;->v:Z

    iput-boolean v0, p0, Lokhttp3/ao;->v:Z

    .line 243
    iget v0, p1, Lokhttp3/aq;->w:I

    iput v0, p0, Lokhttp3/ao;->w:I

    .line 244
    iget v0, p1, Lokhttp3/aq;->x:I

    iput v0, p0, Lokhttp3/ao;->x:I

    .line 245
    iget v0, p1, Lokhttp3/aq;->y:I

    iput v0, p0, Lokhttp3/ao;->y:I

    .line 246
    return-void

    .line 228
    :cond_4
    invoke-direct {p0}, Lokhttp3/ao;->B()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lokhttp3/ao;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/ao;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 230
    invoke-static {v0}, Ldha;->a(Ljavax/net/ssl/X509TrustManager;)Ldha;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->m:Ldha;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lokhttp3/aq;Lokhttp3/ap;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lokhttp3/ao;-><init>(Lokhttp3/aq;)V

    return-void
.end method

.method static synthetic A()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/ao;->A:Ljava/util/List;

    return-object v0
.end method

.method private B()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 252
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 253
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 254
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 266
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 267
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 268
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic z()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/ao;->z:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lokhttp3/ao;->w:I

    return v0
.end method

.method public a(Lokhttp3/at;)Lokhttp3/n;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lokhttp3/ar;

    invoke-direct {v0, p0, p1}, Lokhttp3/ar;-><init>(Lokhttp3/ao;Lokhttp3/at;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lokhttp3/ao;->x:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lokhttp3/ao;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lokhttp3/ao;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lokhttp3/ao;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lokhttp3/ab;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lokhttp3/ao;->h:Lokhttp3/ab;

    return-object v0
.end method

.method public g()Lokhttp3/d;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lokhttp3/ao;->i:Lokhttp3/d;

    return-object v0
.end method

.method h()Ldfr;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lokhttp3/ao;->i:Lokhttp3/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/ao;->i:Lokhttp3/d;

    iget-object v0, v0, Lokhttp3/d;->a:Ldfr;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/ao;->j:Ldfr;

    goto :goto_0
.end method

.method public i()Lokhttp3/ae;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lokhttp3/ao;->s:Lokhttp3/ae;

    return-object v0
.end method

.method public j()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lokhttp3/ao;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lokhttp3/ao;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public l()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lokhttp3/ao;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public m()Lokhttp3/p;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lokhttp3/ao;->o:Lokhttp3/p;

    return-object v0
.end method

.method public n()Lokhttp3/b;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lokhttp3/ao;->q:Lokhttp3/b;

    return-object v0
.end method

.method public o()Lokhttp3/b;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lokhttp3/ao;->p:Lokhttp3/b;

    return-object v0
.end method

.method public p()Lokhttp3/v;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lokhttp3/ao;->r:Lokhttp3/v;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lokhttp3/ao;->t:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lokhttp3/ao;->u:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lokhttp3/ao;->v:Z

    return v0
.end method

.method public t()Lokhttp3/ad;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lokhttp3/ao;->a:Lokhttp3/ad;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lokhttp3/ao;->c:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lokhttp3/ao;->d:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lokhttp3/ao;->e:Ljava/util/List;

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lokhttp3/ao;->f:Ljava/util/List;

    return-object v0
.end method

.method public y()Lokhttp3/aq;
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lokhttp3/aq;

    invoke-direct {v0, p0}, Lokhttp3/aq;-><init>(Lokhttp3/ao;)V

    return-object v0
.end method
